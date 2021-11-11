
-- Select schame and table names for UDTTs

SELECT
    schema_name(t.schema_id) [SCHEMA_NAME]
    , t.name [TABLE_NAME]
FROM sys.table_types t
WHERE
    t.is_user_defined = 1
    AND t.is_table_type = 1
    AND schema_name(t.schema_id) <> 'sys'
