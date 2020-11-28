
-- Drop XML schema collections

DECLARE @dynsql NVARCHAR(max)
SET @dynsql = ''
SELECT @dynsql += 'DROP XML SCHEMA COLLECTION ' + QUOTENAME(ss.NAME) + '.' + QUOTENAME(xsc.NAME) + '; '
FROM sys.xml_schema_collections xsc
INNER JOIN (
	SELECT
		*
	FROM
		sys.schemas
) ss ON xsc.schema_id = ss.schema_id
WHERE ss.name <> 'sys'

EXEC sp_executesql @dynsql
