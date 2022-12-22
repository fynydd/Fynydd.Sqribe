SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;341e11

-- SQRIBE/TABLE;341e11
-- Adding 10 rows to Sales.SalesReason

SET IDENTITY_INSERT [Sales].[SalesReason] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;341e11
INSERT INTO [Sales].[SalesReason] ([SalesReasonID],[Name],[ReasonType],[ModifiedDate]) VALUES (1,N'Price',N'Other','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Sales].[SalesReason] ([SalesReasonID],[Name],[ReasonType],[ModifiedDate]) VALUES (2,N'On Promotion',N'Promotion','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Sales].[SalesReason] ([SalesReasonID],[Name],[ReasonType],[ModifiedDate]) VALUES (3,N'Magazine Advertisement',N'Marketing','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Sales].[SalesReason] ([SalesReasonID],[Name],[ReasonType],[ModifiedDate]) VALUES (4,N'Television  Advertisement',N'Marketing','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Sales].[SalesReason] ([SalesReasonID],[Name],[ReasonType],[ModifiedDate]) VALUES (5,N'Manufacturer',N'Other','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Sales].[SalesReason] ([SalesReasonID],[Name],[ReasonType],[ModifiedDate]) VALUES (6,N'Review',N'Other','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Sales].[SalesReason] ([SalesReasonID],[Name],[ReasonType],[ModifiedDate]) VALUES (7,N'Demo Event',N'Marketing','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Sales].[SalesReason] ([SalesReasonID],[Name],[ReasonType],[ModifiedDate]) VALUES (8,N'Sponsorship',N'Marketing','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Sales].[SalesReason] ([SalesReasonID],[Name],[ReasonType],[ModifiedDate]) VALUES (9,N'Quality',N'Other','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Sales].[SalesReason] ([SalesReasonID],[Name],[ReasonType],[ModifiedDate]) VALUES (10,N'Other',N'Other','2008-04-30 00:00:00.000');

COMMIT TRANSACTION

SET IDENTITY_INSERT [Sales].[SalesReason] OFF

