SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;341e11

-- SQRIBE/TABLE;341e11
-- Adding 4 rows to Production.ProductCategory

SET IDENTITY_INSERT [Production].[ProductCategory] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductCategory] ([ProductCategoryID],[Name],[rowguid],[ModifiedDate]) VALUES (1,N'Bikes','cfbda25c-df71-47a7-b81b-64ee161aa37c','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductCategory] ([ProductCategoryID],[Name],[rowguid],[ModifiedDate]) VALUES (2,N'Components','c657828d-d808-4aba-91a3-af2ce02300e9','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductCategory] ([ProductCategoryID],[Name],[rowguid],[ModifiedDate]) VALUES (3,N'Clothing','10a7c342-ca82-48d4-8a38-46a2eb089b74','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductCategory] ([ProductCategoryID],[Name],[rowguid],[ModifiedDate]) VALUES (4,N'Accessories','2be3be36-d9a2-4eee-b593-ed895d97c2a6','2008-04-30 00:00:00.000');

COMMIT TRANSACTION

SET IDENTITY_INSERT [Production].[ProductCategory] OFF

