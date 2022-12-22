SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;341e11

-- SQRIBE/TABLE;341e11
-- Adding 6 rows to Person.AddressType

SET IDENTITY_INSERT [Person].[AddressType] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;341e11
INSERT INTO [Person].[AddressType] ([AddressTypeID],[Name],[rowguid],[ModifiedDate]) VALUES (1,N'Billing','b84f78b1-4efe-4a0e-8cb7-70e9f112f886','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Person].[AddressType] ([AddressTypeID],[Name],[rowguid],[ModifiedDate]) VALUES (2,N'Home','41bc2ff6-f0fc-475f-8eb9-cec0805aa0f2','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Person].[AddressType] ([AddressTypeID],[Name],[rowguid],[ModifiedDate]) VALUES (3,N'Main Office','8eeec28c-07a2-4fb9-ad0a-42d4a0bbc575','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Person].[AddressType] ([AddressTypeID],[Name],[rowguid],[ModifiedDate]) VALUES (4,N'Primary','24cb3088-4345-47c4-86c5-17b535133d1e','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Person].[AddressType] ([AddressTypeID],[Name],[rowguid],[ModifiedDate]) VALUES (5,N'Shipping','b29da3f8-19a3-47da-9daa-15c84f4a83a5','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Person].[AddressType] ([AddressTypeID],[Name],[rowguid],[ModifiedDate]) VALUES (6,N'Archive','a67f238a-5ba2-444b-966c-0467ed9c427f','2008-04-30 00:00:00.000');

COMMIT TRANSACTION

SET IDENTITY_INSERT [Person].[AddressType] OFF

