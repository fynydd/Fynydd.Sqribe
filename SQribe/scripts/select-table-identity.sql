
-- Get the identity column seed, increment, and last value for a given table

SELECT
    ic.NAME AS [COLUMNNAME],
    ic.seed_value,
    ic.increment_value,
    ic.last_value,
    ic.is_not_for_replication
FROM sys.identity_columns ic
INNER JOIN sys.tables t ON ic.object_id = t.object_id
WHERE OBJECT_NAME(ic.object_id) = '{TABLE_NAME}'
AND schema_name(t.schema_id) = '{SCHEMA_NAME}'
