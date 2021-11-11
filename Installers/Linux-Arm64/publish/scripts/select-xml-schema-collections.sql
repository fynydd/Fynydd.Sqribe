
-- List all XML schema collections

SELECT
	ss.name AS [SCHEMA_NAME],
    xsc.name AS [COLLECTION_NAME],
    (SELECT xml_schema_namespace(ss.name,xsc.name)) AS [SCRIPT]
FROM sys.xml_schema_collections xsc
INNER JOIN (
	SELECT
		*
	FROM
		sys.schemas
) ss ON xsc.schema_id = ss.schema_id
WHERE ss.name <> 'sys'
