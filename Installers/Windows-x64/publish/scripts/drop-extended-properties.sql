
-- Drop all extended properties

DECLARE @rows int
SET @rows = (SELECT COUNT(*) FROM sys.extended_properties WHERE class = 0)

IF @rows > 0
BEGIN
	DECLARE @sql NVARCHAR(max)
	SET @sql = ''
	SELECT @sql += 'sp_dropextendedproperty @name = ' + QUOTENAME(ep.name, '''') + ';'
	FROM sys.extended_properties AS ep
	WHERE class=0

	EXEC sp_executesql @sql
END
