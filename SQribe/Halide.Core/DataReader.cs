// Copyright (c) Fynydd LLC.
// Licensed under the GNU GPLv3 License.

using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace SQribe.Halide.Core;

/// <summary>
/// A synchronous and asynchronous SQL data reader.
/// </summary>
/// <example>
/// <code>
/// using (var reader = new DataReader("SELECT * FROM TABLE", "server=localhost;database=AdventureWorks2016;..."))
/// {
///     var cts = new CancellationTokenSource();
///     var token = cts.Token;
///     var task = reader.ExecuteAsync(token);
///
///     while (task.IsCompleted == false)
///     {
///         if (IdLikeToAbortForSomeReason)
///         {
///             cts.Cancel();
///         }
///     }
///
///     if (reader.IsReady)
///     {
///         if (reader.HasRows)
///         {
///             while (reader.Read())
///             {
///                  ...
/// </code>
/// </example>
public class DataReader : IDisposable
{
	#region Private properties

	public readonly bool _enableRewind;
	public bool _usingRewind;
	public int _resultSetIndex;
	public int _rewindIndex;
	public SortedList<int, SortedList<int, SortedList<int, object>>> _cache;
	private readonly string _connectionString;
	private readonly string _commands;
	public readonly int _timeout;
	private readonly SqlConnection? _conn;
	private readonly SqlCommand? _cmd;
	private string _lastSqlError;
	private SqlDataReader? _rdr;
	public SortedDictionary<int, ReadOnlyCollection<DbColumn>> _schemaData;
	private int _rowsRead;

	#endregion

	#region Public properties

	/// <summary>
	/// Returns the number of SqlDataReader rows read so far.
	/// </summary>
	// ReSharper disable once ConvertToAutoPropertyWithPrivateSetter
	public int RowsRead => _rowsRead;

	/// <summary>
	/// Returns true if the SqlConnection is open.
	/// </summary>
	public bool IsReady
	{
		get
		{
			if (_enableRewind && _usingRewind)
			{
				return true;
			}

			return SqlConnection?.State == ConnectionState.Open;
		}
	}

	/// <summary>
	/// Returns true if the recordset has rows for reading.
	/// </summary>
	public bool HasRows
	{
		get
		{
			var result = false;

			if (_enableRewind && _usingRewind)
			{
				result = _cache[_resultSetIndex].Count > 0;
			}

			else if (ReaderActive())
			{
				result = _rdr?.HasRows ?? false;
			}

			return result;
		}
	}

	/// <summary>
	/// Returns the description of the last error thrown.
	/// </summary>
	// ReSharper disable once ConvertToAutoPropertyWithPrivateSetter
	public string LastError => _lastSqlError;

	/// <summary>
	/// Returns the SqlConnection.
	/// </summary>
	// ReSharper disable once ConvertToAutoPropertyWhenPossible
	public SqlConnection? SqlConnection => _conn;

	/// <summary>
	/// Return the SqlDataReader object.
	/// </summary>
	// ReSharper disable once ConvertToAutoPropertyWithPrivateSetter
	public SqlDataReader? SqlDataReader => _rdr;

	/// <summary>
	/// Returns the number of fields in a recordset.
	/// </summary>
	public int FieldCount
	{
		get
		{
			try
			{
				if (_schemaData[_resultSetIndex].Count < 1)
				{
					LoadSchemaData();
				}

				return _schemaData[_resultSetIndex].Count;
			}

			catch (Exception err)
			{
				_lastSqlError = err.Message;
				return 0;
			}
		}
	}

	#endregion

	#region Constructors

	/// <summary>
	/// Instantiate the class for sequential reading of row data from a SQL Server instance.
	/// </summary>
	/// <param name="commands">T-SQL script to execute</param>
	/// <param name="connectionString">Connection string to use</param>
	/// <param name="parameters">SqlCommand parameters to use</param>
	/// <param name="commandTimeout">Number of seconds before timeout for a command (defaults to zero for no timeout)</param>
	/// <param name="useRewind">Cache all data requests for optional rewind playback</param>
	public DataReader(string commands, string connectionString, Dictionary<string, object>? parameters = null, int commandTimeout = 0, bool useRewind = false)
	{
		_lastSqlError = string.Empty;
		_rowsRead = 0;

		_connectionString = connectionString;
		_commands = commands;
		_timeout = commandTimeout;
		_enableRewind = useRewind;
		_usingRewind = false;
		_rewindIndex = -1;
		_resultSetIndex = 0;
		_cache = new SortedList<int, SortedList<int, SortedList<int, object>>>();
		_conn = new SqlConnection(_connectionString);
		_cmd = new SqlCommand(_commands, _conn);
		_cmd.CommandTimeout = _timeout;

		_schemaData = new SortedDictionary<int, ReadOnlyCollection<DbColumn>>();

        if (_enableRewind)
        {
            if (_cache.ContainsKey(_resultSetIndex) == false)
            {
                var _resultSet = new SortedList<int, SortedList<int, object>>();
                _cache.Add(_resultSetIndex, _resultSet);
            }
        }

        if (parameters != null)
		{
			foreach (var kvp in parameters)
			{
				_cmd.Parameters.AddWithValue(kvp.Key, kvp.Value);
			}
		}
	}

	#endregion

	#region Dispose and close

	/// <summary>
	/// Closes the DataReader object when the class is destroyed.
	/// </summary>
	~DataReader()
	{
		Close();
	}

	/// <summary>
	/// Closes the DataReader object.
	/// </summary>
	public void Close()
	{
		try
		{
			_rowsRead = 0;

			if (_rdr != null)
			{
				if (_rdr.IsClosed == false)
				{
					_rdr.Close();
				}

				_rdr.Dispose();
			}

			if (_cmd != null)
			{
				_cmd.Dispose();
			}

			if (_conn != null)
			{
				if (_conn.State != ConnectionState.Open)
				{
					_conn.Close();
				}

				_conn.Dispose();
			}
		}

		catch (Exception err)
		{
			_lastSqlError = err.Message;
		}
	}

	public void Dispose()
	{
		Close();
	}

	#endregion

	#region Execute, read, resultsets

	/// <summary>
	/// Open and execute the reader synchronously.
	/// </summary>
	public void Execute()
	{
		var cts = new CancellationTokenSource();
		var task = ExecuteAsync(cts.Token);

		while (task.IsCompleted == false)
		{ }
	}

	/// <summary>
	/// Open and execute the reader asynchronously.
	/// </summary>
	/// <param name="cancellationToken">Cancellation token to use for optional cancellation of the open and execute operations</param>
	/// <returns>Task that can be monitored for completion</returns>
	public Task ExecuteAsync(CancellationToken cancellationToken = default)
	{
		_rowsRead = 0;

		var task = Task.Run(async () => {

			try
			{
				await using (var _ = cancellationToken.Register(() => _cmd?.Cancel()))
				{
					if (_conn != null)
					{
						await _conn.OpenAsync(cancellationToken);

						if (cancellationToken.IsCancellationRequested == false)
						{
							LoadSchemaData();

							if (cancellationToken.IsCancellationRequested == false)
							{
								if (_cmd != null)
								{
									using (var reader = _cmd?.ExecuteReaderAsync(cancellationToken))
									{
										_rdr = await reader!;
									}
								}
							}
						}
					}
				}
			}

			catch (OperationCanceledException)
			{
				_lastSqlError = "Halide.Core.DataReader.Execute cancelled";
				throw;
			}

			catch (Exception ex)
			{
				_lastSqlError = ex.Message;
				throw;
			}

		}, cancellationToken);

		return task;
	}

	/// <summary>
	/// Read schema data for the current result set.
	/// </summary>
	public void LoadSchemaData()
	{
        if (_schemaData.ContainsKey(_resultSetIndex) == false)
        {
            if (ReaderActive() && _usingRewind == false)
            {
                var _data = _rdr?.GetColumnSchema();

                if (_data != null)
					_schemaData.Add(_resultSetIndex, _data);
            }
        }
	}

	/// <summary>
	/// Switch to rewind mode where the reader can be started all over again
	/// via an internal cache. Works across result sets.
	/// </summary>
	/// <param name="rewindResultSet">Also rewind the result sets back to the first.</param>
	/// <returns>Returns true if rewind mode change was successful</returns>
	public bool Rewind(bool rewindResultSet = true)
	{
		var result = false;

		if (_enableRewind)
		{
			result = true;

			_usingRewind = true;
			_rewindIndex = -1;
			_rowsRead = 0;

			if (rewindResultSet)
			{
				_resultSetIndex = 0;
			}
		}

		return result;
	}

	/// <summary>
	/// Attempt to read a row from the SqlDataReader.
	/// </summary>
	/// <returns>Returns true if a row has been read</returns>
	public bool Read()
	{
		var output = false;

		try
		{
			if (_enableRewind && _usingRewind)
			{
				if (_rewindIndex < _cache[_resultSetIndex].Count - 1)
				{
					_rowsRead++;
					_rewindIndex++;

					output = true;
				}
			}

			else
			{
				if (_rdr is {IsClosed: false})
				{
					output = _rdr.Read();

					if (_enableRewind)
					{
						if (_cache.ContainsKey(_resultSetIndex) == false)
						{
							var _resultSet = new SortedList<int, SortedList<int, object>>();
							_cache.Add(_resultSetIndex, _resultSet);
						}
					}

					if (output)
					{
						LoadSchemaData();

						_rowsRead++;

						if (_enableRewind)
						{
							var _row = new SortedList<int, object>();

							for (var c = 0; c < FieldCount; c++)
							{
								_row.Add(c, _rdr.GetValue(c));
							}

							_cache[_resultSetIndex].Add(_rowsRead - 1, _row);
						}
					}
				}
			}
		}

		catch (Exception err)
		{
			_lastSqlError = err.Message;
		}

		return output;
	}

	/// <summary>
	/// Determine if the reader is open and usable or in Rewind mode.
	/// </summary>
	/// <returns>Returns true if the recordset is usable</returns>
	public bool ReaderActive()
	{
		var result = false;

		if (_enableRewind && _usingRewind)
		{
			result = true;
		}

		else if (_rdr is {IsClosed: false})
		{
			result = true;
		}

		return result;
	}

	/// <summary>
	/// Attempt to advance to the next recordset.
	/// </summary>
	/// <returns>Returns true if a recordset has been loaded</returns>
	public bool NextResult()
	{
		var result = false;

		try
		{
			if (ReaderActive())
			{
				if (_enableRewind && _usingRewind)
				{
					if (_resultSetIndex < _cache.Count - 1)
					{
						_rewindIndex = -1;
						_resultSetIndex++;
						_rowsRead = 0;
						result = true;
					}
				}

				else
				{
					if (_enableRewind)
					{
						// Read remaining rows to ensure rewind will work
						while (_rdr?.Read() ?? false)
						{ }
					}

					result = _rdr?.NextResult() ?? false;

					if (result)
					{
                        _resultSetIndex++;
                        _rowsRead = 0;

                        LoadSchemaData();

						if (_enableRewind)
						{
							_rewindIndex = -1;

                            if (_cache.ContainsKey(_resultSetIndex) == false)
                            {
                                var _resultSet = new SortedList<int, SortedList<int, object>>();
                                _cache.Add(_resultSetIndex, _resultSet);
                            }
                        }
                    }
				}
			}
		}

		catch (Exception err)
		{
			_lastSqlError = err.Message;
		}

		return result;
	}

	/// <summary>
	/// Create a dynamic DataTable object from a SQL data statement.
	/// Uses a separate connection and only pulls the first result set.
	/// </summary>
	/// <param name="addBlank">Add a blank row to the end</param>
	/// <returns>DataTable object</returns>
	public DataTable ReadTable(bool addBlank = false)
	{
		var outp = new DataTable();

		try
		{
			using (var con = new SqlConnection(_connectionString))
			{
				using (var da = new SqlDataAdapter(_commands, con))
				{
					con.Open();
					da.Fill(outp);
				}
			}

			if (addBlank)
			{
				var drow = outp.NewRow();
				outp.Rows.InsertAt(drow, 0);
			}
		}

		catch
		{
			// ignored
		}

		return (outp);
	}

	#endregion

	#region Indexers

	/// <summary>
	/// Shorthand for the GetString method. Returns a record as a string by name.
	/// </summary>
	/// <value>
	/// Record value as a string.
	/// </value>
	public string this[string columnName] => GetString(columnName);

	/// <summary>
	/// Shorthand for the GetString method. Returns a record as a string by column number.
	/// </summary>
	/// <value>
	/// Record value as a string.
	/// </value>
	public string this[int columnIndex] => GetString(columnIndex);

	#endregion

	#region Column value methods

	/// <summary>
	/// Reads all available bytes
	/// </summary>
	/// <param name="columnIndex">Column index</param>
	/// <returns>Byte array with data</returns>
	public byte[]? GetBytes(int columnIndex)
	{
		byte[]? result = null;

		if (ReaderActive())
		{
			if (_enableRewind && _usingRewind)
			{
				result = (byte[])_cache[_resultSetIndex][_rewindIndex].Values[columnIndex];
			}

			else
			{
				if (_rdr?.IsDBNull(columnIndex) == false)
				{
					var size = _rdr.GetBytes(columnIndex, 0, null, 0, 0); //get the length of data 
					result = new byte[size];
					const int bufferSize = 1024;
					long bytesRead = 0;
					var curPos = 0;

					while (bytesRead < size)
					{
						bytesRead += _rdr.GetBytes(columnIndex, curPos, result, curPos, bufferSize);
						curPos += bufferSize;
					}
				}
			}
		}

		else
		{
			throw new Exception("Halide.Core.DataReader Exception for column " + columnIndex + ": DataReader is uninitialized, closed, and not in rewind mode.");
		}

		return result;
	}

	/// <summary>
	/// Reads all available bytes
	/// </summary>
	/// <param name="columnName">Column name</param>
	/// <returns>Byte array with data</returns>
	public byte[]? GetBytes(string columnName)
	{
        return GetBytes(ColumnIndex(columnName));
    }

	/// <summary>
	/// Read a column value in as a string by its column index.
	/// </summary>
	/// <param name="columnIndex">Column index for which to retrieve a value</param>
	/// <returns>Column value</returns>
	public string GetString(int columnIndex)
	{
		var output = string.Empty;

		try
		{
			if (ReaderActive())
			{
				if (_enableRewind && _usingRewind)
				{
					output = _cache[_resultSetIndex][_rewindIndex].Values[columnIndex].ToString();
				}

				else
				{
					if (_rdr?.IsDBNull(columnIndex) ?? true)
					{
						output = string.Empty;
					}

					else
					{
						output = _rdr[columnIndex].ToString();
					}
				}
			}

			else
			{
				throw new Exception("Halide.Core.DataReader Exception for column " + columnIndex + ": DataReader is uninitialized, closed, and not in rewind mode.");
			}
		}

		catch (Exception err)
		{
			_lastSqlError = err.Message;
		}

		return output ?? string.Empty;
	}

	/// <summary>
	/// Read a column value in as a string.
	/// </summary>
	/// <param name="columnName">Column name for which to retrieve a value</param>
	/// <returns>Column value</returns>
	public string GetString(string columnName)
	{
        return GetString(ColumnIndex(columnName));
    }

	/// <summary>
	/// Read a column value in as a string. Can return nulls.
	/// </summary>
	/// <param name="columnIndex">Index of column for which to retrieve a value</param>
	/// <returns>A string value or null</returns>
	public string? GetStringNullable(int columnIndex)
	{
		string? result = null;

		try
		{
			if (ReaderActive())
			{
				if (_enableRewind && _usingRewind)
				{
					var _str = _cache[_resultSetIndex][_rewindIndex].Values[columnIndex];

					result = _str.ToString();
				}

				else
				{
					if (_rdr?.IsDBNull(columnIndex) == false)
					{
						result = _rdr[columnIndex].ToString();
					}
				}
			}

			else
			{
				throw new Exception("Halide.Core.DataReader Exception for column " + ColumnName(columnIndex) + ": DataReader is uninitialized, closed, and not in rewind mode.");
			}
		}

		catch (Exception err)
		{
			_lastSqlError = err.Message;
		}

		return result;
	}

	/// <summary>
	/// Read a column value in as a string. Can return nulls.
	/// </summary>
	/// <param name="columnName">Name of column for which to retrieve a value</param>
	/// <returns>A string value or null</returns>
	public string? GetStringNullable(string columnName)
	{
        return GetStringNullable(ColumnIndex(columnName));
	}

	/// <summary>
	/// Read a column value in as a string by its column name.
	/// </summary>
	/// <param name="columnIndex">Index of column for which to retrieve a value</param>
	/// <param name="defaultValue">Default value to return if string is null or empty</param>
	/// <returns>A string value or default value</returns>
	public string GetString(int columnIndex, string defaultValue)
	{
		string? result = null;

		try
		{
			if (ReaderActive())
			{
				if (_enableRewind && _usingRewind)
				{
					var _str = _cache[_resultSetIndex][_rewindIndex].Values[columnIndex].ToString();

					result = (string.IsNullOrWhiteSpace(_str) ? defaultValue : _str);
				}

				else
				{
					result = GetString(columnIndex);

					if (string.IsNullOrEmpty(result))
					{
						result = defaultValue;
					}
				}
			}

			else
			{
				throw new Exception("Halide.Core.DataReader Exception for column " + ColumnName(columnIndex) + ": DataReader is uninitialized, closed, and not in rewind mode.");
			}
		}

		catch (Exception err)
		{
			_lastSqlError = err.Message;
		}

		return result ?? defaultValue;
	}

	/// <summary>
	/// Read a column value in as a string. Can return nulls.
	/// </summary>
	/// <param name="columnName">Name of column for which to retrieve a value</param>
	/// <param name="defaultValue">Default value to return if string is null or empty</param>
	/// <returns>A string value or default value</returns>
	public string GetString(string columnName, string defaultValue)
	{
        return GetString(ColumnIndex(columnName), defaultValue);
	}

	/// <summary>
	/// Read a column value in as a boolean by its column index.
	/// It will convert values of "y", "yes", "true", "t", "on", "1", "-1" to true.
	/// </summary>
	/// <param name="columnIndex">Index of column for which to retrieve a value</param>
	/// <returns>Column value</returns>
	public bool GetBoolean(int columnIndex)
	{
		var output = false;

		try
		{
			var _temp = GetString(columnIndex, "false").ToLower();

			if (_temp is "y" or "yes" or "true" or "t" or "on" or "1" or "-1")
			{
				output = true;
			}
		}

		catch (Exception err)
		{
			_lastSqlError = err.Message;
		}

		return output;
    }

	/// <summary>
	/// Read a column value in as a boolean by its column name.
	/// It will convert values of "y", "yes", "true", "t", "on", "1", "-1" to true.
	/// </summary>
	/// <param name="columnName">Name of column for which to retrieve a value</param>
	/// <returns>Column value</returns>
	public bool GetBoolean(string columnName)
	{
        return GetBoolean(ColumnIndex(columnName));
	}

	/// <summary>
	/// Read a column value in and process as "Yes", "No", or "n/a" using the GetBoolean method.
	/// </summary>
	/// <param name="columnIndex">Index of column for which to retrieve a value</param>
	/// <returns>Column value</returns>
	public string GetYesNo(int columnIndex)
	{
		var output = "n/a";

		try
		{
			if (GetBoolean(columnIndex))
			{
				output = "Yes";
			}

			else
			{
				output = "No";
			}
		}

		catch (Exception err)
		{
			_lastSqlError = err.Message;
		}

		return output;
    }

	/// <summary>
	/// Read a column value in and process as "Yes", "No", or "n/a" using the GetBoolean method.
	/// </summary>
	/// <param name="columnName">Name of column for which to retrieve a value</param>
	/// <returns>Column value</returns>
	public string GetYesNo(string columnName)
	{
        return GetYesNo(ColumnIndex(columnName));
	}

	/// <summary>
	/// Gets a numeric field that represents minutes (ie 125)
	/// and converts it to an hour format (ie 2:05).
	/// </summary>
	/// <param name="columnIndex">Index of column for which to retrieve a value</param>
	/// <returns>Formatted column value</returns>
	public string GetStringOfMinutes(int columnIndex)
	{
		var output = string.Empty;

		try
		{
			var d = GetString(columnIndex);

			if (string.IsNullOrWhiteSpace(d) == false)
			{
				try
				{
					var x = Convert.ToDouble(d);
					
					output = Math.Floor(x / 60).ToString(CultureInfo.InvariantCulture) + ":";
					x -= Math.Floor(x / 60) * 60;
					output += x.ToString(CultureInfo.InvariantCulture).PadLeft(2, '0');
				}

				catch (Exception err)
				{
					_lastSqlError = err.Message;
				}
			}
		}

		catch (Exception err)
		{
			_lastSqlError = err.Message;
		}

		return output;
    }

	/// <summary>
	/// Gets a numeric field that represents minutes (ie 125)
	/// and converts it to an hour format (ie 2:05).
	/// </summary>
	/// <param name="columnName">Name of column for which to retrieve a value</param>
	/// <returns>Formatted column value</returns>
	public string GetStringOfMinutes(string columnName)
	{
        return GetStringOfMinutes(ColumnIndex(columnName));
	}

	/// <summary>
	/// Is a specified column value empty or null?
	/// </summary>
	/// <param name="columnIndex">Index of column for which to retrieve a value</param>
	/// <returns>true if column value is null or empty, false if not</returns>
	public bool IsNullOrEmpty(int columnIndex)
	{
		var result = false;

		try
		{
			if (ReaderActive())
			{
				if (_enableRewind && _usingRewind)
				{
					result = string.IsNullOrWhiteSpace(_cache[_resultSetIndex][_rewindIndex].Values[columnIndex].ToString());
				}

				else
				{
					try
					{
						result = string.IsNullOrEmpty(GetString(columnIndex));
					}

					catch (Exception err)
					{
						_lastSqlError = err.Message;
					}
				}
			}

			else
			{
				throw new Exception("Halide.Core.DataReader Exception for column " + ColumnName(columnIndex) + ": DataReader is uninitialized, closed, and not in rewind mode.");
			}
		}

		catch (Exception err)
		{
			_lastSqlError = err.Message;
		}

		return result;
    }

	/// <summary>
	/// Is a specified column value empty or null?
	/// </summary>
	/// <param name="columnName">Name of column to evaluate</param>
	/// <returns>true if column value is null or empty, false if not</returns>
	public bool IsNullOrEmpty(string columnName)
	{
        return IsNullOrEmpty(ColumnIndex(columnName));
	}

	/// <summary>
	/// Read a column value into a typed object.
	/// </summary>
	/// <param name="index">Index of column for which to retrieve a value</param>
	/// <returns>Column value</returns>
	public T GetValue<T>(int index)
	{
		var returnValue = default(T);

		try
		{
			if (ReaderActive())
			{
				object? columnValue = null;

				if (_enableRewind && _usingRewind)
				{
					columnValue = _cache[_resultSetIndex][_rewindIndex].Values[index];
				}

				else
				{
					columnValue = _rdr?[index];
				}

				if ((columnValue is DBNull) == false)
				{
					returnValue = (T)Convert.ChangeType(columnValue, typeof(T))!;
				}
			}

			else
			{
				throw new Exception("Halide.Core.DataReader Exception for column " + index + ": DataReader is uninitialized, closed, and not in rewind mode.");
			}
		}

		catch (Exception err)
		{
			_lastSqlError = err.Message;
		}

		return returnValue!;
	}

	/// <summary>
	/// Read a column value into a typed object.
	/// </summary>
	/// <param name="columnName">Name of column for which to retrieve a value</param>
	/// <returns>Column value</returns>
	public T GetValue<T>(string columnName)
	{
		return GetValue<T>(ColumnIndex(columnName));
	}

	#endregion

	#region Schema methods

	/// <summary>
	/// Get the primary key column name, or an empty string if schema is not available.
	/// </summary>
	/// <returns>A string with the column name of the primary key</returns>
	public string GetPrimaryKeyName()
	{
        var result = string.Empty;

        try
        {
            if (_schemaData.TryGetValue(_resultSetIndex, out var value))
            {
                var column = value.FirstOrDefault(c => c.IsKey == true);

                if (column != null)
                {
                    result = column.ColumnName;
                }
            }
        }

        catch (Exception err)
        {
            _lastSqlError = err.Message;
        }

		return result;
	}

	/// <summary>
	/// Get the primary key column index, or -1 if not available.
	/// </summary>
	/// <returns>Primary key column index, or -1 if not available</returns>
	public int GetPrimaryKeyIndex()
	{
        var result = -1;

        try
        {
            if (_schemaData.TryGetValue(_resultSetIndex, out var value))
            {
                var column = value.FirstOrDefault(c => c.IsKey == true);

                if (column != null)
                {
                    result = column.ColumnOrdinal ?? -1;
                }
            }
        }

        catch (Exception err)
        {
            _lastSqlError = err.Message;
        }

		return result;
	}

	/// <summary>
	/// Get the size (dimension) of the column, or zero if no schema information is available.
	/// </summary>
	/// <param name="columnIndex">Index of column for which to retrieve a value</param>
	/// <returns>Column size</returns>
	public int GetColumnSize(int columnIndex)
	{
		var result = 0;

        try
        {
            if (_schemaData.TryGetValue(_resultSetIndex, out var value))
            {
                var column = value.FirstOrDefault(c => c.ColumnOrdinal == columnIndex);

                if (column != null)
                {
                    result = column.ColumnSize ?? 0;
                }
            }
        }

        catch (Exception err)
        {
            _lastSqlError = err.Message;
        }

		return result;
	}

	/// <summary>
	/// Get the size (dimension) of the column, or zero if no schema information is available.
	/// </summary>
	/// <param name="columnName">Name of column for which to retrieve a value</param>
	/// <returns>Column size</returns>
	public int GetColumnSize(string columnName)
	{
        return GetColumnSize(ColumnIndex(columnName));
	}

	/// <summary>
	/// Get the numeric precision of the column, or zero if no schema information is available.
	/// </summary>
	/// <param name="columnIndex">Index of column for which to retrieve a value</param>
	/// <returns>Column size</returns>
	public int GetColumnNumericPrecision(int columnIndex)
	{
		var result = 0;

        try
        {
            if (_schemaData.TryGetValue(_resultSetIndex, out var value))
            {
                var column = value.FirstOrDefault(c => c.ColumnOrdinal == columnIndex);

                if (column != null)
                {
                    result = column.NumericPrecision ?? 0;
                }
            }
        }

        catch (Exception err)
        {
            _lastSqlError = err.Message;
        }

		return result;
	}

	/// <summary>
	/// Get the numeric precision of a column, or zero if no schema information is available.
	/// </summary>
	/// <param name="columnName">Name of column for which to retrieve a value</param>
	/// <returns>Column size</returns>
	public int GetColumnNumericPrecision(string columnName)
	{
        return GetColumnNumericPrecision(ColumnIndex(columnName));
	}

	/// <summary>
	/// Get the numeric scale of a column, or zero if no schema information is available.
	/// </summary>
	/// <param name="columnIndex">Index of column for which to retrieve a value</param>
	/// <returns>Column size</returns>
	public int GetColumnNumericScale(int columnIndex)
	{
		var result = 0;

        try
        {
            if (_schemaData.TryGetValue(_resultSetIndex, out var value))
            {
                var column = value.FirstOrDefault(c => c.ColumnOrdinal == columnIndex);

                if (column != null)
                {
                    result = column.NumericScale ?? 0;
                }
            }
        }

        catch (Exception err)
        {
            _lastSqlError = err.Message;
        }

		return result;
	}

	/// <summary>
	/// Get the numeric scale of a column, or zero if no schema information is available.
	/// </summary>
	/// <param name="columnName">Name of column for which to retrieve a value</param>
	/// <returns>Column size</returns>
	public int GetColumnNumericScale(string columnName)
	{
        return GetColumnNumericScale(ColumnIndex(columnName));
	}

	/// <summary>
	/// Does a specified column allow nulls? Returns false if no schema information is available.
	/// </summary>
	/// <param name="columnIndex">Index of column to evaluate</param>
	/// <returns>true or false</returns>
	public bool GetColumnAllowNulls(int columnIndex)
	{
		var result = false;

        try
        {
            if (_schemaData.TryGetValue(_resultSetIndex, out var value))
            {
                var column = value.FirstOrDefault(c => c.ColumnOrdinal == columnIndex);

                if (column != null)
                {
                    result = column.AllowDBNull ?? false;
                }
            }
        }

        catch (Exception err)
        {
            _lastSqlError = err.Message;
        }

		return result;
	}

	/// <summary>
	/// Does a specified column allow nulls? Returns false if no schema information is available.
	/// </summary>
	/// <param name="columnName">Name of the column</param>
	/// <returns>true or false</returns>
	public bool GetColumnAllowNulls(string columnName)
	{
        return GetColumnAllowNulls(ColumnIndex(columnName));
	}

	/// <summary>
	/// Is a specified column an auto-incrementing field? Returns false if no schema information is available.
	/// </summary>
	/// <param name="columnIndex">Index of column to evaluate</param>
	/// <returns>true or false</returns>
	public bool GetColumnIsAutoIncrement(int columnIndex)
	{
		var result = false;

        try
        {
            if (_schemaData.TryGetValue(_resultSetIndex, out var value))
            {
                var column = value.FirstOrDefault(c => c.ColumnOrdinal == columnIndex);

                if (column != null)
                {
                    result = column.IsAutoIncrement ?? false;
                }
            }
        }

        catch (Exception err)
        {
            _lastSqlError = err.Message;
        }

		return result;
	}

	/// <summary>
	/// Is a specified column an auto-incrementing field? Returns false if no schema information is available.
	/// </summary>
	/// <param name="columnName">Name of the column</param>
	/// <returns>true or false</returns>
	public bool GetColumnIsAutoIncrement(string columnName)
	{
        return GetColumnIsAutoIncrement(ColumnIndex(columnName));
	}

	/// <summary>
	/// Is a specified column aliased? Returns false if no schema information is available.
	/// </summary>
	/// <param name="columnIndex">Index of column to evaluate</param>
	/// <returns>true or false</returns>
	public bool GetColumnIsAliased(int columnIndex)
	{
		var result = false;

        try
        {
            if (_schemaData.TryGetValue(_resultSetIndex, out var value))
            {
                var column = value.FirstOrDefault(c => c.ColumnOrdinal == columnIndex);

                if (column != null)
                {
                    result = column.IsAliased ?? false;
                }
            }
        }

        catch (Exception err)
        {
            _lastSqlError = err.Message;
        }

		return result;
	}

	/// <summary>
	/// Is a specified column aliased? Returns false if no schema information is available.
	/// </summary>
	/// <param name="columnName">Name of the column</param>
	/// <returns>true or false</returns>
	public bool GetColumnIsAliased(string columnName)
	{
        return GetColumnIsAliased(ColumnIndex(columnName));
	}

	/// <summary>
	/// Is a specified column an expression? Returns false if no schema information is available.
	/// </summary>
	/// <param name="columnIndex">Index of column to evaluate</param>
	/// <returns>true or false</returns>
	public bool GetColumnIsExpression(int columnIndex)
	{
		var result = false;

        try
        {
            if (_schemaData.TryGetValue(_resultSetIndex, out var value))
            {
                var column = value.FirstOrDefault(c => c.ColumnOrdinal == columnIndex);

                if (column != null)
                {
                    result = column.IsExpression ?? false;
                }
            }
        }

        catch (Exception err)
        {
            _lastSqlError = err.Message;
        }

		return result;
	}

	/// <summary>
	/// Is a specified column an expression? Returns false if no schema information is available.
	/// </summary>
	/// <param name="columnName">Name of the column</param>
	/// <returns>true or false</returns>
	public bool GetColumnIsExpression(string columnName)
	{
        return GetColumnIsExpression(ColumnIndex(columnName));
	}

	/// <summary>
	/// Is a specified column hidden? Returns false if no schema information is available.
	/// </summary>
	/// <param name="columnIndex">Index of column to evaluate</param>
	/// <returns>true or false</returns>
	public bool GetColumnIsHidden(int columnIndex)
	{
		var result = false;

        try
        {
            if (_schemaData.TryGetValue(_resultSetIndex, out var value))
            {
                var column = value.FirstOrDefault(c => c.ColumnOrdinal == columnIndex);

                if (column != null)
                {
                    result = column.IsHidden ?? false;
                }
            }
        }

        catch (Exception err)
        {
            _lastSqlError = err.Message;
        }

		return result;
	}

	/// <summary>
	/// Is a specified column hidden? Returns false if no schema information is available.
	/// </summary>
	/// <param name="columnName">Name of the column</param>
	/// <returns>true or false</returns>
	public bool GetColumnIsHidden(string columnName)
	{
        return GetColumnIsHidden(ColumnIndex(columnName));
	}

	/// <summary>
	/// Is a specified column an identity? Returns false if no schema information is available.
	/// </summary>
	/// <param name="columnIndex">Index of column to evaluate</param>
	/// <returns>true or false</returns>
	public bool GetColumnIsIdentity(int columnIndex)
	{
		var result = false;

        try
        {
            if (_schemaData.TryGetValue(_resultSetIndex, out var value))
            {
                var column = value.FirstOrDefault(c => c.ColumnOrdinal == columnIndex);

                if (column != null)
                {
                    result = column.IsIdentity ?? false;
                }
            }
        }

        catch (Exception err)
        {
            _lastSqlError = err.Message;
        }

		return result;
	}

	/// <summary>
	/// Is a specified column an identity? Returns false if no schema information is available.
	/// </summary>
	/// <param name="columnName">Name of the column</param>
	/// <returns>true or false</returns>
	public bool GetColumnIsIdentity(string columnName)
	{
        return GetColumnIsIdentity(ColumnIndex(columnName));
	}

	/// <summary>
	/// Does a specified column contain long data? Returns false if no schema information is available.
	/// </summary>
	/// <param name="columnIndex">Index of column to evaluate</param>
	/// <returns>true or false</returns>
	public bool GetColumnIsLong(int columnIndex)
	{
		var result = false;

        try
        {
            if (_schemaData.TryGetValue(_resultSetIndex, out var value))
            {
                var column = value.FirstOrDefault(c => c.ColumnOrdinal == columnIndex);

                if (column != null)
                {
                    result = column.IsLong ?? false;
                }
            }
        }

        catch (Exception err)
        {
            _lastSqlError = err.Message;
        }

		return result;
	}

	/// <summary>
	/// Does a specified column contain long data? Returns false if no schema information is available.
	/// </summary>
	/// <param name="columnName">Name of the column</param>
	/// <returns>true or false</returns>
	public bool GetColumnIsLong(string columnName)
	{
        return GetColumnIsLong(ColumnIndex(columnName));
	}

	/// <summary>
	/// Is a specified column read-only? Returns false if no schema information is available.
	/// </summary>
	/// <param name="columnIndex">Index of column to evaluate</param>
	/// <returns>true or false</returns>
	public bool GetColumnIsReadOnly(int columnIndex)
	{
		var result = false;

        try
        {
            if (_schemaData.TryGetValue(_resultSetIndex, out var value))
            {
                var column = value.FirstOrDefault(c => c.ColumnOrdinal == columnIndex);

                if (column != null)
                {
                    result = column.IsReadOnly ?? false;
                }
            }
        }

        catch (Exception err)
        {
            _lastSqlError = err.Message;
        }

		return result;
	}

	/// <summary>
	/// Is a specified column read-only? Returns false if no schema information is available.
	/// </summary>
	/// <param name="columnName">Name of the column</param>
	/// <returns>true or false</returns>
	public bool GetColumnIsReadOnly(string columnName)
	{
        return GetColumnIsReadOnly(ColumnIndex(columnName));
	}

	/// <summary>
	/// Is a specified column unique? Returns false if no schema information is available.
	/// </summary>
	/// <param name="columnIndex">Index of column to evaluate</param>
	/// <returns>true or false</returns>
	public bool GetColumnIsUnique(int columnIndex)
	{
		var result = false;

        try
        {
            if (_schemaData.TryGetValue(_resultSetIndex, out var value))
            {
                var column = value.FirstOrDefault(c => c.ColumnOrdinal == columnIndex);

                if (column != null)
                {
                    result = column.IsUnique ?? false;
                }
            }
        }

        catch (Exception err)
        {
            _lastSqlError = err.Message;
        }

		return result;
	}

	/// <summary>
	/// Is a specified column unique? Returns false if no schema information is available.
	/// </summary>
	/// <param name="columnName">Name of the column</param>
	/// <returns>true or false</returns>
	public bool GetColumnIsUnique(string columnName)
	{
        return GetColumnIsUnique(ColumnIndex(columnName));
	}

	/// <summary>
	/// Retrieve the SQL data type name of a specified column (e.g. "varchar", "int", "smallint", et al.).
	/// </summary>
	/// <param name="columnIndex">Index of column to evaluate</param>
	/// <returns>Data type name</returns>
	public string GetDataTypeName(int columnIndex)
	{
		var result = string.Empty;

        try
        {
            if (_schemaData.TryGetValue(_resultSetIndex, out var value))
            {
                var column = value.FirstOrDefault(c => c.ColumnOrdinal == columnIndex);

                if (column != null)
                {
                    result = column.DataTypeName;
                }
            }
        }

        catch (Exception err)
        {
            _lastSqlError = err.Message;
        }

		return result ?? string.Empty;
	}

	/// <summary>
	/// Retrieve the SQL data type name of a specified column (e.g. "varchar", "int", "smallint", et al.).
	/// </summary>
	/// <param name="columnName">Name of column to evaluate</param>
	/// <returns>Data type name</returns>
	public string GetDataTypeName(string columnName)
	{
        return GetDataTypeName(ColumnIndex(columnName));
	}

	/// <summary>
	/// Get a column name by its index.
	/// </summary>
	/// <param name="index">Index of column for which to retrieve the name</param>
	/// <returns>Column name</returns>
	public string ColumnName(int index)
	{
		var result = string.Empty;

        if (_schemaData.TryGetValue(_resultSetIndex, out var value))
        {
            var column = value.FirstOrDefault(c => c.ColumnOrdinal == index);

            if (column != null)
            {
                result = column.ColumnName;
            }
        }

		return result;
	}

	/// <summary>
	/// Get a column index by its name.
	/// </summary>
	/// <param name="columnName">Name of column for which to retrieve the index</param>
	/// <returns>Column index or -1 if not found</returns>
	public int ColumnIndex(string columnName)
	{
		var result = -1;

        if (_schemaData.TryGetValue(_resultSetIndex, out var value))
        {
            var column = value.FirstOrDefault(c => c.ColumnName.ToLower() == columnName.ToLower());

            if (column != null)
            {
                result = column.ColumnOrdinal ?? -1;
            }
        }

		return result;
	}

	#endregion
}
