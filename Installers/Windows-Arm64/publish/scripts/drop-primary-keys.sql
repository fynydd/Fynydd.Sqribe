
-- Drop all table primary keys

DECLARE @sql NVARCHAR(max)
SET @sql = ''
SELECT @sql += ' ALTER TABLE ' + QUOTENAME(s.NAME) + '.' + QUOTENAME(t.NAME) + ' DROP CONSTRAINT ' + QUOTENAME(tc.CONSTRAINT_NAME) + ';'
FROM sys.tables t
JOIN sys.schemas s
ON t.[schema_id] = s.[schema_id]
INNER JOIN INFORMATION_SCHEMA.TABLE_CONSTRAINTS as tc
ON tc.TABLE_SCHEMA = s.name AND tc.TABLE_NAME = t.name
WHERE t.type = 'U' AND CONSTRAINT_TYPE = 'PRIMARY KEY'

EXEC sp_executesql @sql
