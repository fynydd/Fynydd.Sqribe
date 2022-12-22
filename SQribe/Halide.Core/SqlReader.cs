// Copyright (c) Fynydd LLC.
// Licensed under the GNU GPLv3 License.

using System;
using System.Data;
using System.Threading;
using System.Threading.Tasks;
using Microsoft.Data.SqlClient;

namespace SQribe.Halide.Core;

/// <summary>
/// Wrapper for using SqlConnection, SqlCommand, and SqlDataReader.
/// <example>
/// <code>
/// using (var sqlReader = new SqlReader(new SqlReaderConfiguration
/// {
///		ConnectionString = sqlConnectionString,
///		CommandText = "select * from table"
/// }))
/// {
///		await using (await sqlReader.ExecuteReaderAsync())
///		{
///			if (sqlReader.HasRows)
///			{
///				while (sqlReader.Read())
///				{
///					var fullName = sqlReader.SafeGetStringAsync("fullName");
///					...
///				}
///			}
///		}
/// }
/// </code>
/// </example> 
/// </summary>
public sealed class SqlReader: IDisposable
{
	private SqlConnection? SqlConnection { get; }
	private SqlCommand? SqlCommand { get; }
	public SqlDataReader? SqlDataReader { get; set; }
	private string ConnectionString { get; } 
	
	public SqlReader(SqlReaderConfiguration config)
	{
		var builder = new SqlConnectionStringBuilder(config.ConnectionString)
		{
			TrustServerCertificate = true
		};

		ConnectionString = builder.ToString();
		SqlConnection = new SqlConnection(ConnectionString);
		SqlCommand = new SqlCommand();

		try
		{
			SqlCommand.CommandText = config.CommandText;
			SqlCommand.Connection = SqlConnection;
		}

		catch (Exception e)
		{
			throw new Exception($"SqlReader() => {e.Message}");
		}
	}

	public SqlDataReader? ExecuteReader(CancellationToken? token = null)
	{
		if (SqlConnection == null || SqlCommand == null)
			return null;

		if (token == null)
			SqlConnection.OpenAsync().GetAwaiter();
		else
			SqlConnection.OpenAsync(token.Value).GetAwaiter();

		if (SqlConnection.State != ConnectionState.Open)
			throw new Exception($"ExecuteReader() => Could not open a SQL Server connection; ({SqlConnection?.State})");
		
		SqlDataReader = SqlCommand?.ExecuteReader();

		return SqlDataReader;
	}

	public async Task<SqlDataReader?> ExecuteReaderAsync(CancellationToken? token = null)
	{
		if (SqlConnection == null || SqlCommand == null)
			return null;
		
		if (token == null)
			await SqlConnection.OpenAsync();
		else
			await SqlConnection.OpenAsync(token.Value);

		if (SqlConnection.State != ConnectionState.Open)
			throw new Exception($"ExecuteReaderAsync() => Could not open a SQL Server connection; ({SqlConnection.State})");

		SqlDataReader = await SqlCommand.ExecuteReaderAsync();

		return SqlDataReader;
	}

	#region SqlDataReader Convenience Methods
	
	/// <summary>
	/// Execute SqlDataReader.Read().
	/// </summary>
	/// <returns></returns>
	public bool Read()
	{
		return SqlDataReader?.Read() ?? false;
	}

	/// <summary>
	/// Execute SqlDataReader.ReadAsync().
	/// </summary>
	/// <returns></returns>
	public async Task<bool> ReadAsync(CancellationToken? token = null)
	{
		if (token == null)
			return SqlDataReader is not null && await SqlDataReader.ReadAsync();
		
		return SqlDataReader is not null && await SqlDataReader.ReadAsync(token.Value);
	}
	
	/// <summary>
	/// Return SqlDataReader.HasRows.
	/// </summary>
	/// <returns></returns>
	public bool HasRows => SqlDataReader?.HasRows ?? false;

	/// <summary>
	/// Create a dynamic DataTable object from a SQL data statement.
	/// Uses a separate connection and only pulls the first result set.
	/// </summary>
	/// <param name="addBlank">Add a blank row to the end</param>
	/// <returns>DataTable object</returns>
	public DataTable ReadTable(bool addBlank = false)
	{
		var dataTable = new DataTable();

		try
		{
			using (var con = new SqlConnection(ConnectionString))
			{
				using (var da = new SqlDataAdapter(SqlCommand!.CommandText, con))
				{
					con.Open();
					da.Fill(dataTable);
				}
			}

			if (addBlank)
			{
				var drow = dataTable.NewRow();
				dataTable.Rows.InsertAt(drow, 0);
			}
		}

		catch
		{
			// ignored
		}

		return dataTable;
	}
	
	#endregion

	#region Close and Disposal

	private bool disposed;
	
	/// <summary>
	/// Closes SQL Server connection.
	/// </summary>
	public void Close()
	{
		if (SqlConnection?.State != ConnectionState.Closed)
			SqlConnection?.Close();
	}
	
	/// <summary>
	/// Closes SQL Server connections and disposes of all connection objects.
	/// </summary>
	~SqlReader()
	{
		Dispose(false);
	}	

	private void Dispose(bool disposing)
	{
		if (disposed == false)
		{
			Close();

			if (disposing)
			{
				SqlConnection?.Dispose();
				SqlCommand?.Dispose();
				SqlDataReader?.Dispose();
			}
			
			disposed = true;
		}
	}

	public void Dispose()
	{
		Dispose(true);
		GC.SuppressFinalize(this);
	}
	
	#endregion
}

public sealed class SqlReaderConfiguration
{
	public string ConnectionString { get; set; } = string.Empty;
	public string CommandText { get; set; } = string.Empty;
}
