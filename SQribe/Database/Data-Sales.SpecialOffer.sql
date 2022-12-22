SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;341e11

-- SQRIBE/TABLE;341e11
-- Adding 16 rows to Sales.SpecialOffer

SET IDENTITY_INSERT [Sales].[SpecialOffer] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;341e11
INSERT INTO [Sales].[SpecialOffer] ([SpecialOfferID],[Description],[DiscountPct],[Type],[Category],[StartDate],[EndDate],[MinQty],[MaxQty],[rowguid],[ModifiedDate]) VALUES (1,N'No Discount',0.0000,N'No Discount',N'No Discount','2011-05-01 00:00:00.000','2014-11-30 00:00:00.000',0,null,'0290c4f5-191f-4337-ab6b-0a2dde03cbf9','2011-04-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Sales].[SpecialOffer] ([SpecialOfferID],[Description],[DiscountPct],[Type],[Category],[StartDate],[EndDate],[MinQty],[MaxQty],[rowguid],[ModifiedDate]) VALUES (2,N'Volume Discount 11 to 14',0.0200,N'Volume Discount',N'Reseller','2011-05-31 00:00:00.000','2014-05-30 00:00:00.000',11,14,'d7542ee7-15db-4541-985c-5cc27aef26d6','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Sales].[SpecialOffer] ([SpecialOfferID],[Description],[DiscountPct],[Type],[Category],[StartDate],[EndDate],[MinQty],[MaxQty],[rowguid],[ModifiedDate]) VALUES (3,N'Volume Discount 15 to 24',0.0500,N'Volume Discount',N'Reseller','2011-05-31 00:00:00.000','2014-05-30 00:00:00.000',15,24,'4bdbcc01-8cf7-40a9-b643-40ec5b717491','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Sales].[SpecialOffer] ([SpecialOfferID],[Description],[DiscountPct],[Type],[Category],[StartDate],[EndDate],[MinQty],[MaxQty],[rowguid],[ModifiedDate]) VALUES (4,N'Volume Discount 25 to 40',0.1000,N'Volume Discount',N'Reseller','2011-05-31 00:00:00.000','2014-05-30 00:00:00.000',25,40,'504b5e85-8f3f-4ebc-9e1d-c1bc5dea9aa8','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Sales].[SpecialOffer] ([SpecialOfferID],[Description],[DiscountPct],[Type],[Category],[StartDate],[EndDate],[MinQty],[MaxQty],[rowguid],[ModifiedDate]) VALUES (5,N'Volume Discount 41 to 60',0.1500,N'Volume Discount',N'Reseller','2011-05-31 00:00:00.000','2014-05-30 00:00:00.000',41,60,'677e1d9d-944f-4e81-90e8-47eb0a82d48c','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Sales].[SpecialOffer] ([SpecialOfferID],[Description],[DiscountPct],[Type],[Category],[StartDate],[EndDate],[MinQty],[MaxQty],[rowguid],[ModifiedDate]) VALUES (6,N'Volume Discount over 60',0.2000,N'Volume Discount',N'Reseller','2011-05-31 00:00:00.000','2014-05-30 00:00:00.000',61,null,'8157f569-4e8d-46b6-9347-5d0f726a9439','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Sales].[SpecialOffer] ([SpecialOfferID],[Description],[DiscountPct],[Type],[Category],[StartDate],[EndDate],[MinQty],[MaxQty],[rowguid],[ModifiedDate]) VALUES (7,N'Mountain-100 Clearance Sale',0.3500,N'Discontinued Product',N'Reseller','2012-04-13 00:00:00.000','2012-05-29 00:00:00.000',0,null,'7df15bf5-6c05-47e7-80a4-22bd1ce59a72','2012-03-14 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Sales].[SpecialOffer] ([SpecialOfferID],[Description],[DiscountPct],[Type],[Category],[StartDate],[EndDate],[MinQty],[MaxQty],[rowguid],[ModifiedDate]) VALUES (8,N'Sport Helmet Discount-2002',0.1000,N'Seasonal Discount',N'Reseller','2012-05-30 00:00:00.000','2012-06-29 00:00:00.000',0,null,'20c5d2cc-a38f-48f8-ac9a-8f15943e52ae','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Sales].[SpecialOffer] ([SpecialOfferID],[Description],[DiscountPct],[Type],[Category],[StartDate],[EndDate],[MinQty],[MaxQty],[rowguid],[ModifiedDate]) VALUES (9,N'Road-650 Overstock',0.3000,N'Excess Inventory',N'Reseller','2012-05-30 00:00:00.000','2012-07-30 00:00:00.000',0,null,'0cf8472b-f9e6-4945-9e09-549d7dde2198','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Sales].[SpecialOffer] ([SpecialOfferID],[Description],[DiscountPct],[Type],[Category],[StartDate],[EndDate],[MinQty],[MaxQty],[rowguid],[ModifiedDate]) VALUES (10,N'Mountain Tire Sale',0.5000,N'Excess Inventory',N'Customer','2013-05-14 00:00:00.000','2013-07-29 00:00:00.000',0,null,'220444ad-2ef3-4e4c-87e9-3aa6ee39a877','2013-04-14 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Sales].[SpecialOffer] ([SpecialOfferID],[Description],[DiscountPct],[Type],[Category],[StartDate],[EndDate],[MinQty],[MaxQty],[rowguid],[ModifiedDate]) VALUES (11,N'Sport Helmet Discount-2003',0.1500,N'Seasonal Discount',N'Reseller','2013-05-30 00:00:00.000','2013-06-29 00:00:00.000',0,null,'e72dab1d-f44d-448b-9fe2-f259a2f0210d','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Sales].[SpecialOffer] ([SpecialOfferID],[Description],[DiscountPct],[Type],[Category],[StartDate],[EndDate],[MinQty],[MaxQty],[rowguid],[ModifiedDate]) VALUES (12,N'LL Road Frame Sale',0.3500,N'Excess Inventory',N'Reseller','2013-05-30 00:00:00.000','2013-07-14 00:00:00.000',0,null,'c0af1c89-9722-4235-9248-3fba4d9e5841','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Sales].[SpecialOffer] ([SpecialOfferID],[Description],[DiscountPct],[Type],[Category],[StartDate],[EndDate],[MinQty],[MaxQty],[rowguid],[ModifiedDate]) VALUES (13,N'Touring-3000 Promotion',0.1500,N'New Product',N'Reseller','2013-05-30 00:00:00.000','2013-08-29 00:00:00.000',0,null,'5061cce4-e021-45a8-9a75-dfb36cbbce85','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Sales].[SpecialOffer] ([SpecialOfferID],[Description],[DiscountPct],[Type],[Category],[StartDate],[EndDate],[MinQty],[MaxQty],[rowguid],[ModifiedDate]) VALUES (14,N'Touring-1000 Promotion',0.2000,N'New Product',N'Reseller','2013-05-30 00:00:00.000','2013-08-29 00:00:00.000',0,null,'1af84a9e-a98c-4bd9-b48f-dc2b8b6b010b','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Sales].[SpecialOffer] ([SpecialOfferID],[Description],[DiscountPct],[Type],[Category],[StartDate],[EndDate],[MinQty],[MaxQty],[rowguid],[ModifiedDate]) VALUES (15,N'Half-Price Pedal Sale',0.5000,N'Seasonal Discount',N'Customer','2013-07-14 00:00:00.000','2013-08-14 00:00:00.000',0,null,'03e3594d-6ebb-46a6-b8ee-a9289c0c2e47','2013-06-14 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Sales].[SpecialOffer] ([SpecialOfferID],[Description],[DiscountPct],[Type],[Category],[StartDate],[EndDate],[MinQty],[MaxQty],[rowguid],[ModifiedDate]) VALUES (16,N'Mountain-500 Silver Clearance Sale',0.4000,N'Discontinued Product',N'Reseller','2014-03-31 00:00:00.000','2014-05-30 00:00:00.000',0,null,'eb7cb484-bccf-4d2d-bf73-521b20014174','2014-03-01 00:00:00.000');

COMMIT TRANSACTION

SET IDENTITY_INSERT [Sales].[SpecialOffer] OFF

