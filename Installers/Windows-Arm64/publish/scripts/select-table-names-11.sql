
-- Return a list of table schemas, names, row count, and inmem properties

SELECT
    [Tables].name AS [TABLE_NAME],
    SCHEMA_NAME(schema_id) AS [SCHEMA_NAME],
    SUM([Partitions].[rows]) AS [ROW_COUNT],
    0 AS [TABLE_IS_MEMORY_OPTIMIZED],
    0 AS [TABLE_DURABILITY],
    'SCHEMA_AND_DATA' AS [TABLE_DURABILITY_DESC]
FROM
    sys.tables AS [Tables]
    JOIN sys.partitions AS [Partitions] ON [Tables].[object_id] = [Partitions].[object_id] AND [Partitions].index_id IN ( 0, 1 )
-- WHERE [Tables].name = N'name of the table'
GROUP BY
    SCHEMA_NAME(schema_id), [Tables].name
ORDER BY 
    [ROW_COUNT] ASC;

