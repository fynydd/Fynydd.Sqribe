
-- List all object extended properties

SELECT exp.class AS 'CLASS', schema_name(so.schema_id) AS 'SCHEMA_NAME', sch.name AS 'SCHEMA_OBJECT_NAME', so.name AS 'OBJECT_NAME', so.type AS 'OBJECT_TYPE', so.type_desc AS 'OBJECT_TYPE_DESC', exp.major_id AS 'MAJOR_ID', exp.minor_id AS 'MINOR_ID', tr.name AS 'TRIGGER_NAME', schema_name(stab.schema_id) AS 'TABLE_SCHEMA_NAME', stab.name AS 'TABLE_NAME', scol.name AS 'COLUMN_NAME', spar.name AS 'PARAMETER_NAME', sidx.name AS 'INDEX_NAME', schema_name(xsc.schema_id) AS 'XML_SCHEMA_COLLECTION_SCHEMA_NAME', xsc.name AS 'XML_SCHEMA_COLLECTION_NAME', exp.name AS 'PROPERTY_NAME', exp.value AS 'PROPERTY_VALUE'
FROM sys.extended_properties exp
LEFT JOIN (
	SELECT * FROM sys.objects
	WHERE is_ms_shipped = 0 AND schema_name(schema_id) <> 'sys'
) so ON exp.major_id = so.object_id
LEFT JOIN (
	SELECT * FROM sys.tables
) stab ON stab.object_id = so.parent_object_id AND class = 1
LEFT JOIN (
	SELECT * FROM sys.columns
) scol ON scol.column_id = exp.minor_id AND scol.object_id = exp.major_id AND so.type_desc = 'USER_TABLE'
LEFT JOIN (
	SELECT * FROM sys.all_parameters
) spar ON spar.object_id = exp.major_id AND spar.parameter_id = exp.minor_id
LEFT JOIN (
	SELECT * FROM sys.indexes
) sidx ON sidx.object_id = exp.major_id AND sidx.index_id = exp.minor_id
LEFT JOIN (
	SELECT * FROM sys.xml_schema_collections
) xsc ON xsc.xml_collection_id = exp.major_id
LEFT JOIN (
	SELECT * FROM sys.triggers
) tr ON tr.object_id = exp.major_id
LEFT JOIN (
	SELECT * FROM sys.schemas
) sch ON sch.schema_id = exp.major_id AND class = 3
WHERE class<11
ORDER BY schema_name(so.schema_id)

