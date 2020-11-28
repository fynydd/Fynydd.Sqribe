
-- Drop all tables

DECLARE @sql NVARCHAR(max)
SET @sql = ''
SELECT @sql += ' DROP TABLE ' + QUOTENAME(s.NAME) + '.' + QUOTENAME(t.NAME) + '; ' + CHAR(13) + CHAR(10)
FROM sys.tables t
JOIN sys.schemas s
ON t.[schema_id] = s.[schema_id]
WHERE  t.type = 'U'
AND 1=1

EXEC sp_executesql @sql
