
-- Select all primary keys for a given schema and table

SELECT
    schema_name(t.schema_id) AS [SCHEMA_NAME],
    t.name AS [TABLE_NAME],
    COL_NAME(ic.OBJECT_ID,ic.column_id) AS [COLUMN_NAME],
    i.name AS [CONSTRAINT_NAME],
    his.total_bucket_count AS [BUCKET_COUNT],
    i.type_desc AS [TYPE_DESC],
    tc.CONSTRAINT_TYPE,
    0 AS [TABLE_IS_MEMORY_OPTIMIZED],
    i.is_padded,
    i.ignore_dup_key,
    i.allow_row_locks,
    i.allow_page_locks,
    ic.is_descending_key,
	(SELECT CASE idc.name WHEN NULL THEN 0 ELSE 1 END) AS [is_identity]
FROM sys.tables t
    LEFT OUTER JOIN sys.indexes AS i on t.object_id=i.object_id
    LEFT OUTER JOIN sys.index_columns AS ic ON  i.OBJECT_ID = ic.OBJECT_ID AND i.index_id = ic.index_id
    LEFT OUTER JOIN (
		SELECT *
		FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
	) tc ON tc.CONSTRAINT_NAME = i.NAME
    LEFT OUTER JOIN (
		SELECT *
		FROM sys.dm_db_xtp_hash_index_stats
	) his ON his.object_id = i.object_id AND his.index_id = i.index_id
	LEFT OUTER JOIN SYS.IDENTITY_COLUMNS idc ON idc.OBJECT_ID = t.object_id
WHERE
	OBJECT_NAME(ic.OBJECT_ID) = '{TABLE_NAME}' AND
    schema_name(t.schema_id) = '{SCHEMA_NAME}' AND
    tc.CONSTRAINT_TYPE = 'PRIMARY KEY'
ORDER BY is_identity DESC

