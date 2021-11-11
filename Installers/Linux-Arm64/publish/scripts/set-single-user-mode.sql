
-- Configure the environment and switch to single user mode

SET NUMERIC_ROUNDABORT OFF
GO -- SQRIBE/GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO -- SQRIBE/GO
SET XACT_ABORT ON
GO -- SQRIBE/GO
PRINT N'Prepping Database...'
GO -- SQRIBE/GO

-- Switch to single user mode
DECLARE @sqlprep NVARCHAR(max)
SET @sqlprep = 'ALTER DATABASE ' + quotename(db_name()) + ' SET SINGLE_USER WITH ROLLBACK IMMEDIATE'
EXEC sp_executesql @sqlprep
GO -- SQRIBE/GO
