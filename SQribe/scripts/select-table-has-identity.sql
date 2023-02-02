
-- Determine if a table has an identity column
-- Returns the table name if it does

SELECT TOP 1
    OBJECT_NAME(ic.object_id) AS [TABLE_NAME]
FROM sys.identity_columns ic
INNER JOIN sys.tables t ON ic.object_id = t.object_id
WHERE
    OBJECT_NAME(ic.object_id) = '{TABLE_NAME}'
    AND schema_name(t.schema_id) = '{SCHEMA_NAME}'
