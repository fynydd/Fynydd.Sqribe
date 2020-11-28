
-- Configure the environment and switch back to multi user mode

SET NUMERIC_ROUNDABORT OFF
GO -- SQRIBE/GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO -- SQRIBE/GO
SET XACT_ABORT ON
GO -- SQRIBE/GO
PRINT N'Finishing Database Updates...'
GO -- SQRIBE/GO

-- Switch to multi user mode

DECLARE @sqlfinish2 NVARCHAR(max)
SET @sqlfinish2 = 'ALTER DATABASE ' + quotename(db_name()) + ' SET MULTI_USER'
EXEC sp_executesql @sqlfinish2
