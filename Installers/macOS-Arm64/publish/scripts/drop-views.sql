
-- Drop all views

DECLARE @dynsql NVARCHAR(max)
SET @dynsql = ''
SELECT @dynsql += ' DROP VIEW ' + QUOTENAME(s.NAME) + '.' + QUOTENAME(t.NAME) + '; '
FROM sys.views t
JOIN sys.schemas s
ON t.[schema_id] = s.[schema_id]
WHERE s.NAME <> 'sys'

EXEC sp_executesql @dynsql
