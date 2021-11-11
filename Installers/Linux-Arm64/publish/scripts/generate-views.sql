
-- Script table with schema data for views

SET NOCOUNT ON;
SELECT '-- SQRIBE/OBJ' + CHAR(13) + CHAR(10) + m.definition + 'GO -- SQRIBE/GO' + CHAR(13) + CHAR(10)
FROM sys.sql_modules AS m
    INNER JOIN sys.objects AS o
    ON m.[object_id] = o.[object_id]
WHERE
	o.type IN ('V')
	AND o.is_ms_shipped = 0
	AND schema_name(o.schema_id) <> 'sys'
ORDER BY o.create_date
