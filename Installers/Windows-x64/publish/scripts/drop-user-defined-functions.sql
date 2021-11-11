
-- Drop all user-defined functions

DECLARE @dynsql NVARCHAR(max)
SET @dynsql = ''
SELECT @dynsql += 'DROP FUNCTION ' + QUOTENAME(s.NAME) + '.' + QUOTENAME(t.NAME) + '; '
FROM (SELECT * FROM sys.objects WHERE [type] IN ('FN', 'IF', 'TF', 'FS')) t
JOIN sys.schemas s
ON t.[schema_id] = s.[schema_id]

EXEC sp_executesql @dynsql
