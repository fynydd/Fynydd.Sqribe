
-- List all "default type" objects with their create scripts

SELECT schema_name(so.schema_id) AS [SCHEMA_NAME], so.name, sc.text AS [CREATE_SCRIPT]
FROM sys.objects so
    LEFT OUTER JOIN sys.syscomments sc ON sc.id = so.object_id
WHERE
    so.type = 'D' 
    AND so.is_ms_shipped = 0
    AND schema_name(so.schema_id) <> 'sys'
    AND so.parent_object_id = 0
