
-- Get the identity column seed, increment, and last value for a given table

SELECT
    ic.NAME AS [COLUMNNAME],
    ic.SEED_VALUE,
    ic.INCREMENT_VALUE,
    ic.LAST_VALUE,
    ic.IS_NOT_FOR_REPLICATION
FROM SYS.IDENTITY_COLUMNS ic
INNER JOIN sys.tables t ON ic.OBJECT_ID = t.object_id
WHERE OBJECT_NAME(ic.OBJECT_ID) = '{TABLE_NAME}'
AND schema_name(t.schema_id) = '{SCHEMA_NAME}'
