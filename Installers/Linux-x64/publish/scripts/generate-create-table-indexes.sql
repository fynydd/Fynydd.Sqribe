SELECT SCHEMA_NAME(schema_id) as [SCHEMA_NAME], TABLE_NAME, name as IndexName,
    CHAR(13) + CHAR(10) + 'CREATE ' + CASE WHEN is_unique = 1 THEN 'UNIQUE ' WHEN xml_index_type = 0 THEN 'PRIMARY ' ELSE '' END +
type_desc COLLATE DATABASE_DEFAULT + ' INDEX [' +
name + '] ON [' + (CASE WHEN schema_id IS NULL THEN SCHEMA_NAME(VIEW_SCHEMA_ID) ELSE SCHEMA_NAME(schema_id) END) + '].[' + (CASE WHEN schema_id IS NULL THEN VIEW_NAME ELSE TABLE_NAME END) + '] (' + STUFF(
(SELECT ', [' + C.name + CASE WHEN IC.is_descending_key = 0 THEN ']' ELSE '] DESC' END
    FROM sys.index_columns IC INNER JOIN sys.columns C ON  IC.object_id = C.object_id AND IC.column_id = C.column_id
    WHERE IC.is_included_column = 0 AND IC.object_id = final.object_id AND IC.index_id = final.Index_id
    FOR XML PATH('')), 1, 2, '')  + ') ' +
ISNULL('INCLUDE (' + IncludedColumns + ') ', '') +
ISNULL('WHERE ' + filter_definition + ' ', '') + 
(CASE WHEN type_desc = 'XML' AND xml_index_type = 1 THEN 'USING XML INDEX [' + XML_PARENT_NAME + '] FOR ' + secondary_type_desc + ' ' ELSE '' END) + 
'WITH (PAD_INDEX = ' + CASE WHEN is_padded = 1 THEN 'ON' ELSE 'OFF' END + 
', STATISTICS_NORECOMPUTE = ' + CASE WHEN no_recompute = 0 THEN 'OFF' ELSE 'ON' END + 
', SORT_IN_TEMPDB = OFF' + 
', FILLFACTOR = ' + CONVERT(VARCHAR(5), CASE WHEN fill_factor = 0 THEN 100 ELSE fill_factor END) +
', IGNORE_DUP_KEY = ' + CASE WHEN ignore_dup_key = 1 THEN 'ON' ELSE 'OFF' END +      
', ONLINE = OFF' + 
', ALLOW_ROW_LOCKS = ' + CASE WHEN allow_row_locks = 1 THEN 'ON' ELSE 'OFF' END + 
', ALLOW_PAGE_LOCKS = ' + CASE WHEN allow_page_locks = 1 THEN 'ON' ELSE 'OFF' END + 
')' + (CASE type_desc WHEN 'XML' THEN '' ELSE ' ON [' + DS_NAME + ']' END) + CHAR(13) + CHAR(10) + 'GO -- SQRIBE/GO' + CHAR(13) + CHAR(10) as [CreateIndex]
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
ORDER BY final.name, final.xml_index_type
