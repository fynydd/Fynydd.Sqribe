SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;341e11

-- SQRIBE/TABLE;341e11
-- Adding 7 rows to Production.ProductModelIllustration

BEGIN TRANSACTION

-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductModelIllustration] ([ProductModelID],[IllustrationID],[ModifiedDate]) VALUES (7,3,'2014-01-09 14:41:02.167');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductModelIllustration] ([ProductModelID],[IllustrationID],[ModifiedDate]) VALUES (10,3,'2014-01-09 14:41:02.167');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductModelIllustration] ([ProductModelID],[IllustrationID],[ModifiedDate]) VALUES (47,4,'2014-01-09 14:41:02.183');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductModelIllustration] ([ProductModelID],[IllustrationID],[ModifiedDate]) VALUES (47,5,'2014-01-09 14:41:02.183');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductModelIllustration] ([ProductModelID],[IllustrationID],[ModifiedDate]) VALUES (48,4,'2014-01-09 14:41:02.183');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductModelIllustration] ([ProductModelID],[IllustrationID],[ModifiedDate]) VALUES (48,5,'2014-01-09 14:41:02.183');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductModelIllustration] ([ProductModelID],[IllustrationID],[ModifiedDate]) VALUES (67,6,'2014-01-09 14:41:02.200');

COMMIT TRANSACTION

