
-- Drop all stored procedures

DECLARE @dynsql NVARCHAR(max)
SET @dynsql = ''
SELECT @dynsql += ' DROP PROCEDURE ' + QUOTENAME(s.NAME) + '.' + QUOTENAME(t.NAME) + '; '
FROM sys.procedures t
JOIN sys.schemas s
ON t.[schema_id] = s.[schema_id]

EXEC sp_executesql @dynsql
