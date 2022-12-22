SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;341e11

-- SQRIBE/TABLE;341e11
-- Adding 14 rows to Production.Location

SET IDENTITY_INSERT [Production].[Location] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[Location] ([LocationID],[Name],[CostRate],[Availability],[ModifiedDate]) VALUES (1,N'Tool Crib',0.0000,0.00,'2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[Location] ([LocationID],[Name],[CostRate],[Availability],[ModifiedDate]) VALUES (2,N'Sheet Metal Racks',0.0000,0.00,'2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[Location] ([LocationID],[Name],[CostRate],[Availability],[ModifiedDate]) VALUES (3,N'Paint Shop',0.0000,0.00,'2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[Location] ([LocationID],[Name],[CostRate],[Availability],[ModifiedDate]) VALUES (4,N'Paint Storage',0.0000,0.00,'2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[Location] ([LocationID],[Name],[CostRate],[Availability],[ModifiedDate]) VALUES (5,N'Metal Storage',0.0000,0.00,'2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[Location] ([LocationID],[Name],[CostRate],[Availability],[ModifiedDate]) VALUES (6,N'Miscellaneous Storage',0.0000,0.00,'2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[Location] ([LocationID],[Name],[CostRate],[Availability],[ModifiedDate]) VALUES (7,N'Finished Goods Storage',0.0000,0.00,'2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[Location] ([LocationID],[Name],[CostRate],[Availability],[ModifiedDate]) VALUES (10,N'Frame Forming',22.5000,96.00,'2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[Location] ([LocationID],[Name],[CostRate],[Availability],[ModifiedDate]) VALUES (20,N'Frame Welding',25.0000,108.00,'2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[Location] ([LocationID],[Name],[CostRate],[Availability],[ModifiedDate]) VALUES (30,N'Debur and Polish',14.5000,120.00,'2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[Location] ([LocationID],[Name],[CostRate],[Availability],[ModifiedDate]) VALUES (40,N'Paint',15.7500,120.00,'2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[Location] ([LocationID],[Name],[CostRate],[Availability],[ModifiedDate]) VALUES (45,N'Specialized Paint',18.0000,80.00,'2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[Location] ([LocationID],[Name],[CostRate],[Availability],[ModifiedDate]) VALUES (50,N'Subassembly',12.2500,120.00,'2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[Location] ([LocationID],[Name],[CostRate],[Availability],[ModifiedDate]) VALUES (60,N'Final Assembly',12.2500,120.00,'2008-04-30 00:00:00.000');

COMMIT TRANSACTION

SET IDENTITY_INSERT [Production].[Location] OFF

