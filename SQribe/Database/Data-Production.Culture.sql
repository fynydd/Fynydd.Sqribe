SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;341e11

-- SQRIBE/TABLE;341e11
-- Adding 8 rows to Production.Culture

BEGIN TRANSACTION

-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[Culture] ([CultureID],[Name],[ModifiedDate]) VALUES (N'      ',N'Invariant Language (Invariant Country)','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[Culture] ([CultureID],[Name],[ModifiedDate]) VALUES (N'ar    ',N'Arabic','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[Culture] ([CultureID],[Name],[ModifiedDate]) VALUES (N'en    ',N'English','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[Culture] ([CultureID],[Name],[ModifiedDate]) VALUES (N'es    ',N'Spanish','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[Culture] ([CultureID],[Name],[ModifiedDate]) VALUES (N'fr    ',N'French','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[Culture] ([CultureID],[Name],[ModifiedDate]) VALUES (N'he    ',N'Hebrew','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[Culture] ([CultureID],[Name],[ModifiedDate]) VALUES (N'th    ',N'Thai','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[Culture] ([CultureID],[Name],[ModifiedDate]) VALUES (N'zh-cht',N'Chinese','2008-04-30 00:00:00.000');

COMMIT TRANSACTION

