
-- Drop all triggers

DECLARE @dynsql NVARCHAR(max)
SET @dynsql = ''
SELECT @dynsql += ' DROP TRIGGER ' + 
	CASE t.parent_class_desc
		WHEN 'DATABASE'
			THEN QUOTENAME(t.NAME) + ' ON DATABASE; '
		ELSE QUOTENAME(s.NAME) + '.' + QUOTENAME(t.NAME) + '; '
	END
FROM sys.triggers t
LEFT OUTER JOIN sys.tables tables
ON tables.object_id = t.parent_id
LEFT OUTER JOIN sys.schemas s
ON tables.[schema_id] = s.[schema_id]
ORDER BY t.parent_id

EXEC sp_executesql @dynsql
