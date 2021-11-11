
-- Select schema data for user-defined data types

SELECT
    st.*,
    sch.[name] AS [SCHEMA_NAME],
    type_name(st.[system_type_id]) AS [DATA_TYPE],
    so.name AS [DEFAULT_NAME]
FROM sys.types st
    INNER JOIN sys.schemas sch ON sch.[schema_id] = st.[schema_id]
    LEFT OUTER JOIN (
    SELECT *
    FROM sys.objects
    WHERE type = 'D' AND parent_object_id = 0
) so ON st.default_object_id = so.object_id
WHERE
    st.[is_user_defined] = 1
    AND schema_name(st.schema_id) <> 'sys'
    AND st.[is_table_type] = 0
