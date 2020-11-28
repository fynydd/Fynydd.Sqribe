
-- Drop all table indexes

DECLARE @SchemaName VARCHAR(256)
DECLARE @TableName VARCHAR(256)
DECLARE @IndexName VARCHAR(256)
DECLARE @TSQLDropIndex NVARCHAR(MAX)

DECLARE CursorIndexes CURSOR FOR
    SELECT
        (CASE WHEN schema_id IS NULL THEN SCHEMA_NAME(VIEW_SCHEMA_ID) ELSE SCHEMA_NAME(schema_id) END) AS SCHEMA_NAME,
        (CASE WHEN schema_id IS NULL THEN VIEW_NAME ELSE TABLE_NAME END) AS OBJECT_NAME,
        final.name AS INDEX_NAME
    FROM (
        SELECT I.*, T.schema_id, T.name AS 'TABLE_NAME', V.schema_id AS 'VIEW_SCHEMA_ID', V.name AS 'VIEW_NAME', X.xml_index_type, X.secondary_type_desc, X2.name AS 'XML_PARENT_NAME', ST.no_recompute, DS.name AS 'DS_NAME', IncludedColumns
        FROM sys.indexes I
        LEFT JOIN sys.objects SO ON I.object_id = SO.object_id
        LEFT JOIN sys.tables T ON  T.object_id = I.object_id
        LEFT JOIN sys.views V ON  V.object_id = I.object_id
        LEFT JOIN sys.xml_indexes X ON I.index_id = X.index_id AND X.object_id = I.object_id
        LEFT JOIN sys.xml_indexes X2 ON X2.index_id = X.using_xml_index_id AND X2.object_id = I.object_id
        LEFT JOIN sys.stats ST ON  ST.object_id = I.object_id AND ST.stats_id = I.index_id
        LEFT JOIN sys.data_spaces DS ON  I.data_space_id = DS.data_space_id
        LEFT JOIN sys.filegroups FG ON  I.data_space_id = FG.data_space_id
        LEFT JOIN (
            SELECT *
            FROM
                (SELECT IC2.object_id, IC2.index_id,
                    STUFF((SELECT ', ' + C.name
                    FROM sys.index_columns IC1 INNER JOIN
                        sys.columns C ON C.object_id = IC1.object_id
                            AND C.column_id = IC1.column_id
                            AND IC1.is_included_column = 1
                    WHERE  IC1.object_id = IC2.object_id AND IC1.index_id = IC2.index_id
                    GROUP BY IC1.object_id, C.name, index_id
                    FOR XML PATH('')
                ), 1, 2, '') as IncludedColumns
            FROM sys.index_columns IC2
            GROUP BY IC2.object_id, IC2.index_id) tmp1
            WHERE IncludedColumns IS NOT NULL
        ) tmp2 ON tmp2.object_id = I.object_id AND tmp2.index_id = I.index_id
        WHERE I.is_unique_constraint = 0 AND I.is_primary_key = 0 AND I.type <> 0 AND SO.type <> 'IT' AND SO.type <> 'S' AND SO.is_ms_shipped = 0 --AND SCHEMA_NAME(T.schema_id) <> 'sys'
    ) final
    ORDER BY final.name, final.xml_index_type DESC

OPEN CursorIndexes
FETCH NEXT FROM CursorIndexes INTO @SchemaName,@TableName,@IndexName

SET @TSQLDropIndex = '';

WHILE @@fetch_status = 0
BEGIN
	SET @TSQLDropIndex = @TSQLDropIndex + 'IF EXISTS (SELECT * FROM sys.indexes WHERE name = ''' + @IndexName + ''')' + CHAR(13) + CHAR(10) + '  DROP INDEX ' + QUOTENAME(@IndexName) + ' ON ' + QUOTENAME(@SchemaName)+ '.' + QUOTENAME(@TableName) + ';' + CHAR(13)
	--PRINT @TSQLDropIndex
	FETCH NEXT FROM CursorIndexes INTO @SchemaName,@TableName,@IndexName
END

CLOSE CursorIndexes
DEALLOCATE CursorIndexes 

IF @TSQLDropIndex <> '' BEGIN
	--PRINT @TSQLDropIndex
	EXEC sp_executesql @TSQLDropIndex
END
