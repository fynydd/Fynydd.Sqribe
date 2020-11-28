// Copyright (c) Fynydd LLC.
// Licensed under the GNU GPLv3 License.

using System;
using System.Collections;
using System.Data;
using System.Data.SqlClient;
using System.Text;

namespace Fynydd.Halide
{
	/// <summary>
	/// The SQL class contains methods and properties for
	/// performing operations on, or evaluating, SQL databases.
	/// </summary>
	/// <example>
	/// Add the following to your web.config file to use the
	/// these class methods without specifying the connection string:
	/// <code lang="XML">
	/// <![CDATA[
	///		<connectionStrings>
	///			<add name="Halide" connectionString="Data Source=server; Initial Catalog=database; User ID=username; password=password; Connection Timeout=30;" providerName="System.Data.SqlClient" />
	///		</connectionStrings>
	///	]]>
	/// </code>
	/// </example>
	public static class SQL
	{
		/// <summary>
		/// Look up a value from a database object. Returns only one string
		/// value, so query must only return one value.
		/// </summary>
		/// <example>
		/// <code>
		/// string result = SQL.Lookup("SELECT TOP 5 * FROM ContentTable", "SqlServer01", 30);
		/// string result2 = SQL.Lookup("exec spu_ProcedureName", "SqlServer02", 30);
		/// </code>
		/// </example>
		/// <param name="sqlCommand">SQL query string for which to return a string value.</param>
		/// <param name="connectionString">Connection string.</param>
		/// <param name="timeout">Timeout in seconds for the request. Use zero for no timeout period.</param>
		/// <returns>A string value returned from the query.</returns>
		public static T Lookup<T>(string sqlCommand, string connectionString, int timeout = 30)
		{
			T result = default(T);

			try
			{
				using (SqlConnection cn = new SqlConnection(connectionString))
				{
					cn.Open();

					using (SqlCommand oc = new SqlCommand(sqlCommand, cn))
					{
						oc.CommandTimeout = timeout;
						object retval = oc.ExecuteScalar();
						oc.Dispose();

						if (retval != null)
						{
							result = (T)Convert.ChangeType(retval, typeof(T));
						}
					}

					cn.Close();
				}
			}

			catch (Exception err)
			{
				throw new Exception("Halide.SQL Error: " + err.ToString());
			}

			return result;
		}

		/// <summary>
		/// Execute one or more SQL statements.
		/// </summary>
		/// <example>
		/// <code>
		/// bool result = SQL.Exec("select * from test;", "{connection string}", 60);
		/// </code>
		/// </example>
		/// <param name="statement">SQL statement to execute.</param>
		/// <param name="connectionString">Connection string.</param>
		/// <param name="GoStatementFormat">Define how to identify any "GO" lines in the statement (e.g. "GO", "GO -- Done", etc.).</param>
		/// <param name="timeout">Timeout in seconds for the command to execute; use zero for no timeout period.</param>
		/// <returns>true if successful, false if failure.</returns>
		public static bool Exec(string statement, string connectionString, string GoStatementFormat = "GO", int timeout = 0)
		{
			bool result = false;

			if (!string.IsNullOrEmpty(statement))
			{
				try
				{
					using (SqlConnection cn = new SqlConnection(connectionString))
					{
						cn.Open();

						string[] commands = statement.Split(new string[] { GoStatementFormat }, StringSplitOptions.RemoveEmptyEntries);

	                    foreach (string command in commands)
	                    {
							using (SqlCommand oc = new SqlCommand(statement, cn))
							{
                                try
                                {
                                    oc.CommandTimeout = timeout;
                                    oc.CommandType = CommandType.Text;
                                    oc.ExecuteNonQuery();
                                }

                                catch (Exception err)
                                {
									throw new Exception("Halide.SQL Error: " + err.ToString());
                                }
							}
						}
					}

					result = true;
				}

				catch (Exception err)
				{
					throw new Exception("Halide.SQL Error: " + err.ToString());
				}
			}

			return result;
		}

		/// <summary>
		/// Execute a stored procedure with passed form field names in string array.
		/// </summary>
		/// <example>
		/// <code>
		/// string[] fields = new string[] { "fname", "lname", "email1" };
		/// string[] values = new string[] { "", "", value5 };
		/// string result = SQL.PowerExec("spu_Function_Name", fields, values, true, "SqlServer01");
		/// </code>
		/// </example>
		/// <param name="procedureName">Name of stored procedure.</param>
		/// <param name="paramNames">string array with field names.</param>
		/// <param name="paramValues">string array with field values.</param>
		/// <param name="connectionString">Connection string.</param>
		/// <param name="returnsValue">If the stored procedure returns a value, set to true,
		/// otherwise, set to false. When false, the number of rows affected is returned as a string.</param>
		/// <param name="timeOut">SQL Command timeout value.</param>
		/// <returns>Returns the result of the stored procedure if successful.</returns>
		public static string PowerExec(string procedureName, string[] paramNames, string[] paramValues, string connectionString, bool returnsValue = true, int timeOut = 30)
		{
			string sql = procedureName;
			object added;

			if (paramNames.Length < 1 || string.IsNullOrEmpty(sql))
			{
				return ("No fields were specified for the SQL stored procedure to process, and/or no stored procedure name was specified.");
			}

			else
			{
				try
				{
					SqlConnection con = new SqlConnection(connectionString);
					SqlCommand cmd = new SqlCommand(sql, con);
					cmd.CommandType = CommandType.StoredProcedure;
					cmd.CommandTimeout = timeOut;

					for (int counter = 0; counter < paramNames.Length; counter++)
					{
						string value = paramValues[counter];

						paramNames[counter] = paramNames[counter].Replace("@", "");

						cmd.Parameters.AddWithValue("@" + paramNames[counter], (value == null ? (object)DBNull.Value : (object)value));
					}

					try
					{
						con.Open();

						if (returnsValue)
						{
							added = cmd.ExecuteScalar();
						}

						else
						{
							added = cmd.ExecuteNonQuery();
						}
					}

					catch (Exception err)
					{
						throw new Exception("Halide.SQL Error: " + err.ToString());
					}

					finally
					{
						cmd.Dispose();
						con.Close();
					}
				}

				catch (Exception err)
				{
					throw new Exception("Halide.SQL Error: " + err.ToString());
				}

				string result = null;

				if (added != null)
				{
					result = added.ToString();
				}

				return (result);
			}
		}

		/// <summary>
		/// Loads the results of a SQL query into a DataTable object.
		/// </summary>
		/// <example>
		/// <code>
		/// DataTable dt = SQL.ReadTable("SELECT TOP 5 FROM tablename;", "SqlServer01");
		/// </code>
		/// </example>
		/// <param name="statement">SQL statement to execute.</param>
		/// <param name="connectionString">Connection string.</param>
		/// <returns>DataTable object.</returns>
		public static DataTable ReadTable(string statement, string connectionString)
		{
			DataTable dt = new DataTable();

			using (DataReader reader = new DataReader(statement, connectionString))
			{
                reader.Execute();

                if (reader.IsReady)
                {
                    if (reader.HasRows)
                    {
                        dt = reader.ReadTable();
                    }
                }
			}

			return (dt);
		}

		/// <summary>
		/// Generate CSV data from a SQL Server request. Converts quotation marks to "&quot;".
		/// </summary>
		/// <param name="select">SQL Server command to execute, which retrieves a dataset.</param>
		/// <param name="connectionString">Connection string.</param>
		/// <param name="includeHeaders">Include column names as a header row in the CSV file.</param>
		/// <param name="alwaysUseQuotes">Wrap all values in quotation marks. False will omit quotation marks around numeric values.</param>
		/// <returns>StringBuilder result with the new CSV data.</returns>
		public static StringBuilder GenerateCSV(string select, string connectionString, bool includeHeaders = true, bool alwaysUseQuotes = true)
		{
			StringBuilder csv = new StringBuilder();

			using (DataReader reader = new DataReader(select, connectionString))
			{
                reader.Execute();

				#region Build header row

                if (reader.IsReady)
                {
                    if (includeHeaders)
                    {
                        for (int x = 0; x < reader.FieldCount; x++)
                        {
                            if (x > 0)
                            {
                                csv.Append(",");
                            }

                            csv.Append("\"" + reader.ColumnName(x) + "\"");
                        }

                        csv.Append("\r\n");
                    }

                    #endregion

                    #region Build data rows

                    ArrayList types = new ArrayList();

                    types.Add("int");
                    types.Add("bigint");
                    types.Add("float");
                    types.Add("decimal");
                    types.Add("numeric");
                    types.Add("money");
                    types.Add("tinyint");
                    types.Add("int");
                    types.Add("smallint");
                    types.Add("smallmoney");
                    types.Add("real");

                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            for (int x = 0; x < reader.FieldCount; x++)
                            {
                                if (x > 0)
                                {
                                    csv.Append(",");
                                }

                                if (!alwaysUseQuotes && types.Contains(reader.GetDataTypeName(x).ToLower()))
                                {
                                    csv.Append(reader[x]);
                                }

                                else
                                {
                                    csv.Append("\"" + reader[x].Replace("\"", "&quot;") + "\"");
                                }
                            }

                            csv.Append("\r\n");
                        }
                    }
                }

				#endregion
			}

			return csv;
		}

		/// <summary>
		/// Generate CSV data from a SQL Server data request, and write it to a file. Converts quotation marks to "&quot;".
		/// </summary>
		/// <param name="select">SQL Server command to execute, which retrieves a dataset.</param>
		/// <param name="connectionString">Connection string.</param>
		/// <param name="includeHeaders">Include column names as a header row in the CSV file.</param>
		/// <param name="alwaysUseQuotes">Wrap all values in quotation marks. False will omit quotation marks around numeric values.</param>
		/// <param name="filePath">Path and filename for the output of the data.</param>
		/// <returns>True if the file was written successfully.</returns>
		public static bool ExportCSV(string select, string connectionString, bool includeHeaders, bool alwaysUseQuotes, string filePath)
		{
			bool result = false;

			StringBuilder CSV = new StringBuilder();

			CSV = GenerateCSV(select, connectionString, includeHeaders, alwaysUseQuotes);

			using (System.IO.StreamWriter file = new System.IO.StreamWriter(filePath))
			{
				file.Write(CSV.ToString());
				result = true;
			}

			return result;
		}
	}
}