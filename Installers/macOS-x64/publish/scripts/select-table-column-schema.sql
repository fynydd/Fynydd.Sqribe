
-- Outputs column schema for an individual table

SELECT
    tables.TABLE_SCHEMA,
    tables.TABLE_NAME,
    tables.is_memory_optimized AS [TABLE_IS_MEMORY_OPTIMIZED],
    tables.durability AS [TABLE_DURABILITY],
    tables.durability_desc AS [TABLE_DURABILITY_DESC],
    columns.name AS [COLUMN_NAME],
    columns.column_id AS [ORDINAL_POSITION],
	xsc.SCHEMA_NAME AS [XML_SCHEMA_NAME],	
	xsc.COLLECTION_NAME AS [XML_SCHEMA_COLLECTION_NAME],	
    isc.COLUMN_DEFAULT,
    isc.IS_NULLABLE,
	columns.is_computed AS [IS_COMPUTED],
	cc.definition AS [COMPUTED_VALUE],
    columns.is_rowguidcol AS [IS_ROWGUIDCOL],
    isc.DATA_TYPE,
    isc.CHARACTER_MAXIMUM_LENGTH,
    isc.CHARACTER_OCTET_LENGTH,
    isc.NUMERIC_PRECISION,
    isc.NUMERIC_PRECISION_RADIX,
    isc.NUMERIC_SCALE,
    isc.DATETIME_PRECISION,
    isc.CHARACTER_SET_CATALOG,
    isc.CHARACTER_SET_SCHEMA,
    isc.CHARACTER_SET_NAME,
    isc.COLLATION_CATALOG,
    isc.COLLATION_SCHEMA,
    isc.COLLATION_NAME,
    isc.DOMAIN_CATALOG,
    isc.DOMAIN_SCHEMA,
    isc.DOMAIN_NAME,
    idents.IDENTITY_COLUMN_NAME,
    idents.seed_value,
    idents.increment_value,
    idents.last_value,
    idents.is_not_for_replication
FROM sys.columns columns
INNER JOIN (
	SELECT
		t.object_id,
		s.Name AS [TABLE_SCHEMA],
		t.NAME AS [TABLE_NAME],
		t.is_memory_optimized,
		t.durability,
		t.durability_desc
	FROM
		sys.tables t
		INNER JOIN
		sys.schemas s ON t.schema_id = s.schema_id
) tables ON tables.object_id = columns.object_id
LEFT OUTER JOIN (
	SELECT *
	FROM INFORMATION_SCHEMA.COLUMNS
) isc ON isc.TABLE_SCHEMA = tables.TABLE_SCHEMA AND isc.TABLE_NAME = tables.TABLE_NAME AND isc.COLUMN_NAME = columns.name
LEFT OUTER JOIN (
	SELECT
        OBJECT_NAME(OBJECT_ID) AS TABLE_NAME,
        NAME AS IDENTITY_COLUMN_NAME,
        SEED_VALUE,
        INCREMENT_VALUE,
        LAST_VALUE,
        IS_NOT_FOR_REPLICATION
    FROM SYS.IDENTITY_COLUMNS
) idents ON isc.TABLE_NAME = idents.TABLE_NAME AND isc.COLUMN_NAME = idents.IDENTITY_COLUMN_NAME
LEFT OUTER JOIN (
	SELECT *
	FROM SYS.computed_columns
) cc ON cc.object_id = tables.object_id AND cc.column_id = columns.column_id
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
) xsc ON xsc.xml_collection_id = columns.xml_collection_id
WHERE
    object_name(columns.object_id) = '{TABLE_NAME}'
    AND tables.TABLE_SCHEMA = '{SCHEMA_NAME}'
ORDER BY columns.column_id
