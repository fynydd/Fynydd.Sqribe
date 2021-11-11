
-- Script table with CREATE scripts for stored procedures

SET NOCOUNT ON;
SELECT '-- SQRIBE/OBJ' + CHAR(13) + CHAR(10) + m.definition + 'GO -- SQRIBE/GO' + CHAR(13) + CHAR(10)
FROM sys.sql_modules AS m
    INNER JOIN sys.objects AS o
    ON m.[object_id] = o.[object_id]
WHERE o.type IN ('P')
    AND o.is_ms_shipped = 0
    AND schema_name(o.schema_id) <> 'sys'
ORDER BY o.create_date
    -- AND o.[name] NOT IN (
    -- 'sp_upgraddiagrams',
    -- 'sp_helpdiagrams',
    -- 'sp_helpdiagramdefinition',
    -- 'sp_creatediagram',
    -- 'sp_renamediagram',
    -- 'sp_alterdiagram',
    -- 'sp_dropdiagram');