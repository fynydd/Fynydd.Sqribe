SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;341e11

-- SQRIBE/TABLE;341e11
-- Adding 5 rows to Purchasing.ShipMethod

SET IDENTITY_INSERT [Purchasing].[ShipMethod] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ShipMethod] ([ShipMethodID],[Name],[ShipBase],[ShipRate],[rowguid],[ModifiedDate]) VALUES (1,N'XRQ - TRUCK GROUND',3.9500,0.9900,'6be756d9-d7be-4463-8f2c-ae60c710d606','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ShipMethod] ([ShipMethodID],[Name],[ShipBase],[ShipRate],[rowguid],[ModifiedDate]) VALUES (2,N'ZY - EXPRESS',9.9500,1.9900,'3455079b-f773-4dc6-8f1e-2a58649c4ab8','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ShipMethod] ([ShipMethodID],[Name],[ShipBase],[ShipRate],[rowguid],[ModifiedDate]) VALUES (3,N'OVERSEAS - DELUXE',29.9500,2.9900,'22f4e461-28cf-4ace-a980-f686cf112ec8','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ShipMethod] ([ShipMethodID],[Name],[ShipBase],[ShipRate],[rowguid],[ModifiedDate]) VALUES (4,N'OVERNIGHT J-FAST',21.9500,1.2900,'107e8356-e7a8-463d-b60c-079fff467f3f','2008-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ShipMethod] ([ShipMethodID],[Name],[ShipBase],[ShipRate],[rowguid],[ModifiedDate]) VALUES (5,N'CARGO TRANSPORT 5',8.9900,1.4900,'b166019a-b134-4e76-b957-2b0490c610ed','2008-04-30 00:00:00.000');

COMMIT TRANSACTION

SET IDENTITY_INSERT [Purchasing].[ShipMethod] OFF

