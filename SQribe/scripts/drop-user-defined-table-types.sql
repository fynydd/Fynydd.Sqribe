
-- Drop all user-defined table types

DECLARE @dynsql NVARCHAR(max)
SET @dynsql = ''
SELECT @dynsql += 'DROP TYPE ' + QUOTENAME(s.NAME) + '.' + QUOTENAME(t.NAME) + '; '
FROM sys.types t
JOIN sys.schemas s
ON t.[schema_id] = s.[schema_id]
WHERE s.[name]<>'sys' AND t.is_table_type=1

EXEC sp_executesql @dynsql
