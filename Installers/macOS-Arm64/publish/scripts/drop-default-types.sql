
-- Drop default types

DECLARE @sql NVARCHAR(max)
SET @sql = ''
SELECT @sql += 'DROP DEFAULT ' + QUOTENAME(schema_name(so.schema_id)) + '.' + QUOTENAME(so.name) + ';'
FROM sys.objects so
WHERE so.type = 'D' AND so.parent_object_id = 0

EXEC sp_executesql @sql
