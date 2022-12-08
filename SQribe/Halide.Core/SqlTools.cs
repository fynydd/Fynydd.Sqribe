// Copyright (c) Fynydd LLC.
// Licensed under the GNU GPLv3 License.

using System;
using System.Data;
using System.Data.SqlClient;
using System.Threading.Tasks;

namespace SQribe.Halide.Core;

/// <summary>
/// Various tools to make using SqlConnection and SqlDataReader more bearable. 
/// </summary>
public static class SqlTools
{
	#region Column Exists
	
	/// <summary>
	/// Determine if a column exists in an open SqlDataReader.
	/// </summary>
	/// <param name="sqlDataReader"></param>
	/// <param name="columnName"></param>
	/// <returns></returns>
	public static bool ColumnExists(this SqlDataReader sqlDataReader, string columnName)
	{
		if (columnName.IsEmpty()) return false;
		if (sqlDataReader.IsClosed) return false;
		if (sqlDataReader.FieldCount == 0) return false;

		for (var i = 0; i < sqlDataReader.FieldCount; i++)
		{
			if (sqlDataReader.GetName(i).Equals(columnName, StringComparison.InvariantCultureIgnoreCase))
				return true;
		}

		return false;
	}

	/// <summary>
	/// Determine if a column exists in an open SqlDataReader.
	/// </summary>
	/// <param name="sqlDataReader"></param>
	/// <param name="index"></param>
	/// <returns></returns>
	public static bool ColumnExists(this SqlDataReader sqlDataReader, int index)
	{
		if (index < 0) return false;
		if (sqlDataReader.IsClosed) return false;
		if (sqlDataReader.FieldCount == 0) return false;
		if (index < sqlDataReader.FieldCount) return true;

		return false;
	}
	
	#endregion
	
	#region Column Name
	
	/// <summary>
	/// Get the column index for a named column in an open SqlDataReader.
	/// </summary>
	/// <param name="sqlDataReader"></param>
	/// <param name="columnName"></param>
	/// <returns></returns>
	public static int ColumnIndex(this SqlDataReader sqlDataReader, string columnName)
	{
		if (columnName.IsEmpty()) return -1;
		if (sqlDataReader.IsClosed) return -1;
			
		for (var i = 0; i < sqlDataReader.FieldCount; i++)
		{
			if (sqlDataReader.GetName(i).Equals(columnName, StringComparison.InvariantCultureIgnoreCase))
				return i;
		}

		return -1;
	}
	
	#endregion

	#region SafeGetString
	
	/// <summary>
	/// Get a SqlDataReader column value or a default value if the column does not exist or is null.
	/// </summary>
	/// <param name="sqlDataReader"></param>
	/// <param name="columnName"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static async ValueTask<string> SafeGetStringAsync(this SqlDataReader sqlDataReader, string columnName, string defaultValue = "")
	{
		if (sqlDataReader.ColumnExists(columnName))
		{
			if (await sqlDataReader.IsDBNullAsync(columnName))
				return defaultValue;
			
			return sqlDataReader.GetValue(columnName).ToString() ?? defaultValue;
		}

		return defaultValue;
	}

	/// <summary>
	/// Get a SqlDataReader column value or a default value if the column does not exist or is null.
	/// </summary>
	/// <param name="sqlDataReader"></param>
	/// <param name="columnName"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static string SafeGetString(this SqlDataReader sqlDataReader, string columnName, string defaultValue = "")
	{
		if (sqlDataReader.ColumnExists(columnName))
		{
			if (sqlDataReader.IsDBNull(columnName))
				return defaultValue;
			
			return sqlDataReader.GetValue(columnName).ToString() ?? defaultValue;
		}

		return defaultValue;
	}

	/// <summary>
	/// Get a SqlDataReader column value or a default value if the column does not exist or is null.
	/// </summary>
	/// <param name="sqlDataReader"></param>
	/// <param name="index"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static async ValueTask<string> SafeGetStringAsync(this SqlDataReader sqlDataReader, int index, string defaultValue = "")
	{
		if (sqlDataReader.ColumnExists(index))
		{
			if (await sqlDataReader.IsDBNullAsync(index))
				return defaultValue;
			
			return sqlDataReader.GetValue(index).ToString() ?? defaultValue;
		}

		return defaultValue;
	}

	/// <summary>
	/// Get a SqlDataReader column value or a default value if the column does not exist or is null.
	/// </summary>
	/// <param name="sqlDataReader"></param>
	/// <param name="index"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static string SafeGetString(this SqlDataReader sqlDataReader, int index, string defaultValue = "")
	{
		if (sqlDataReader.ColumnExists(index))
		{
			if (sqlDataReader.IsDBNull(index))
				return defaultValue;
			
			return sqlDataReader.GetValue(index).ToString() ?? defaultValue;
		}

		return defaultValue;
	}
	
	/// <summary>
	/// Get a SqlDataReader column value or a default value if the column does not exist or is null.
	/// </summary>
	/// <param name="sqlReader"></param>
	/// <param name="columnName"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static async ValueTask<string> SafeGetStringAsync(this SqlReader sqlReader, string columnName, string defaultValue = "")
	{
		return sqlReader.SqlDataReader is not null ? await sqlReader.SqlDataReader.SafeGetStringAsync(columnName, defaultValue) : defaultValue;
	}

	/// <summary>
	/// Get a SqlDataReader column value or a default value if the column does not exist or is null.
	/// </summary>
	/// <param name="sqlReader"></param>
	/// <param name="columnName"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static string SafeGetString(this SqlReader sqlReader, string columnName, string defaultValue = "")
	{
		return sqlReader.SqlDataReader is not null ? sqlReader.SqlDataReader.SafeGetString(columnName, defaultValue) : defaultValue;
	}

	/// <summary>
	/// Get a SqlDataReader column value or a default value if the column does not exist or is null.
	/// </summary>
	/// <param name="sqlReader"></param>
	/// <param name="index"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static async ValueTask<string> SafeGetStringAsync(this SqlReader sqlReader, int index, string defaultValue = "")
	{
		return sqlReader.SqlDataReader is not null ? await sqlReader.SqlDataReader.SafeGetStringAsync(index, defaultValue) : defaultValue;
	}

	/// <summary>
	/// Get a SqlDataReader column value or a default value if the column does not exist or is null.
	/// </summary>
	/// <param name="sqlReader"></param>
	/// <param name="index"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static string SafeGetString(this SqlReader sqlReader, int index, string defaultValue = "")
	{
		return sqlReader.SqlDataReader is not null ? sqlReader.SqlDataReader.SafeGetString(index, defaultValue) : defaultValue;
	}
	
	#endregion

	#region SafeGetGuid
	
	/// <summary>
	/// Get a SqlDataReader column value or a default value if the column does not exist or is null.
	/// </summary>
	/// <param name="sqlDataReader"></param>
	/// <param name="columnName"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static async ValueTask<Guid> SafeGetGuidAsync(this SqlDataReader sqlDataReader, string columnName, Guid defaultValue = new ())
	{
		if (sqlDataReader.ColumnExists(columnName))
		{
			if (await sqlDataReader.IsDBNullAsync(columnName))
				return defaultValue;

			if (sqlDataReader.GetFieldType(columnName) == typeof(Guid))
				return sqlDataReader.GetFieldValue<Guid?>(columnName) ?? defaultValue;
			
			return Guid.Parse(sqlDataReader.GetValue(columnName).ToString() ?? defaultValue.ToString());
		}

		return defaultValue;
	}

	/// <summary>
	/// Get a SqlDataReader column value or a default value if the column does not exist or is null.
	/// </summary>
	/// <param name="sqlDataReader"></param>
	/// <param name="columnName"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static Guid SafeGetGuid(this SqlDataReader sqlDataReader, string columnName, Guid defaultValue = new ())
	{
		if (sqlDataReader.ColumnExists(columnName))
		{
			if (sqlDataReader.IsDBNull(columnName))
				return defaultValue;

			if (sqlDataReader.GetFieldType(columnName) == typeof(Guid))
				return sqlDataReader.GetFieldValue<Guid?>(columnName) ?? defaultValue;
			
			return Guid.Parse(sqlDataReader.GetValue(columnName).ToString() ?? defaultValue.ToString());
		}

		return defaultValue;
	}

	/// <summary>
	/// Get a SqlDataReader column value or a default value if the column does not exist or is null.
	/// </summary>
	/// <param name="sqlDataReader"></param>
	/// <param name="index"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static async ValueTask<Guid> SafeGetGuidAsync(this SqlDataReader sqlDataReader, int index, Guid defaultValue = new ())
	{
		if (sqlDataReader.ColumnExists(index))
		{
			if (await sqlDataReader.IsDBNullAsync(index))
				return defaultValue;

			if (sqlDataReader.GetFieldType(index) == typeof(Guid))
				return sqlDataReader.GetFieldValue<Guid?>(index) ?? defaultValue;
			
			return Guid.Parse(sqlDataReader.GetValue(index).ToString() ?? defaultValue.ToString());
		}

		return defaultValue;
	}

	/// <summary>
	/// Get a SqlDataReader column value or a default value if the column does not exist or is null.
	/// </summary>
	/// <param name="sqlDataReader"></param>
	/// <param name="index"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static Guid SafeGetGuid(this SqlDataReader sqlDataReader, int index, Guid defaultValue = new ())
	{
		if (sqlDataReader.ColumnExists(index))
		{
			if (sqlDataReader.IsDBNull(index))
				return defaultValue;

			if (sqlDataReader.GetFieldType(index) == typeof(Guid))
				return sqlDataReader.GetFieldValue<Guid?>(index) ?? defaultValue;
			
			return Guid.Parse(sqlDataReader.GetValue(index).ToString() ?? defaultValue.ToString());
		}

		return defaultValue;
	}

	/// <summary>
	/// Get a SqlDataReader column value or a default value if the column does not exist or is null.
	/// </summary>
	/// <param name="sqlReader"></param>
	/// <param name="columnName"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static async ValueTask<Guid> SafeGetGuidAsync(this SqlReader sqlReader, string columnName, Guid defaultValue = new ())
	{
		return sqlReader.SqlDataReader is not null ? await sqlReader.SqlDataReader.SafeGetGuidAsync(columnName, defaultValue) : defaultValue;
	}

	/// <summary>
	/// Get a SqlDataReader column value or a default value if the column does not exist or is null.
	/// </summary>
	/// <param name="sqlReader"></param>
	/// <param name="columnName"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static Guid SafeGetGuid(this SqlReader sqlReader, string columnName, Guid defaultValue = new ())
	{
		return sqlReader.SqlDataReader?.SafeGetGuid(columnName, defaultValue) ?? defaultValue;
	}

	/// <summary>
	/// Get a SqlDataReader column value or a default value if the column does not exist or is null.
	/// </summary>
	/// <param name="sqlReader"></param>
	/// <param name="index"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static async ValueTask<Guid> SafeGetGuidAsync(this SqlReader sqlReader, int index, Guid defaultValue = new ())
	{
		return sqlReader.SqlDataReader is not null ? await sqlReader.SqlDataReader.SafeGetGuidAsync(index, defaultValue) : defaultValue;
	}

	/// <summary>
	/// Get a SqlDataReader column value or a default value if the column does not exist or is null.
	/// </summary>
	/// <param name="sqlReader"></param>
	/// <param name="index"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static Guid SafeGetGuid(this SqlReader sqlReader, int index, Guid defaultValue = new ())
	{
		return sqlReader.SqlDataReader?.SafeGetGuid(index, defaultValue) ?? defaultValue;
	}
	
	#endregion

	#region SafeGetInt
	
	/// <summary>
	/// Get a SqlDataReader column value or a default value if the column does not exist or is null.
	/// </summary>
	/// <param name="sqlDataReader"></param>
	/// <param name="columnName"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static async ValueTask<int> SafeGetIntAsync(this SqlDataReader sqlDataReader, string columnName, int defaultValue = 0)
	{
		if (sqlDataReader.ColumnExists(columnName))
		{
			if (await sqlDataReader.IsDBNullAsync(columnName))
				return defaultValue;
			
			return Convert.ToInt32(sqlDataReader.GetValue(columnName));
		}

		return defaultValue;
	}
	
	/// <summary>
	/// Get a SqlDataReader column value or a default value if the column does not exist or is null.
	/// </summary>
	/// <param name="sqlDataReader"></param>
	/// <param name="columnName"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static int SafeGetInt(this SqlDataReader sqlDataReader, string columnName, int defaultValue = 0)
	{
		if (sqlDataReader.ColumnExists(columnName))
		{
			if (sqlDataReader.IsDBNull(columnName))
				return defaultValue;
			
			return Convert.ToInt32(sqlDataReader.GetValue(columnName));
		}

		return defaultValue;
	}

	/// <summary>
	/// Get a SqlDataReader column value or a default value if the column does not exist or is null.
	/// </summary>
	/// <param name="sqlDataReader"></param>
	/// <param name="index"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static async ValueTask<int> SafeGetIntAsync(this SqlDataReader sqlDataReader, int index, int defaultValue = 0)
	{
		if (sqlDataReader.ColumnExists(index))
		{
			if (await sqlDataReader.IsDBNullAsync(index))
				return defaultValue;
			
			return Convert.ToInt32(sqlDataReader.GetValue(index));
		}

		return defaultValue;
	}
	
	/// <summary>
	/// Get a SqlDataReader column value or a default value if the column does not exist or is null.
	/// </summary>
	/// <param name="sqlDataReader"></param>
	/// <param name="index"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static int SafeGetInt(this SqlDataReader sqlDataReader, int index, int defaultValue = 0)
	{
		if (sqlDataReader.ColumnExists(index))
		{
			if (sqlDataReader.IsDBNull(index))
				return defaultValue;
			
			return Convert.ToInt32(sqlDataReader.GetValue(index));
		}

		return defaultValue;
	}

	/// <summary>
	/// Get a SqlDataReader column value or a default value if the column does not exist or is null.
	/// </summary>
	/// <param name="sqlReader"></param>
	/// <param name="columnName"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static async ValueTask<int> SafeGetIntAsync(this SqlReader sqlReader, string columnName, int defaultValue = 0)
	{
		return sqlReader.SqlDataReader is not null ? await sqlReader.SqlDataReader.SafeGetIntAsync(columnName, defaultValue) : defaultValue;
	}

	/// <summary>
	/// Get a SqlDataReader column value or a default value if the column does not exist or is null.
	/// </summary>
	/// <param name="sqlReader"></param>
	/// <param name="columnName"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static int SafeGetInt(this SqlReader sqlReader, string columnName, int defaultValue = 0)
	{
		return sqlReader.SqlDataReader?.SafeGetInt(columnName, defaultValue) ?? defaultValue;
	}

	/// <summary>
	/// Get a SqlDataReader column value or a default value if the column does not exist or is null.
	/// </summary>
	/// <param name="sqlReader"></param>
	/// <param name="index"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static async ValueTask<int> SafeGetIntAsync(this SqlReader sqlReader, int index, int defaultValue = 0)
	{
		return sqlReader.SqlDataReader is not null ? await sqlReader.SqlDataReader.SafeGetIntAsync(index, defaultValue) : defaultValue;
	}

	/// <summary>
	/// Get a SqlDataReader column value or a default value if the column does not exist or is null.
	/// </summary>
	/// <param name="sqlReader"></param>
	/// <param name="index"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static int SafeGetInt(this SqlReader sqlReader, int index, int defaultValue = 0)
	{
		return sqlReader.SqlDataReader?.SafeGetInt(index, defaultValue) ?? defaultValue;
	}
	
	#endregion
	
	#region SafeGetLong
	
	/// <summary>
	/// Get a SqlDataReader column value or a default value if the column does not exist or is null.
	/// </summary>
	/// <param name="sqlDataReader"></param>
	/// <param name="columnName"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static async ValueTask<long> SafeGetLongAsync(this SqlDataReader sqlDataReader, string columnName, long defaultValue = 0)
	{
		if (sqlDataReader.ColumnExists(columnName))
		{
			if (await sqlDataReader.IsDBNullAsync(columnName))
				return defaultValue;
			
			return Convert.ToInt64(sqlDataReader.GetValue(columnName));
		}

		return defaultValue;
	}
	
	/// <summary>
	/// Get a SqlDataReader column value or a default value if the column does not exist or is null.
	/// </summary>
	/// <param name="sqlDataReader"></param>
	/// <param name="columnName"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static long SafeGetLong(this SqlDataReader sqlDataReader, string columnName, long defaultValue = 0)
	{
		if (sqlDataReader.ColumnExists(columnName))
		{
			if (sqlDataReader.IsDBNull(columnName))
				return defaultValue;
			
			return Convert.ToInt64(sqlDataReader.GetValue(columnName));
		}

		return defaultValue;
	}

	/// <summary>
	/// Get a SqlDataReader column value or a default value if the column does not exist or is null.
	/// </summary>
	/// <param name="sqlDataReader"></param>
	/// <param name="index"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static async ValueTask<long> SafeGetLongAsync(this SqlDataReader sqlDataReader, int index, long defaultValue = 0)
	{
		if (sqlDataReader.ColumnExists(index))
		{
			if (await sqlDataReader.IsDBNullAsync(index))
				return defaultValue;
			
			return Convert.ToInt64(sqlDataReader.GetValue(index));
		}

		return defaultValue;
	}
	
	/// <summary>
	/// Get a SqlDataReader column value or a default value if the column does not exist or is null.
	/// </summary>
	/// <param name="sqlDataReader"></param>
	/// <param name="index"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static long SafeGetLong(this SqlDataReader sqlDataReader, int index, long defaultValue = 0)
	{
		if (sqlDataReader.ColumnExists(index))
		{
			if (sqlDataReader.IsDBNull(index))
				return defaultValue;
			
			return Convert.ToInt64(sqlDataReader.GetValue(index));
		}

		return defaultValue;
	}

	/// <summary>
	/// Get a SqlDataReader column value or a default value if the column does not exist or is null.
	/// </summary>
	/// <param name="sqlReader"></param>
	/// <param name="columnName"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static async ValueTask<long> SafeGetLongAsync(this SqlReader sqlReader, string columnName, long defaultValue = 0)
	{
		return sqlReader.SqlDataReader is not null ? await sqlReader.SqlDataReader.SafeGetLongAsync(columnName, defaultValue) : defaultValue;
	}

	/// <summary>
	/// Get a SqlDataReader column value or a default value if the column does not exist or is null.
	/// </summary>
	/// <param name="sqlReader"></param>
	/// <param name="columnName"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static long SafeGetLong(this SqlReader sqlReader, string columnName, long defaultValue = 0)
	{
		return sqlReader.SqlDataReader?.SafeGetLong(columnName, defaultValue) ?? defaultValue;
	}

	/// <summary>
	/// Get a SqlDataReader column value or a default value if the column does not exist or is null.
	/// </summary>
	/// <param name="sqlReader"></param>
	/// <param name="index"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static async ValueTask<long> SafeGetLongAsync(this SqlReader sqlReader, int index, long defaultValue = 0)
	{
		return sqlReader.SqlDataReader is not null ? await sqlReader.SqlDataReader.SafeGetLongAsync(index, defaultValue) : defaultValue;
	}

	/// <summary>
	/// Get a SqlDataReader column value or a default value if the column does not exist or is null.
	/// </summary>
	/// <param name="sqlReader"></param>
	/// <param name="index"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static long SafeGetLong(this SqlReader sqlReader, int index, long defaultValue = 0)
	{
		return sqlReader.SqlDataReader?.SafeGetLong(index, defaultValue) ?? defaultValue;
	}
	
	#endregion
	
	#region SafeGetDouble
	
	/// <summary>
	/// Get a SqlDataReader column value or a default value if the column does not exist or is null.
	/// </summary>
	/// <param name="sqlDataReader"></param>
	/// <param name="columnName"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static async ValueTask<double> SafeGetDoubleAsync(this SqlDataReader sqlDataReader, string columnName, double defaultValue = 0)
	{
		if (sqlDataReader.ColumnExists(columnName))
		{
			if (await sqlDataReader.IsDBNullAsync(columnName))
				return defaultValue;
			
			return Convert.ToDouble(sqlDataReader.GetValue(columnName));
		}

		return defaultValue;
	}
	
	/// <summary>
	/// Get a SqlDataReader column value or a default value if the column does not exist or is null.
	/// </summary>
	/// <param name="sqlDataReader"></param>
	/// <param name="columnName"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static double SafeGetDouble(this SqlDataReader sqlDataReader, string columnName, double defaultValue = 0)
	{
		if (sqlDataReader.ColumnExists(columnName))
		{
			if (sqlDataReader.IsDBNull(columnName))
				return defaultValue;
			
			return Convert.ToDouble(sqlDataReader.GetValue(columnName));
		}

		return defaultValue;
	}

	/// <summary>
	/// Get a SqlDataReader column value or a default value if the column does not exist or is null.
	/// </summary>
	/// <param name="sqlDataReader"></param>
	/// <param name="index"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static async ValueTask<double> SafeGetDoubleAsync(this SqlDataReader sqlDataReader, int index, double defaultValue = 0)
	{
		if (sqlDataReader.ColumnExists(index))
		{
			if (await sqlDataReader.IsDBNullAsync(index))
				return defaultValue;
			
			return Convert.ToDouble(sqlDataReader.GetValue(index));
		}

		return defaultValue;
	}
	
	/// <summary>
	/// Get a SqlDataReader column value or a default value if the column does not exist or is null.
	/// </summary>
	/// <param name="sqlDataReader"></param>
	/// <param name="index"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static double SafeGetDouble(this SqlDataReader sqlDataReader, int index, double defaultValue = 0)
	{
		if (sqlDataReader.ColumnExists(index))
		{
			if (sqlDataReader.IsDBNull(index))
				return defaultValue;
			
			return Convert.ToDouble(sqlDataReader.GetValue(index));
		}

		return defaultValue;
	}

	/// <summary>
	/// Get a SqlDataReader column value or a default value if the column does not exist or is null.
	/// </summary>
	/// <param name="sqlReader"></param>
	/// <param name="columnName"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static async ValueTask<double> SafeGetDoubleAsync(this SqlReader sqlReader, string columnName, double defaultValue = 0)
	{
		return sqlReader.SqlDataReader is not null ? await sqlReader.SqlDataReader.SafeGetDoubleAsync(columnName, defaultValue) : defaultValue;
	}

	/// <summary>
	/// Get a SqlDataReader column value or a default value if the column does not exist or is null.
	/// </summary>
	/// <param name="sqlReader"></param>
	/// <param name="columnName"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static double SafeGetDouble(this SqlReader sqlReader, string columnName, double defaultValue = 0)
	{
		return sqlReader.SqlDataReader?.SafeGetDouble(columnName, defaultValue) ?? defaultValue;
	}

	/// <summary>
	/// Get a SqlDataReader column value or a default value if the column does not exist or is null.
	/// </summary>
	/// <param name="sqlReader"></param>
	/// <param name="index"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static async ValueTask<double> SafeGetDoubleAsync(this SqlReader sqlReader, int index, double defaultValue = 0)
	{
		return sqlReader.SqlDataReader is not null ? await sqlReader.SqlDataReader.SafeGetDoubleAsync(index, defaultValue) : defaultValue;
	}

	/// <summary>
	/// Get a SqlDataReader column value or a default value if the column does not exist or is null.
	/// </summary>
	/// <param name="sqlReader"></param>
	/// <param name="index"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static double SafeGetDouble(this SqlReader sqlReader, int index, double defaultValue = 0)
	{
		return sqlReader.SqlDataReader?.SafeGetDouble(index, defaultValue) ?? defaultValue;
	}
	
	#endregion
	
	#region SafeGetDateTimeOffset
	
	/// <summary>
	/// Get a SqlDataReader column value or a default value if the column does not exist or is null.
	/// </summary>
	/// <param name="sqlDataReader"></param>
	/// <param name="columnName"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static async ValueTask<DateTimeOffset> SafeGetDateTimeOffsetAsync(this SqlDataReader sqlDataReader, string columnName, DateTimeOffset defaultValue = new ())
	{
		if (sqlDataReader.ColumnExists(columnName))
		{
			if (await sqlDataReader.IsDBNullAsync(columnName))
				return defaultValue;

			if (sqlDataReader.GetFieldType(columnName) == typeof(DateTimeOffset))
				return sqlDataReader.GetFieldValue<DateTimeOffset?>(columnName) ?? defaultValue;

			if (sqlDataReader.GetFieldType(columnName) == typeof(DateTime))
				return sqlDataReader.GetFieldValue<DateTime?>(columnName) ?? defaultValue;
			
			return DateTimeOffset.Parse(sqlDataReader.GetValue(columnName).ToString() ?? defaultValue.ToString());
		}

		return defaultValue;
	}

	/// <summary>
	/// Get a SqlDataReader column value or a default value if the column does not exist or is null.
	/// </summary>
	/// <param name="sqlDataReader"></param>
	/// <param name="columnName"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static DateTimeOffset SafeGetDateTimeOffset(this SqlDataReader sqlDataReader, string columnName, DateTimeOffset defaultValue = new ())
	{
		if (sqlDataReader.ColumnExists(columnName))
		{
			if (sqlDataReader.IsDBNull(columnName))
				return defaultValue;

			if (sqlDataReader.GetFieldType(columnName) == typeof(DateTimeOffset))
				return sqlDataReader.GetFieldValue<DateTimeOffset?>(columnName) ?? defaultValue;

			if (sqlDataReader.GetFieldType(columnName) == typeof(DateTime))
				return sqlDataReader.GetFieldValue<DateTime?>(columnName) ?? defaultValue;
			
			return DateTimeOffset.Parse(sqlDataReader.GetValue(columnName).ToString() ?? defaultValue.ToString());
		}

		return defaultValue;
	}

	/// <summary>
	/// Get a SqlDataReader column value or a default value if the column does not exist or is null.
	/// </summary>
	/// <param name="sqlDataReader"></param>
	/// <param name="index"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static async ValueTask<DateTimeOffset> SafeGetDateTimeOffsetAsync(this SqlDataReader sqlDataReader, int index, DateTimeOffset defaultValue = new ())
	{
		if (sqlDataReader.ColumnExists(index))
		{
			if (await sqlDataReader.IsDBNullAsync(index))
				return defaultValue;

			if (sqlDataReader.GetFieldType(index) == typeof(DateTimeOffset))
				return sqlDataReader.GetFieldValue<DateTimeOffset?>(index) ?? defaultValue;

			if (sqlDataReader.GetFieldType(index) == typeof(DateTime))
				return sqlDataReader.GetFieldValue<DateTime?>(index) ?? defaultValue;
			
			return DateTimeOffset.Parse(sqlDataReader.GetValue(index).ToString() ?? defaultValue.ToString());
		}

		return defaultValue;
	}

	/// <summary>
	/// Get a SqlDataReader column value or a default value if the column does not exist or is null.
	/// </summary>
	/// <param name="sqlDataReader"></param>
	/// <param name="index"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static DateTimeOffset SafeGetDateTimeOffset(this SqlDataReader sqlDataReader, int index, DateTimeOffset defaultValue = new ())
	{
		if (sqlDataReader.ColumnExists(index))
		{
			if (sqlDataReader.IsDBNull(index))
				return defaultValue;

			if (sqlDataReader.GetFieldType(index) == typeof(DateTimeOffset))
				return sqlDataReader.GetFieldValue<DateTimeOffset?>(index) ?? defaultValue;

			if (sqlDataReader.GetFieldType(index) == typeof(DateTime))
				return sqlDataReader.GetFieldValue<DateTime?>(index) ?? defaultValue;
			
			return DateTimeOffset.Parse(sqlDataReader.GetValue(index).ToString() ?? defaultValue.ToString());
		}

		return defaultValue;
	}

	/// <summary>
	/// Get a SqlDataReader column value or a default value if the column does not exist or is null.
	/// </summary>
	/// <param name="sqlReader"></param>
	/// <param name="columnName"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static async ValueTask<DateTimeOffset> SafeGetDateTimeOffsetAsync(this SqlReader sqlReader, string columnName, DateTimeOffset defaultValue = new ())
	{
		return sqlReader.SqlDataReader is not null ? await sqlReader.SqlDataReader.SafeGetDateTimeOffsetAsync(columnName, defaultValue) : defaultValue;
	}

	/// <summary>
	/// Get a SqlDataReader column value or a default value if the column does not exist or is null.
	/// </summary>
	/// <param name="sqlReader"></param>
	/// <param name="columnName"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static DateTimeOffset SafeGetDateTimeOffset(this SqlReader sqlReader, string columnName, DateTimeOffset defaultValue = new ())
	{
		return sqlReader.SqlDataReader?.SafeGetDateTimeOffset(columnName, defaultValue) ?? defaultValue;
	}

	/// <summary>
	/// Get a SqlDataReader column value or a default value if the column does not exist or is null.
	/// </summary>
	/// <param name="sqlReader"></param>
	/// <param name="index"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static async ValueTask<DateTimeOffset> SafeGetDateTimeOffsetAsync(this SqlReader sqlReader, int index, DateTimeOffset defaultValue = new ())
	{
		return sqlReader.SqlDataReader is not null ? await sqlReader.SqlDataReader.SafeGetDateTimeOffsetAsync(index, defaultValue) : defaultValue;
	}

	/// <summary>
	/// Get a SqlDataReader column value or a default value if the column does not exist or is null.
	/// </summary>
	/// <param name="sqlReader"></param>
	/// <param name="index"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static DateTimeOffset SafeGetDateTimeOffset(this SqlReader sqlReader, int index, DateTimeOffset defaultValue = new ())
	{
		return sqlReader.SqlDataReader?.SafeGetDateTimeOffset(index, defaultValue) ?? defaultValue;
	}
	
	#endregion
	
	#region SafeGetBoolean
	
	/// <summary>
	/// Get a SqlDataReader column value or a default value if the column does not exist or is null.
	/// </summary>
	/// <param name="sqlDataReader"></param>
	/// <param name="columnName"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static async ValueTask<bool> SafeGetBooleanAsync(this SqlDataReader sqlDataReader, string columnName, bool defaultValue = false)
	{
		if (sqlDataReader.ColumnExists(columnName))
		{
			if (await sqlDataReader.IsDBNullAsync(columnName))
				return defaultValue;

			if (sqlDataReader.GetFieldType(columnName) == typeof(bool))
				return sqlDataReader.GetFieldValue<bool>(columnName);

			if (sqlDataReader.GetFieldType(columnName) == typeof(int))
			{
				var value = sqlDataReader.GetFieldValue<int>(columnName);

				if (value is -1 or 1)
					return true;

				return false;
			}

			if (sqlDataReader.GetFieldType(columnName) == typeof(string))
			{
				var value = sqlDataReader.GetFieldValue<string>(columnName);

				if (value.ToLower() is "y" or "yes" or "true" or "t" or "on")
					return true;

				return false;
			}
		}

		return defaultValue;
	}

	/// <summary>
	/// Get a SqlDataReader column value or a default value if the column does not exist or is null.
	/// </summary>
	/// <param name="sqlDataReader"></param>
	/// <param name="columnName"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static bool SafeGetBoolean(this SqlDataReader sqlDataReader, string columnName, bool defaultValue = false)
	{
		if (sqlDataReader.ColumnExists(columnName))
		{
			if (sqlDataReader.IsDBNull(columnName))
				return defaultValue;

			if (sqlDataReader.GetFieldType(columnName) == typeof(bool))
				return sqlDataReader.GetFieldValue<bool>(columnName);

			if (sqlDataReader.GetFieldType(columnName) == typeof(int))
			{
				var value = sqlDataReader.GetFieldValue<int>(columnName);

				if (value is -1 or 1)
					return true;

				return false;
			}

			if (sqlDataReader.GetFieldType(columnName) == typeof(string))
			{
				var value = sqlDataReader.GetFieldValue<string>(columnName);

				if (value.ToLower() is "y" or "yes" or "true" or "t" or "on")
					return true;

				return false;
			}
		}

		return defaultValue;
	}

	/// <summary>
	/// Get a SqlDataReader column value or a default value if the column does not exist or is null.
	/// </summary>
	/// <param name="sqlDataReader"></param>
	/// <param name="index"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static async ValueTask<bool> SafeGetBooleanAsync(this SqlDataReader sqlDataReader, int index, bool defaultValue = false)
	{
		if (sqlDataReader.ColumnExists(index))
		{
			if (await sqlDataReader.IsDBNullAsync(index))
				return defaultValue;

			if (sqlDataReader.GetFieldType(index) == typeof(bool))
				return sqlDataReader.GetFieldValue<bool>(index);

			if (sqlDataReader.GetFieldType(index) == typeof(int))
			{
				var value = sqlDataReader.GetFieldValue<int>(index);

				if (value is -1 or 1)
					return true;

				return false;
			}

			if (sqlDataReader.GetFieldType(index) == typeof(string))
			{
				var value = sqlDataReader.GetFieldValue<string>(index);

				if (value.ToLower() is "y" or "yes" or "true" or "t" or "on")
					return true;

				return false;
			}
		}

		return defaultValue;
	}

	/// <summary>
	/// Get a SqlDataReader column value or a default value if the column does not exist or is null.
	/// </summary>
	/// <param name="sqlDataReader"></param>
	/// <param name="index"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static bool SafeGetBoolean(this SqlDataReader sqlDataReader, int index, bool defaultValue = false)
	{
		if (sqlDataReader.ColumnExists(index))
		{
			if (sqlDataReader.IsDBNull(index))
				return defaultValue;

			if (sqlDataReader.GetFieldType(index) == typeof(bool))
				return sqlDataReader.GetFieldValue<bool>(index);

			if (sqlDataReader.GetFieldType(index) == typeof(int))
			{
				var value = sqlDataReader.GetFieldValue<int>(index);

				if (value is -1 or 1)
					return true;

				return false;
			}

			if (sqlDataReader.GetFieldType(index) == typeof(string))
			{
				var value = sqlDataReader.GetFieldValue<string>(index);

				if (value.ToLower() is "y" or "yes" or "true" or "t" or "on")
					return true;

				return false;
			}
		}

		return defaultValue;
	}
	
	/// <summary>
	/// Get a SqlDataReader column value or a default value if the column does not exist or is null.
	/// </summary>
	/// <param name="sqlReader"></param>
	/// <param name="columnName"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static async ValueTask<bool> SafeGetBooleanAsync(this SqlReader sqlReader, string columnName, bool defaultValue = false)
	{
		return sqlReader.SqlDataReader is not null ? await sqlReader.SqlDataReader.SafeGetBooleanAsync(columnName, defaultValue) : defaultValue;
	}

	/// <summary>
	/// Get a SqlDataReader column value or a default value if the column does not exist or is null.
	/// </summary>
	/// <param name="sqlReader"></param>
	/// <param name="columnName"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static bool SafeGetBoolean(this SqlReader sqlReader, string columnName, bool defaultValue = false)
	{
		return sqlReader.SqlDataReader?.SafeGetBoolean(columnName, defaultValue) ?? defaultValue;
	}

	/// <summary>
	/// Get a SqlDataReader column value or a default value if the column does not exist or is null.
	/// </summary>
	/// <param name="sqlReader"></param>
	/// <param name="index"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static async ValueTask<bool> SafeGetBooleanAsync(this SqlReader sqlReader, int index, bool defaultValue = false)
	{
		return sqlReader.SqlDataReader is not null ? await sqlReader.SqlDataReader.SafeGetBooleanAsync(index, defaultValue) : defaultValue;
	}

	/// <summary>
	/// Get a SqlDataReader column value or a default value if the column does not exist or is null.
	/// </summary>
	/// <param name="sqlReader"></param>
	/// <param name="index"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static bool SafeGetBoolean(this SqlReader sqlReader, int index, bool defaultValue = false)
	{
		return sqlReader.SqlDataReader?.SafeGetBoolean(index, defaultValue) ?? defaultValue;
	}
	
	#endregion
}
