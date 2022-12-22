SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;341e11

-- SQRIBE/TABLE;341e11
-- Adding 16 rows to HumanResources.Department

SET IDENTITY_INSERT [HumanResources].[Department] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;341e11
INSERT INTO [HumanResources].[Department] ([DepartmentID],[Name],[GroupName],[ModifiedDate]) VALUES (1,N'Engineering',N'Research and Development','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [HumanResources].[Department] ([DepartmentID],[Name],[GroupName],[ModifiedDate]) VALUES (2,N'Tool Design',N'Research and Development','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [HumanResources].[Department] ([DepartmentID],[Name],[GroupName],[ModifiedDate]) VALUES (3,N'Sales',N'Sales and Marketing','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [HumanResources].[Department] ([DepartmentID],[Name],[GroupName],[ModifiedDate]) VALUES (4,N'Marketing',N'Sales and Marketing','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [HumanResources].[Department] ([DepartmentID],[Name],[GroupName],[ModifiedDate]) VALUES (5,N'Purchasing',N'Inventory Management','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [HumanResources].[Department] ([DepartmentID],[Name],[GroupName],[ModifiedDate]) VALUES (6,N'Research and Development',N'Research and Development','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [HumanResources].[Department] ([DepartmentID],[Name],[GroupName],[ModifiedDate]) VALUES (7,N'Production',N'Manufacturing','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [HumanResources].[Department] ([DepartmentID],[Name],[GroupName],[ModifiedDate]) VALUES (8,N'Production Control',N'Manufacturing','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [HumanResources].[Department] ([DepartmentID],[Name],[GroupName],[ModifiedDate]) VALUES (9,N'Human Resources',N'Executive General and Administration','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [HumanResources].[Department] ([DepartmentID],[Name],[GroupName],[ModifiedDate]) VALUES (10,N'Finance',N'Executive General and Administration','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [HumanResources].[Department] ([DepartmentID],[Name],[GroupName],[ModifiedDate]) VALUES (11,N'Information Services',N'Executive General and Administration','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [HumanResources].[Department] ([DepartmentID],[Name],[GroupName],[ModifiedDate]) VALUES (12,N'Document Control',N'Quality Assurance','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [HumanResources].[Department] ([DepartmentID],[Name],[GroupName],[ModifiedDate]) VALUES (13,N'Quality Assurance',N'Quality Assurance','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [HumanResources].[Department] ([DepartmentID],[Name],[GroupName],[ModifiedDate]) VALUES (14,N'Facilities and Maintenance',N'Executive General and Administration','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [HumanResources].[Department] ([DepartmentID],[Name],[GroupName],[ModifiedDate]) VALUES (15,N'Shipping and Receiving',N'Inventory Management','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [HumanResources].[Department] ([DepartmentID],[Name],[GroupName],[ModifiedDate]) VALUES (16,N'Executive',N'Executive General and Administration','2008-04-30 00:00:00.000');

COMMIT TRANSACTION

SET IDENTITY_INSERT [HumanResources].[Department] OFF

