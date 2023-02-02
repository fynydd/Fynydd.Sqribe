
-- Select all primary keys for a given schema and table

SELECT
    schema_name(t.schema_id) AS [SCHEMA_NAME],
    t.name AS [TABLE_NAME],
    COL_NAME(ic.object_id,ic.column_id) AS [COLUMN_NAME],
    i.name AS [CONSTRAINT_NAME],
    his.total_bucket_count AS [BUCKET_COUNT],
    i.type_desc AS [TYPE_DESC],
    tc.CONSTRAINT_TYPE,
    t.is_memory_optimized AS [TABLE_IS_MEMORY_OPTIMIZED],
    i.is_padded,
    i.ignore_dup_key,
    i.allow_row_locks,
    i.allow_page_locks,
    ic.is_descending_key,
	(SELECT CASE idc.name WHEN NULL THEN 0 ELSE 1 END) AS [is_identity]
FROM sys.tables t
    LEFT OUTER JOIN sys.indexes AS i on t.object_id=i.object_id
    LEFT OUTER JOIN sys.index_columns AS ic ON  i.object_id = ic.object_id AND i.index_id = ic.index_id
    LEFT OUTER JOIN (
		SELECT *
		FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
	) tc ON tc.CONSTRAINT_NAME = i.NAME
    LEFT OUTER JOIN (
		SELECT *
		FROM sys.dm_db_xtp_hash_index_stats
	) his ON his.object_id = i.object_id AND his.index_id = i.index_id
	LEFT OUTER JOIN sys.identity_columns idc ON idc.object_id = t.object_id
WHERE
	OBJECT_NAME(ic.object_id) = '{TABLE_NAME}' AND
    schema_name(t.schema_id) = '{SCHEMA_NAME}' AND
    tc.CONSTRAINT_TYPE = 'PRIMARY KEY'
ORDER BY is_identity DESC

