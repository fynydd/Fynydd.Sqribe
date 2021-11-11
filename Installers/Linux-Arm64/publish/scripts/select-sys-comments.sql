
-- List all saved text from stored procedures, views, triggers, constraints, etc.

SELECT   sys.objects.object_id, sys.schemas.name AS SchemaName,
    REPLACE(REPLACE(REPLACE(sys.syscomments.text, CHAR(10), '#'), CHAR(13), '#'), CHAR(9), '    ') AS 'Code',
    sys.objects.name AS ObjectName, 
	sys.objects.type_desc, sys.objects.type
FROM         sys.syscomments LEFT OUTER JOIN
    sys.objects ON sys.syscomments.id = sys.objects.object_id LEFT OUTER JOIN
	sys.schemas ON sys.schemas.schema_id = sys.objects.schema_id
WHERE sys.objects.is_ms_shipped = 0 AND sys.schemas.name <> 'sys'
ORDER BY sys.schemas.name,  type, sys.objects.name
