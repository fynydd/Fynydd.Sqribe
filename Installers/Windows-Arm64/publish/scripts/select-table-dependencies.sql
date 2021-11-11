
-- List all tables with an order of dependency (Level) in descending order

WITH cte (lvl,object_id,name,schema_id,schema_name) AS
  ( SELECT 0 ,
           t.object_id ,
           t.name,
       t.schema_id,
       s.name AS [SCHEMA_NAME]
   FROM sys.tables t
   JOIN sys.schemas AS s ON s.schema_id = t.schema_id
   WHERE type_desc = 'USER_TABLE'
     AND is_ms_shipped = 0
   UNION ALL SELECT cte.lvl + 1 ,
                    t.object_id ,
                    t.name,
          t.schema_id,
          s.name AS [SCHEMA_NAME]
   FROM cte
   JOIN sys.schemas AS s ON s.schema_id = cte.schema_id
   JOIN sys.tables AS t ON EXISTS
     ( SELECT NULL
      FROM sys.foreign_keys AS fk
      WHERE fk.parent_object_id = t.object_id
        AND fk.referenced_object_id = cte.object_id )
   AND t.object_id <> cte.object_id
   AND cte.lvl < 30
   WHERE t.type_desc = 'USER_TABLE'
     AND t.is_ms_shipped = 0 )

SELECT SCHEMA_NAME ,
       name AS [TABLE_NAME] ,
       MAX (lvl) AS [LEVEL] ,
     p.rows AS [ROW_COUNT]
FROM cte
JOIN sys.partitions AS p ON cte.object_id = p.object_id AND p.index_id IN ( 0, 1 )
GROUP BY SCHEMA_NAME, name, cte.object_id, p.rows
ORDER BY [LEVEL] DESC,
         [TABLE_NAME]
OPTION (MAXRECURSION 0)
