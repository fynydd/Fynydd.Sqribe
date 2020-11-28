
-- Determine if a table has an identity column
-- Returns the table name if it does

SELECT TOP 1
    OBJECT_NAME(ic.OBJECT_ID) AS [TABLE_NAME]
FROM SYS.IDENTITY_COLUMNS ic
INNER JOIN sys.tables t ON ic.OBJECT_ID = t.object_id
WHERE
    OBJECT_NAME(ic.OBJECT_ID) = '{TABLE_NAME}'
    AND schema_name(t.schema_id) = '{SCHEMA_NAME}'
