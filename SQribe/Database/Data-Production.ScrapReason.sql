SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;341e11

-- SQRIBE/TABLE;341e11
-- Adding 16 rows to Production.ScrapReason

SET IDENTITY_INSERT [Production].[ScrapReason] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ScrapReason] ([ScrapReasonID],[Name],[ModifiedDate]) VALUES (1,N'Brake assembly not as ordered','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ScrapReason] ([ScrapReasonID],[Name],[ModifiedDate]) VALUES (2,N'Color incorrect','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ScrapReason] ([ScrapReasonID],[Name],[ModifiedDate]) VALUES (3,N'Gouge in metal','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ScrapReason] ([ScrapReasonID],[Name],[ModifiedDate]) VALUES (4,N'Drill pattern incorrect','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ScrapReason] ([ScrapReasonID],[Name],[ModifiedDate]) VALUES (5,N'Drill size too large','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ScrapReason] ([ScrapReasonID],[Name],[ModifiedDate]) VALUES (6,N'Drill size too small','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ScrapReason] ([ScrapReasonID],[Name],[ModifiedDate]) VALUES (7,N'Handling damage','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ScrapReason] ([ScrapReasonID],[Name],[ModifiedDate]) VALUES (8,N'Paint process failed','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ScrapReason] ([ScrapReasonID],[Name],[ModifiedDate]) VALUES (9,N'Primer process failed','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ScrapReason] ([ScrapReasonID],[Name],[ModifiedDate]) VALUES (10,N'Seat assembly not as ordered','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ScrapReason] ([ScrapReasonID],[Name],[ModifiedDate]) VALUES (11,N'Stress test failed','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ScrapReason] ([ScrapReasonID],[Name],[ModifiedDate]) VALUES (12,N'Thermoform temperature too high','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ScrapReason] ([ScrapReasonID],[Name],[ModifiedDate]) VALUES (13,N'Thermoform temperature too low','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ScrapReason] ([ScrapReasonID],[Name],[ModifiedDate]) VALUES (14,N'Trim length too long','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ScrapReason] ([ScrapReasonID],[Name],[ModifiedDate]) VALUES (15,N'Trim length too short','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ScrapReason] ([ScrapReasonID],[Name],[ModifiedDate]) VALUES (16,N'Wheel misaligned','2008-04-30 00:00:00.000');

COMMIT TRANSACTION

SET IDENTITY_INSERT [Production].[ScrapReason] OFF

