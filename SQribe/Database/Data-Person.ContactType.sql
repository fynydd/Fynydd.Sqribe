SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;341e11

-- SQRIBE/TABLE;341e11
-- Adding 20 rows to Person.ContactType

SET IDENTITY_INSERT [Person].[ContactType] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;341e11
INSERT INTO [Person].[ContactType] ([ContactTypeID],[Name],[ModifiedDate]) VALUES (1,N'Accounting Manager','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Person].[ContactType] ([ContactTypeID],[Name],[ModifiedDate]) VALUES (2,N'Assistant Sales Agent','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Person].[ContactType] ([ContactTypeID],[Name],[ModifiedDate]) VALUES (3,N'Assistant Sales Representative','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Person].[ContactType] ([ContactTypeID],[Name],[ModifiedDate]) VALUES (4,N'Coordinator Foreign Markets','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Person].[ContactType] ([ContactTypeID],[Name],[ModifiedDate]) VALUES (5,N'Export Administrator','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Person].[ContactType] ([ContactTypeID],[Name],[ModifiedDate]) VALUES (6,N'International Marketing Manager','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Person].[ContactType] ([ContactTypeID],[Name],[ModifiedDate]) VALUES (7,N'Marketing Assistant','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Person].[ContactType] ([ContactTypeID],[Name],[ModifiedDate]) VALUES (8,N'Marketing Manager','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Person].[ContactType] ([ContactTypeID],[Name],[ModifiedDate]) VALUES (9,N'Marketing Representative','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Person].[ContactType] ([ContactTypeID],[Name],[ModifiedDate]) VALUES (10,N'Order Administrator','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Person].[ContactType] ([ContactTypeID],[Name],[ModifiedDate]) VALUES (11,N'Owner','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Person].[ContactType] ([ContactTypeID],[Name],[ModifiedDate]) VALUES (12,N'Owner/Marketing Assistant','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Person].[ContactType] ([ContactTypeID],[Name],[ModifiedDate]) VALUES (13,N'Product Manager','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Person].[ContactType] ([ContactTypeID],[Name],[ModifiedDate]) VALUES (14,N'Purchasing Agent','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Person].[ContactType] ([ContactTypeID],[Name],[ModifiedDate]) VALUES (15,N'Purchasing Manager','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Person].[ContactType] ([ContactTypeID],[Name],[ModifiedDate]) VALUES (16,N'Regional Account Representative','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Person].[ContactType] ([ContactTypeID],[Name],[ModifiedDate]) VALUES (17,N'Sales Agent','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Person].[ContactType] ([ContactTypeID],[Name],[ModifiedDate]) VALUES (18,N'Sales Associate','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Person].[ContactType] ([ContactTypeID],[Name],[ModifiedDate]) VALUES (19,N'Sales Manager','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Person].[ContactType] ([ContactTypeID],[Name],[ModifiedDate]) VALUES (20,N'Sales Representative','2008-04-30 00:00:00.000');

COMMIT TRANSACTION

SET IDENTITY_INSERT [Person].[ContactType] OFF

