
-- Drop user schemas

DECLARE @sql NVARCHAR(max)
SET @sql = ''
SELECT @sql += ' DROP SCHEMA ' + QUOTENAME(s.name) + '; '
FROM sys.schemas s
    INNER JOIN sys.sysusers u
        ON u.uid = s.principal_id
WHERE 
u.islogin = 1 AND
u.name NOT IN ('sys', 'guest', 'INFORMATION_SCHEMA') AND s.name <> 'dbo'

EXEC sp_executesql @sql
