
-- Script table with CREATE scripts for triggers (with disable checking)

SET NOCOUNT ON;
SELECT '-- SQRIBE/OBJ' + CHAR(13) + CHAR(10) + m.definition + 'GO -- SQRIBE/GO' + CHAR(13) + CHAR(10) + 
	CASE t.is_disabled
		WHEN 1
			THEN CASE t.parent_class_desc
				WHEN 'DATABASE'
					THEN 'DISABLE TRIGGER ' + t.name + ' ON DATABASE;' + CHAR(13) + CHAR(10) + 'GO -- SQRIBE/GO' + CHAR(13) + CHAR(10)
				ELSE 'DISABLE TRIGGER ' + QUOTENAME(s.NAME) + '.' + QUOTENAME(t.NAME) + CHAR(13) + CHAR(10) + 'GO -- SQRIBE/GO' + CHAR(13) + CHAR(10)
			END
		ELSE ''
	END
FROM sys.sql_modules AS m
INNER JOIN sys.triggers AS t
	ON m.[object_id] = t.[object_id]
LEFT OUTER JOIN sys.tables tables
ON tables.object_id = t.parent_id
LEFT OUTER JOIN sys.schemas s
ON tables.[schema_id] = s.[schema_id]
WHERE
    t.is_ms_shipped = 0
    --AND schema_name(tables.schema_id) <> 'sys'
ORDER BY parent_id DESC
