
-- Return column schema for a specific user-defined table (UDTT)

SELECT DISTINCT
    schema_name(t.schema_id) [TABLE_SCHEMA]
    , t.name [TABLE_NAME]
    , c.name [COLUMN_NAME]
    , c.column_id [ORDINAL_POSITION]
	, xsc.SCHEMA_NAME AS [XML_SCHEMA_NAME]
	, xsc.COLLECTION_NAME AS [XML_SCHEMA_COLLECTION_NAME]
    , cc.[Default Value] [COLUMN_DEFAULT]
    , cc.[Constraint Name] [CONSTRAINT_NAME]
    , c.is_nullable [IS_NULLABLE]
	, c.is_computed AS [IS_COMPUTED]
	, ccc.definition AS [COMPUTED_VALUE]
    , c.is_rowguidcol AS [IS_ROWGUIDCOL]
    , type_name(y.system_type_id) [DATA_TYPE]
    , c.max_length [CHARACTER_MAXIMUM_LENGTH]
    , c.precision [NUMERIC_PRECISION]
    , c.scale [NUMERIC_SCALE]
    , c.scale [DATETIME_PRECISION]
	, pk.is_primary_key [IS_PRIMARY_KEY]
	, pk.type_desc [KEY_TYPE]
	, pk.is_descending_key [IS_DESCENDING_KEY]
	, pk.ignore_dup_key
    , c.is_identity
    , i.name [IDENTITY_COLUMN_NAME]
    , i.seed_value [seed_value]
    , i.increment_value [increment_value]
    , i.last_value [last_value]
    , schema_name(y.schema_id) [DOMAIN_SCHEMA]
    , type_name(y.user_type_id) [DOMAIN_NAME]
FROM sys.table_types t
    LEFT OUTER JOIN sys.columns c ON c.object_id = t.type_table_object_id
    LEFT OUTER JOIN sys.types y ON y.user_type_id = c.user_type_id
    LEFT OUTER JOIN sys.identity_columns i on i.object_id = t.type_table_object_id AND i.name = c.name
    LEFT OUTER JOIN (
    SELECT o.name AS [Constraint Name],
        cl.name AS [Column Name],
        s.name AS [Data Type],
        cl.max_length AS [Length],
        c.text AS [Default Value],
        o.object_id,
        o.parent_object_id
    FROM sys.syscomments c
        INNER JOIN sys.objects o
        ON c.id = o.object_id
        INNER JOIN sys.columns cl
        ON o.parent_object_id = cl.object_id
            AND cl.default_object_id = o.object_id
        INNER JOIN sys.systypes s
        ON cl.system_type_id = s.xtype
    WHERE o.type = 'D'
) cc on cc.parent_object_id = t.type_table_object_id and cc.object_id = c.default_object_id
    LEFT OUTER JOIN (
	SELECT c.object_id, c.name, ix.is_primary_key, ix.type_desc, ixc.is_descending_key, ix.is_padded, ix.ignore_dup_key, ix.allow_row_locks, ix.allow_page_locks
    FROM sys.columns c
        INNER JOIN sys.indexes ix on ix.object_id = c.object_id
        INNER JOIN sys.index_columns ixc on ix.object_id = ixc.object_id and ix.index_id = ixc.index_id and c.object_id = ixc.object_id and ixc.column_id = c.column_id
) pk on pk.name = c.name and pk.object_id = t.type_table_object_id
LEFT OUTER JOIN (
	SELECT
		xsc.xml_collection_id,
		ss.name AS [SCHEMA_NAME],
		xsc.name AS [COLLECTION_NAME],
		(SELECT xml_schema_namespace(ss.name,xsc.name)) AS [SCRIPT]
	FROM sys.xml_schema_collections xsc
	INNER JOIN (
		SELECT
			*
		FROM
			sys.schemas
	) ss ON xsc.schema_id = ss.schema_id
) xsc ON xsc.xml_collection_id = c.xml_collection_id
LEFT OUTER JOIN (
	SELECT *
	FROM SYS.computed_columns
) ccc ON ccc.object_id = t.type_table_object_id AND ccc.column_id = c.column_id
WHERE t.is_user_defined = 1
    AND t.is_table_type = 1
    AND t.name = '{TABLE_NAME}'
    AND schema_name(t.schema_id) = '{SCHEMA_NAME}'
ORDER BY c.column_id
