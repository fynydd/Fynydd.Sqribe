
-- List all user schemas in a database

SELECT s.name AS schema_name,
    s.schema_id,
    u.name AS schema_owner
FROM sys.schemas s
    INNER JOIN sys.sysusers u
    ON u.uid = s.principal_id
WHERE 
u.islogin = 1 AND
    u.name NOT IN ('sys', 'guest', 'INFORMATION_SCHEMA') AND
    s.name <> 'dbo'
