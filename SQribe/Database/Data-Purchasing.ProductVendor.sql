SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;341e11

-- SQRIBE/TABLE;341e11
-- Adding 460 rows to Purchasing.ProductVendor

BEGIN TRANSACTION

-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (1,1580,17,47.8700,50.2635,'2011-08-29 00:00:00.000',1,5,3,N'CS ','2011-08-29 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (2,1688,19,39.9200,41.9160,'2011-08-29 00:00:00.000',1,5,3,N'CTN','2011-08-29 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (4,1650,17,54.3100,57.0255,'2011-08-29 00:00:00.000',1,5,null,N'CTN','2011-08-29 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (317,1578,19,28.1700,29.5785,'2011-08-29 00:00:00.000',100,1000,300,N'EA ','2011-08-29 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (317,1678,17,25.7700,27.0585,'2011-08-25 00:00:00.000',100,1000,null,N'EA ','2011-08-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (318,1578,19,34.3800,36.0990,'2011-08-29 00:00:00.000',100,1000,null,N'EA ','2011-08-29 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (318,1678,17,31.9800,33.5790,'2011-08-25 00:00:00.000',100,1000,300,N'EA ','2011-08-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (319,1556,19,44.2100,46.4205,'2011-08-29 00:00:00.000',100,1000,300,N'EA ','2011-08-29 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (319,1578,19,46.2700,48.5835,'2011-08-29 00:00:00.000',100,1000,null,N'EA ','2011-08-29 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (319,1678,17,43.8700,46.0635,'2011-08-25 00:00:00.000',100,1000,null,N'EA ','2011-08-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (320,1514,19,47.2800,49.6440,'2011-08-29 00:00:00.000',1,5,3,N'CAN','2011-08-29 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (320,1602,17,45.2100,47.4705,'2011-08-19 00:00:00.000',1,5,null,N'CAN','2011-08-19 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (320,1604,17,43.2100,45.3705,'2011-08-25 00:00:00.000',1,5,null,N'CAN','2011-08-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (321,1514,19,42.2100,44.3205,'2011-08-29 00:00:00.000',1,5,null,N'CAN','2011-08-29 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (321,1602,17,40.7600,42.7980,'2011-08-19 00:00:00.000',1,5,null,N'CAN','2011-08-19 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (321,1604,17,38.5600,40.4880,'2011-08-25 00:00:00.000',1,5,null,N'CAN','2011-08-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (322,1514,19,27.3300,28.6965,'2011-08-24 00:00:00.000',20,100,null,N'DZ ','2011-08-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (322,1602,17,24.2100,25.4205,'2011-08-25 00:00:00.000',20,100,null,N'DZ ','2011-08-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (322,1604,17,25.1100,26.3655,'2011-08-25 00:00:00.000',20,100,null,N'DZ ','2011-08-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (323,1698,17,47.8700,50.2635,'2011-08-25 00:00:00.000',1,5,null,N'CS ','2011-08-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (325,1590,19,0.2000,0.2100,'2011-08-29 00:00:00.000',500,2000,null,N'EA ','2011-08-29 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (326,1590,19,0.2000,0.2100,'2011-08-29 00:00:00.000',500,2000,null,N'EA ','2011-08-29 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (332,1608,19,10.3000,10.8150,'2011-08-29 00:00:00.000',100,1000,null,N'EA ','2011-08-29 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (341,1598,15,39.2100,41.1705,'2011-08-26 00:00:00.000',1,5,3,N'CTN','2011-08-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (341,1614,19,45.3100,47.5755,'2011-08-28 00:00:00.000',1,5,null,N'CTN','2011-08-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (341,1622,19,45.2100,47.4705,'2011-08-22 00:00:00.000',1,5,null,N'CTN','2011-08-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (342,1598,15,37.2100,39.0705,'2011-08-26 00:00:00.000',1,5,3,N'CTN','2011-08-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (342,1614,19,43.3100,45.4755,'2011-08-28 00:00:00.000',1,5,null,N'CTN','2011-08-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (342,1622,19,43.2100,45.3705,'2011-08-22 00:00:00.000',1,5,null,N'CTN','2011-08-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (343,1598,15,41.2800,43.3440,'2011-08-26 00:00:00.000',1,5,null,N'CTN','2011-08-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (343,1614,19,47.3800,49.7490,'2011-08-28 00:00:00.000',1,5,null,N'CTN','2011-08-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (343,1622,19,47.2800,49.6440,'2011-08-22 00:00:00.000',1,5,null,N'CTN','2011-08-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (344,1598,15,37.2100,39.0705,'2011-08-07 00:00:00.000',1,5,3,N'CTN','2011-08-07 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (344,1614,19,43.3100,45.4755,'2011-08-28 00:00:00.000',1,5,null,N'CTN','2011-08-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (344,1622,19,43.2100,45.3705,'2011-08-28 00:00:00.000',1,5,null,N'CTN','2011-08-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (345,1598,15,35.2100,36.9705,'2011-08-07 00:00:00.000',1,5,3,N'CTN','2011-08-07 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (345,1614,19,41.3100,43.3755,'2011-08-28 00:00:00.000',1,5,null,N'CTN','2011-08-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (345,1622,19,41.2100,43.2705,'2011-08-28 00:00:00.000',1,5,null,N'CTN','2011-08-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (346,1598,15,39.2800,41.2440,'2011-08-13 00:00:00.000',1,5,null,N'CTN','2011-08-13 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (346,1614,19,45.3800,47.6490,'2011-08-28 00:00:00.000',1,5,null,N'CTN','2011-08-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (346,1622,19,45.2800,47.5440,'2011-08-28 00:00:00.000',1,5,null,N'CTN','2011-08-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (347,1598,15,35.2100,36.9705,'2011-08-13 00:00:00.000',1,5,3,N'CTN','2011-08-13 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (347,1614,19,41.3100,43.3755,'2011-08-17 00:00:00.000',1,5,null,N'CTN','2011-08-17 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (347,1622,19,41.2100,43.2705,'2011-08-28 00:00:00.000',1,5,null,N'CTN','2011-08-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (348,1598,15,33.2100,34.8705,'2011-08-20 00:00:00.000',1,5,3,N'CTN','2011-08-20 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (348,1614,19,39.3100,41.2755,'2011-08-17 00:00:00.000',1,5,null,N'CTN','2011-08-17 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (348,1622,19,39.2100,41.1705,'2011-08-28 00:00:00.000',1,5,null,N'CTN','2011-08-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (349,1598,15,37.2800,39.1440,'2011-08-20 00:00:00.000',1,5,3,N'CTN','2011-08-20 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (349,1614,19,43.3800,45.5490,'2011-08-22 00:00:00.000',1,5,null,N'CTN','2011-08-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (349,1622,19,43.2800,45.4440,'2011-08-18 00:00:00.000',1,5,null,N'CTN','2011-08-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (351,1544,15,5.5000,5.7750,'2011-08-26 00:00:00.000',100,1000,null,N'EA ','2011-08-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (351,1694,15,5.9000,6.1950,'2011-08-26 00:00:00.000',100,1000,300,N'EA ','2011-08-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (352,1544,15,1.1000,1.1550,'2011-08-26 00:00:00.000',100,1000,300,N'EA ','2011-08-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (352,1694,15,1.4000,1.4700,'2011-08-26 00:00:00.000',100,1000,null,N'EA ','2011-08-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (355,1508,15,1.3000,1.3650,'2011-08-26 00:00:00.000',100,1000,300,N'EA ','2011-08-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (356,1516,18,3.4300,3.6015,'2011-08-27 00:00:00.000',20,100,null,N'PAK','2011-08-27 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (356,1572,16,3.2200,3.3810,'2011-08-28 00:00:00.000',20,100,60,N'PAK','2011-08-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (357,1516,18,3.7900,3.9795,'2011-08-27 00:00:00.000',20,100,null,N'PAK','2011-08-27 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (357,1572,16,4.1100,4.3155,'2011-08-28 00:00:00.000',20,100,60,N'PAK','2011-08-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (358,1500,16,6.6500,6.9825,'2011-08-28 00:00:00.000',20,100,60,N'PAK','2011-08-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (359,1496,17,45.4100,47.6805,'2011-08-29 00:00:00.000',1,5,3,N'CS ','2011-08-29 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (359,1554,19,45.2600,47.5230,'2011-08-11 00:00:00.000',1,5,null,N'CS ','2011-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (360,1496,17,43.4100,45.5805,'2011-08-29 00:00:00.000',1,5,3,N'CS ','2011-08-29 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (360,1554,19,43.2600,45.4230,'2011-08-11 00:00:00.000',1,5,null,N'CS ','2011-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (361,1496,17,47.4800,49.8540,'2011-08-05 00:00:00.000',1,5,null,N'CS ','2011-08-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (361,1554,19,47.3300,49.6965,'2011-08-18 00:00:00.000',1,5,null,N'CS ','2011-08-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (362,1496,17,43.4100,45.5805,'2011-08-05 00:00:00.000',1,5,3,N'CS ','2011-08-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (362,1554,19,43.2600,45.4230,'2011-08-18 00:00:00.000',1,5,null,N'CS ','2011-08-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (363,1496,17,41.4100,43.4805,'2011-08-05 00:00:00.000',1,5,null,N'CS ','2011-08-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (363,1554,19,41.2600,43.3230,'2011-08-18 00:00:00.000',1,5,null,N'CS ','2011-08-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (364,1496,17,45.4800,47.7540,'2011-08-12 00:00:00.000',1,5,3,N'CS ','2011-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (364,1554,19,45.3300,47.5965,'2011-08-24 00:00:00.000',1,5,null,N'CS ','2011-08-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (365,1496,17,41.4100,43.4805,'2011-08-12 00:00:00.000',1,5,null,N'CS ','2011-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (365,1554,19,41.2600,43.3230,'2011-08-24 00:00:00.000',1,5,null,N'CS ','2011-08-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (366,1496,17,39.4100,41.3805,'2011-08-12 00:00:00.000',1,5,3,N'CS ','2011-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (366,1554,19,39.2600,41.2230,'2011-08-29 00:00:00.000',1,5,null,N'CS ','2011-08-29 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (367,1496,17,43.4800,45.6540,'2011-08-12 00:00:00.000',1,5,null,N'CS ','2011-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (367,1554,19,43.3300,45.4965,'2011-08-29 00:00:00.000',1,5,null,N'CS ','2011-08-29 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (368,1496,17,39.4100,41.3805,'2011-08-12 00:00:00.000',1,5,3,N'CS ','2011-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (368,1554,19,39.2600,41.2230,'2011-08-29 00:00:00.000',1,5,null,N'CS ','2011-08-29 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (369,1496,17,37.4100,39.2805,'2011-08-12 00:00:00.000',1,5,3,N'CS ','2011-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (369,1554,19,37.2600,39.1230,'2011-08-29 00:00:00.000',1,5,null,N'CS ','2011-08-29 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (370,1496,17,41.4800,43.5540,'2011-08-18 00:00:00.000',1,5,3,N'CS ','2011-08-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (370,1554,19,41.3300,43.3965,'2011-07-30 00:00:00.000',1,5,null,N'CS ','2011-07-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (371,1496,17,37.4100,39.2805,'2011-08-18 00:00:00.000',1,5,null,N'CS ','2011-08-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (371,1554,19,37.2600,39.1230,'2011-07-30 00:00:00.000',1,5,null,N'CS ','2011-07-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (372,1496,17,35.4100,37.1805,'2011-08-18 00:00:00.000',1,5,3,N'CS ','2011-08-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (372,1554,19,35.2600,37.0230,'2011-07-30 00:00:00.000',1,5,null,N'CS ','2011-07-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (373,1496,17,39.4800,41.4540,'2011-08-18 00:00:00.000',1,5,3,N'CS ','2011-08-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (373,1554,19,39.3300,41.2965,'2011-07-30 00:00:00.000',1,5,null,N'CS ','2011-07-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (374,1496,17,35.4100,37.1805,'2011-08-24 00:00:00.000',1,5,3,N'CS ','2011-08-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (374,1554,19,35.2600,37.0230,'2011-08-05 00:00:00.000',1,5,null,N'CS ','2011-08-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (375,1536,15,41.2800,43.3440,'2011-08-13 00:00:00.000',1,5,3,N'CTN','2011-08-13 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (375,1562,16,41.2100,43.2705,'2011-08-10 00:00:00.000',1,5,null,N'CTN','2011-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (375,1656,16,41.2100,43.2705,'2011-07-29 00:00:00.000',1,5,null,N'CTN','2011-07-29 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (376,1536,15,37.2100,39.0705,'2011-08-13 00:00:00.000',1,5,null,N'CTN','2011-08-13 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (376,1562,16,39.2100,41.1705,'2011-08-10 00:00:00.000',1,5,null,N'CTN','2011-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (376,1656,16,45.2800,47.5440,'2011-07-29 00:00:00.000',1,5,null,N'CTN','2011-07-29 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (377,1536,15,35.2100,36.9705,'2011-08-20 00:00:00.000',1,5,3,N'CTN','2011-08-20 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (377,1562,16,43.2800,45.4440,'2011-08-17 00:00:00.000',1,5,null,N'CTN','2011-08-17 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (377,1656,16,41.2100,43.2705,'2011-08-04 00:00:00.000',1,5,null,N'CTN','2011-08-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (378,1536,15,39.2800,41.2440,'2011-08-20 00:00:00.000',1,5,3,N'CTN','2011-08-20 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (378,1562,16,39.2100,41.1705,'2011-08-17 00:00:00.000',1,5,null,N'CTN','2011-08-17 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (378,1656,16,39.2100,41.1705,'2011-08-04 00:00:00.000',1,5,null,N'CTN','2011-08-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (379,1536,15,35.2100,36.9705,'2011-08-20 00:00:00.000',1,5,null,N'CTN','2011-08-20 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (379,1562,16,37.2100,39.0705,'2011-08-17 00:00:00.000',1,5,null,N'CTN','2011-08-17 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (379,1656,16,43.2800,45.4440,'2011-08-04 00:00:00.000',1,5,null,N'CTN','2011-08-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (380,1536,15,41.1600,43.2180,'2011-08-26 00:00:00.000',1,5,3,N'CTN','2011-08-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (380,1562,16,41.2800,43.3440,'2011-08-22 00:00:00.000',1,5,null,N'CTN','2011-08-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (380,1656,16,39.2100,41.1705,'2011-08-10 00:00:00.000',1,5,null,N'CTN','2011-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (381,1536,15,45.2300,47.4915,'2011-08-26 00:00:00.000',1,5,3,N'CTN','2011-08-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (381,1562,16,37.2100,39.0705,'2011-08-22 00:00:00.000',1,5,null,N'CTN','2011-08-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (381,1656,16,37.2100,39.0705,'2011-08-10 00:00:00.000',1,5,null,N'CTN','2011-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (382,1536,15,41.2100,43.2705,'2011-08-01 00:00:00.000',1,5,3,N'CTN','2011-08-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (382,1562,16,35.2100,36.9705,'2011-08-28 00:00:00.000',1,5,null,N'CTN','2011-08-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (383,1536,15,45.2800,47.5440,'2011-08-01 00:00:00.000',1,5,null,N'CTN','2011-08-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (383,1562,16,39.2800,41.2440,'2011-08-28 00:00:00.000',1,5,null,N'CTN','2011-08-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (384,1536,15,41.2100,43.2705,'2011-08-01 00:00:00.000',1,5,3,N'CTN','2011-08-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (384,1562,16,35.2100,36.9705,'2011-08-28 00:00:00.000',1,5,null,N'CTN','2011-08-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (385,1536,15,39.2100,41.1705,'2011-08-07 00:00:00.000',1,5,null,N'CTN','2011-08-07 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (385,1562,16,41.1600,43.2180,'2011-08-28 00:00:00.000',1,5,null,N'CTN','2011-08-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (386,1536,15,43.2800,45.4440,'2011-08-07 00:00:00.000',1,5,3,N'CTN','2011-08-07 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (386,1562,16,45.2300,47.4915,'2011-08-04 00:00:00.000',1,5,null,N'CTN','2011-08-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (387,1536,15,39.2100,41.1705,'2011-08-07 00:00:00.000',1,5,3,N'CTN','2011-08-07 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (387,1562,16,41.2100,43.2705,'2011-08-04 00:00:00.000',1,5,null,N'CTN','2011-08-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (388,1536,15,37.2100,39.0705,'2011-08-07 00:00:00.000',1,5,3,N'CTN','2011-08-07 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (388,1562,16,45.2800,47.5440,'2011-08-04 00:00:00.000',1,5,null,N'CTN','2011-08-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (389,1536,15,41.2800,43.3440,'2011-08-07 00:00:00.000',1,5,null,N'CTN','2011-08-07 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (389,1562,16,41.2100,43.2705,'2011-08-04 00:00:00.000',1,5,null,N'CTN','2011-08-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (390,1536,15,37.2100,39.0705,'2011-08-07 00:00:00.000',1,5,3,N'CTN','2011-08-07 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (390,1562,16,39.2100,41.1705,'2011-08-04 00:00:00.000',1,5,null,N'CTN','2011-08-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (391,1536,15,35.2100,36.9705,'2011-08-07 00:00:00.000',1,5,3,N'CTN','2011-08-07 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (391,1562,16,43.2800,45.4440,'2011-08-04 00:00:00.000',1,5,null,N'CTN','2011-08-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (392,1536,15,39.2800,41.2440,'2011-08-07 00:00:00.000',1,5,3,N'CTN','2011-08-07 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (392,1562,16,39.2100,41.1705,'2011-08-04 00:00:00.000',1,5,null,N'CTN','2011-08-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (393,1536,15,35.2100,36.9705,'2011-08-07 00:00:00.000',1,5,null,N'CTN','2011-08-07 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (393,1562,16,37.2100,39.0705,'2011-08-04 00:00:00.000',1,5,null,N'CTN','2011-08-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (394,1536,15,41.1600,43.2180,'2011-08-07 00:00:00.000',1,5,3,N'CTN','2011-08-07 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (394,1562,16,41.2800,43.3440,'2011-08-04 00:00:00.000',1,5,null,N'CTN','2011-08-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (395,1536,15,45.2300,47.4915,'2011-08-07 00:00:00.000',1,5,3,N'CTN','2011-08-07 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (395,1562,16,37.2100,39.0705,'2011-08-04 00:00:00.000',1,5,null,N'CTN','2011-08-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (396,1536,15,41.2100,43.2705,'2011-08-07 00:00:00.000',1,5,null,N'CTN','2011-08-07 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (396,1562,16,35.2100,36.9705,'2011-08-04 00:00:00.000',1,5,null,N'CTN','2011-08-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (397,1536,15,45.2800,47.5440,'2011-08-07 00:00:00.000',1,5,null,N'CTN','2011-08-07 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (397,1562,16,39.2800,41.2440,'2011-08-04 00:00:00.000',1,5,null,N'CTN','2011-08-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (402,1648,15,45.2100,47.4705,'2011-08-26 00:00:00.000',1,5,3,N'CTN','2011-08-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (403,1616,17,45.2100,47.4705,'2011-08-06 00:00:00.000',1,5,3,N'CAN','2011-08-06 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (403,1672,15,43.2100,45.3705,'2011-08-20 00:00:00.000',1,5,3,N'CAN','2011-08-20 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (403,1686,19,43.2800,45.4440,'2011-08-28 00:00:00.000',1,5,null,N'CAN','2011-08-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (404,1616,17,43.2100,45.3705,'2011-08-06 00:00:00.000',1,5,3,N'CAN','2011-08-06 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (404,1672,15,47.2800,49.6440,'2011-08-20 00:00:00.000',1,5,3,N'CAN','2011-08-20 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (404,1686,19,39.2100,41.1705,'2011-08-28 00:00:00.000',1,5,null,N'CAN','2011-08-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (405,1616,17,47.2800,49.6440,'2011-08-12 00:00:00.000',1,5,3,N'CAN','2011-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (405,1672,15,43.2100,45.3705,'2011-08-20 00:00:00.000',1,5,3,N'CAN','2011-08-20 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (405,1686,19,37.2100,39.0705,'2011-08-04 00:00:00.000',1,5,null,N'CAN','2011-08-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (406,1616,17,43.2100,45.3705,'2011-08-12 00:00:00.000',1,5,3,N'CAN','2011-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (406,1672,15,41.2100,43.2705,'2011-08-20 00:00:00.000',1,5,3,N'CAN','2011-08-20 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (406,1686,19,41.2800,43.3440,'2011-08-04 00:00:00.000',1,5,null,N'CAN','2011-08-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (407,1616,17,41.2100,43.2705,'2011-08-12 00:00:00.000',1,5,null,N'CAN','2011-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (407,1672,15,45.2800,47.5440,'2011-08-20 00:00:00.000',1,5,null,N'CAN','2011-08-20 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (407,1686,19,37.2100,39.0705,'2011-08-04 00:00:00.000',1,5,null,N'CAN','2011-08-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (408,1616,17,45.2800,47.5440,'2011-08-19 00:00:00.000',1,5,3,N'CAN','2011-08-19 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (408,1672,15,41.2100,43.2705,'2011-08-20 00:00:00.000',1,5,3,N'CAN','2011-08-20 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (408,1686,19,35.2100,36.9705,'2011-08-10 00:00:00.000',1,5,null,N'CAN','2011-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (409,1616,17,41.2100,43.2705,'2011-08-19 00:00:00.000',1,5,3,N'CAN','2011-08-19 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (409,1672,15,39.2100,41.1705,'2011-08-26 00:00:00.000',1,5,3,N'CAN','2011-08-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (409,1686,19,39.2800,41.2440,'2011-08-10 00:00:00.000',1,5,null,N'CAN','2011-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (410,1616,17,39.2100,41.1705,'2011-08-25 00:00:00.000',1,5,3,N'CAN','2011-08-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (410,1686,19,35.2100,36.9705,'2011-08-10 00:00:00.000',1,5,null,N'CAN','2011-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (411,1616,17,43.2800,45.4440,'2011-08-25 00:00:00.000',1,5,null,N'CAN','2011-08-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (411,1686,19,33.2100,34.8705,'2011-08-10 00:00:00.000',1,5,null,N'CAN','2011-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (412,1616,17,39.2100,41.1705,'2011-08-25 00:00:00.000',1,5,3,N'CAN','2011-08-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (412,1686,19,37.2800,39.1440,'2011-08-10 00:00:00.000',1,5,null,N'CAN','2011-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (413,1616,17,37.2100,39.0705,'2011-08-25 00:00:00.000',1,5,null,N'CAN','2011-08-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (413,1686,19,45.3100,47.5755,'2011-08-10 00:00:00.000',1,5,null,N'CAN','2011-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (414,1616,17,41.2800,43.3440,'2011-07-24 00:00:00.000',1,5,3,N'CAN','2011-07-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (414,1686,19,43.3100,45.4755,'2011-08-17 00:00:00.000',1,5,null,N'CAN','2011-08-17 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (415,1616,17,37.2100,39.0705,'2011-07-24 00:00:00.000',1,5,3,N'CAN','2011-07-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (415,1686,19,47.3800,49.7490,'2011-08-17 00:00:00.000',1,5,null,N'CAN','2011-08-17 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (416,1616,17,35.2100,36.9705,'2011-07-24 00:00:00.000',1,5,3,N'CAN','2011-07-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (416,1686,19,43.3100,45.4755,'2011-08-17 00:00:00.000',1,5,null,N'CAN','2011-08-17 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (417,1616,17,39.2800,41.2440,'2011-07-24 00:00:00.000',1,5,null,N'CAN','2011-07-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (417,1686,19,41.3100,43.3755,'2011-08-17 00:00:00.000',1,5,null,N'CAN','2011-08-17 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (418,1616,17,35.2100,36.9705,'2011-07-31 00:00:00.000',1,5,3,N'CAN','2011-07-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (418,1686,19,45.3800,47.6490,'2011-08-22 00:00:00.000',1,5,null,N'CAN','2011-08-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (419,1616,17,33.2100,34.8705,'2011-07-31 00:00:00.000',1,5,3,N'CAN','2011-07-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (419,1686,19,41.3100,43.3755,'2011-08-22 00:00:00.000',1,5,null,N'CAN','2011-08-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (420,1616,17,37.2800,39.1440,'2011-07-31 00:00:00.000',1,5,3,N'CAN','2011-07-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (420,1686,19,39.3100,41.2755,'2011-08-22 00:00:00.000',1,5,null,N'CAN','2011-08-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (421,1616,17,45.3100,47.5755,'2011-07-31 00:00:00.000',1,5,3,N'CAN','2011-07-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (421,1686,19,43.3800,45.5490,'2011-08-22 00:00:00.000',1,5,null,N'CAN','2011-08-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (422,1492,17,45.2600,47.5230,'2011-08-12 00:00:00.000',1,5,null,N'CTN','2011-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (422,1534,19,45.4100,47.6805,'2011-08-17 00:00:00.000',1,5,null,N'CTN','2011-08-17 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (422,1666,16,45.4100,47.6805,'2011-08-21 00:00:00.000',1,5,null,N'CTN','2011-08-21 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (423,1492,17,43.2600,45.4230,'2011-08-12 00:00:00.000',1,5,null,N'CTN','2011-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (423,1534,19,43.4100,45.5805,'2011-08-17 00:00:00.000',1,5,null,N'CTN','2011-08-17 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (423,1666,16,43.4100,45.5805,'2011-08-21 00:00:00.000',1,5,null,N'CTN','2011-08-21 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (424,1492,17,47.3300,49.6965,'2011-08-19 00:00:00.000',1,5,null,N'CTN','2011-08-19 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (424,1534,19,47.4800,49.8540,'2011-08-17 00:00:00.000',1,5,null,N'CTN','2011-08-17 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (424,1666,16,47.4800,49.8540,'2011-08-27 00:00:00.000',1,5,null,N'CTN','2011-08-27 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (425,1492,17,43.2600,45.4230,'2011-08-19 00:00:00.000',1,5,null,N'CTN','2011-08-19 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (425,1534,19,43.4100,45.5805,'2011-08-17 00:00:00.000',1,5,null,N'CTN','2011-08-17 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (425,1666,16,43.4100,45.5805,'2011-08-27 00:00:00.000',1,5,null,N'CTN','2011-08-27 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (426,1492,17,41.2600,43.3230,'2011-08-19 00:00:00.000',1,5,null,N'CTN','2011-08-19 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (426,1534,19,41.4100,43.4805,'2011-08-17 00:00:00.000',1,5,null,N'CTN','2011-08-17 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (426,1666,16,41.4100,43.4805,'2011-08-27 00:00:00.000',1,5,null,N'CTN','2011-08-27 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (427,1492,17,45.3300,47.5965,'2011-08-25 00:00:00.000',1,5,null,N'CTN','2011-08-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (427,1534,19,45.4800,47.7540,'2011-08-22 00:00:00.000',1,5,null,N'CTN','2011-08-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (427,1666,16,45.4800,47.7540,'2011-08-03 00:00:00.000',1,5,null,N'CTN','2011-08-03 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (428,1492,17,41.2600,43.3230,'2011-08-25 00:00:00.000',1,5,null,N'CTN','2011-08-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (428,1534,19,41.4100,43.4805,'2011-08-22 00:00:00.000',1,5,null,N'CTN','2011-08-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (428,1666,16,41.4100,43.4805,'2011-08-03 00:00:00.000',1,5,null,N'CTN','2011-08-03 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (429,1492,17,39.2600,41.2230,'2011-07-24 00:00:00.000',1,5,null,N'CTN','2011-07-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (429,1534,19,39.4100,41.3805,'2011-08-22 00:00:00.000',1,5,null,N'CTN','2011-08-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (429,1666,16,39.4100,41.3805,'2011-08-03 00:00:00.000',1,5,null,N'CTN','2011-08-03 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (430,1492,17,43.3300,45.4965,'2011-07-24 00:00:00.000',1,5,null,N'CTN','2011-07-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (430,1534,19,43.4800,45.6540,'2011-08-22 00:00:00.000',1,5,null,N'CTN','2011-08-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (430,1666,16,43.4800,45.6540,'2011-08-03 00:00:00.000',1,5,null,N'CTN','2011-08-03 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (431,1492,17,39.2600,41.2230,'2011-07-24 00:00:00.000',1,5,null,N'CTN','2011-07-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (431,1534,19,39.4100,41.3805,'2011-08-22 00:00:00.000',1,5,null,N'CTN','2011-08-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (431,1666,16,39.4100,41.3805,'2011-08-03 00:00:00.000',1,5,null,N'CTN','2011-08-03 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (432,1492,17,37.2600,39.1230,'2011-07-24 00:00:00.000',1,5,null,N'CTN','2011-07-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (432,1534,19,37.4100,39.2805,'2011-08-22 00:00:00.000',1,5,null,N'CTN','2011-08-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (432,1666,16,37.4100,39.2805,'2011-08-03 00:00:00.000',1,5,null,N'CTN','2011-08-03 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (433,1492,17,41.3300,43.3965,'2011-07-31 00:00:00.000',1,5,null,N'CTN','2011-07-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (433,1534,19,41.4800,43.5540,'2011-08-28 00:00:00.000',1,5,null,N'CTN','2011-08-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (433,1666,16,41.4800,43.5540,'2011-08-10 00:00:00.000',1,5,null,N'CTN','2011-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (434,1492,17,37.2600,39.1230,'2011-07-31 00:00:00.000',1,5,null,N'CTN','2011-07-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (434,1534,19,37.4100,39.2805,'2011-08-28 00:00:00.000',1,5,null,N'CTN','2011-08-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (434,1666,16,37.4100,39.2805,'2011-08-10 00:00:00.000',1,5,null,N'CTN','2011-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (435,1492,17,35.2600,37.0230,'2011-07-31 00:00:00.000',1,5,null,N'CTN','2011-07-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (435,1534,19,35.4100,37.1805,'2011-08-28 00:00:00.000',1,5,null,N'CTN','2011-08-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (435,1666,16,35.4100,37.1805,'2011-08-10 00:00:00.000',1,5,null,N'CTN','2011-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (436,1492,17,39.3300,41.2965,'2011-07-31 00:00:00.000',1,5,null,N'CTN','2011-07-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (436,1534,19,39.4800,41.4540,'2011-08-28 00:00:00.000',1,5,null,N'CTN','2011-08-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (436,1666,16,39.4800,41.4540,'2011-08-10 00:00:00.000',1,5,null,N'CTN','2011-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (437,1492,17,35.2600,37.0230,'2011-08-06 00:00:00.000',1,5,null,N'CTN','2011-08-06 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (437,1534,19,35.4100,37.1805,'2011-08-10 00:00:00.000',1,5,null,N'CTN','2011-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (437,1666,16,35.4100,37.1805,'2011-08-17 00:00:00.000',1,5,null,N'CTN','2011-08-17 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (438,1540,17,39.2600,41.2230,'2011-08-25 00:00:00.000',1,5,null,N'CTN','2011-08-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (438,1656,16,45.4100,47.6805,'2011-08-17 00:00:00.000',1,5,null,N'CTN','2011-08-17 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (439,1540,17,43.3300,45.4965,'2011-08-25 00:00:00.000',1,5,null,N'CTN','2011-08-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (439,1656,16,43.4100,45.5805,'2011-08-17 00:00:00.000',1,5,null,N'CTN','2011-08-17 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (440,1540,17,39.2600,41.2230,'2011-08-06 00:00:00.000',1,5,null,N'CTN','2011-08-06 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (440,1656,16,47.4800,49.8540,'2011-08-17 00:00:00.000',1,5,null,N'CTN','2011-08-17 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (441,1540,17,37.2600,39.1230,'2011-08-06 00:00:00.000',1,5,null,N'CTN','2011-08-06 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (441,1656,16,43.4100,45.5805,'2011-08-17 00:00:00.000',1,5,null,N'CTN','2011-08-17 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (442,1540,17,41.3300,43.3965,'2011-08-06 00:00:00.000',1,5,null,N'CTN','2011-08-06 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (442,1656,16,41.4100,43.4805,'2011-08-22 00:00:00.000',1,5,null,N'CTN','2011-08-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (443,1540,17,37.2600,39.1230,'2011-08-06 00:00:00.000',1,5,null,N'CTN','2011-08-06 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (443,1656,16,45.4800,47.7540,'2011-08-22 00:00:00.000',1,5,null,N'CTN','2011-08-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (444,1540,17,35.2600,37.0230,'2011-08-12 00:00:00.000',1,5,null,N'CTN','2011-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (444,1656,16,41.4100,43.4805,'2011-08-22 00:00:00.000',1,5,null,N'CTN','2011-08-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (445,1540,17,39.3300,41.2965,'2011-08-12 00:00:00.000',1,5,null,N'CTN','2011-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (445,1656,16,39.4100,41.3805,'2011-08-28 00:00:00.000',1,5,null,N'CTN','2011-08-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (446,1540,17,35.2600,37.0230,'2011-08-12 00:00:00.000',1,5,null,N'CTN','2011-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (446,1656,16,43.4800,45.6540,'2011-08-28 00:00:00.000',1,5,null,N'CTN','2011-08-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (447,1540,17,45.4100,47.6805,'2011-08-12 00:00:00.000',1,5,null,N'CTN','2011-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (447,1656,16,39.4100,41.3805,'2011-08-28 00:00:00.000',1,5,null,N'CTN','2011-08-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (448,1540,17,43.4100,45.5805,'2011-08-19 00:00:00.000',1,5,null,N'CTN','2011-08-19 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (448,1656,16,37.4100,39.2805,'2011-08-28 00:00:00.000',1,5,null,N'CTN','2011-08-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (449,1540,17,47.4800,49.8540,'2011-08-19 00:00:00.000',1,5,null,N'CTN','2011-08-19 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (449,1656,16,41.4800,43.5540,'2011-08-28 00:00:00.000',1,5,null,N'CTN','2011-08-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (450,1540,17,43.4100,45.5805,'2011-08-19 00:00:00.000',1,5,null,N'CTN','2011-08-19 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (450,1656,16,37.4100,39.2805,'2011-07-22 00:00:00.000',1,5,null,N'CTN','2011-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (451,1540,17,41.4100,43.4805,'2011-08-19 00:00:00.000',1,5,null,N'CTN','2011-08-19 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (451,1656,16,35.4100,37.1805,'2011-07-22 00:00:00.000',1,5,null,N'CTN','2011-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (452,1540,17,45.4800,47.7540,'2011-08-19 00:00:00.000',1,5,null,N'CTN','2011-08-19 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (452,1656,16,39.4800,41.4540,'2011-07-22 00:00:00.000',1,5,null,N'CTN','2011-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (453,1540,17,41.4100,43.4805,'2011-08-19 00:00:00.000',1,5,null,N'CTN','2011-08-19 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (453,1656,16,35.4100,37.1805,'2011-07-22 00:00:00.000',1,5,null,N'CTN','2011-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (454,1540,17,39.4100,41.3805,'2011-08-19 00:00:00.000',1,5,null,N'CTN','2011-08-19 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (454,1656,16,45.2600,47.5230,'2011-07-22 00:00:00.000',1,5,null,N'CTN','2011-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (455,1540,17,43.4800,45.6540,'2011-08-19 00:00:00.000',1,5,null,N'CTN','2011-08-19 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (455,1656,16,43.2600,45.4230,'2011-07-22 00:00:00.000',1,5,null,N'CTN','2011-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (456,1540,17,39.4100,41.3805,'2011-08-19 00:00:00.000',1,5,null,N'CTN','2011-08-19 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (456,1656,16,47.3300,49.6965,'2011-07-22 00:00:00.000',1,5,null,N'CTN','2011-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (457,1540,17,37.4100,39.2805,'2011-08-19 00:00:00.000',1,5,null,N'CTN','2011-08-19 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (457,1656,16,43.2600,45.4230,'2011-07-22 00:00:00.000',1,5,null,N'CTN','2011-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (458,1540,17,41.4800,43.5540,'2011-08-19 00:00:00.000',1,5,null,N'CTN','2011-08-19 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (458,1656,16,41.2600,43.3230,'2011-07-22 00:00:00.000',1,5,null,N'CTN','2011-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (459,1540,17,37.4100,39.2805,'2011-08-19 00:00:00.000',1,5,null,N'CTN','2011-08-19 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (459,1656,16,45.3300,47.5965,'2011-07-22 00:00:00.000',1,5,null,N'CTN','2011-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (460,1540,17,35.4100,37.1805,'2011-08-19 00:00:00.000',1,5,null,N'CTN','2011-08-19 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (460,1656,16,41.2600,43.3230,'2011-07-22 00:00:00.000',1,5,null,N'CTN','2011-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (461,1540,17,39.4800,41.4540,'2011-08-19 00:00:00.000',1,5,null,N'DZ ','2011-08-19 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (462,1510,18,45.4100,47.6805,'2011-08-27 00:00:00.000',1,5,3,N'CS ','2011-08-27 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (463,1582,18,45.2600,47.5230,'2011-08-27 00:00:00.000',1,5,null,N'CAN','2011-08-27 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (464,1582,18,43.2600,45.4230,'2011-08-27 00:00:00.000',1,5,null,N'CAN','2011-08-27 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (465,1582,18,47.3300,49.6965,'2011-08-27 00:00:00.000',1,5,null,N'CAN','2011-08-27 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (466,1582,18,43.2600,45.4230,'2011-08-27 00:00:00.000',1,5,null,N'CAN','2011-08-27 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (467,1582,18,41.2600,43.3230,'2011-08-08 00:00:00.000',1,5,null,N'CAN','2011-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (468,1582,18,45.3300,47.5965,'2011-08-14 00:00:00.000',1,5,null,N'CAN','2011-08-14 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (469,1582,18,41.2600,43.3230,'2011-08-14 00:00:00.000',1,5,null,N'CAN','2011-08-14 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (470,1582,18,39.2600,41.2230,'2011-08-14 00:00:00.000',1,5,null,N'CAN','2011-08-14 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (471,1582,18,43.3300,45.4965,'2011-08-14 00:00:00.000',1,5,null,N'CAN','2011-08-14 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (472,1582,18,39.2600,41.2230,'2011-08-14 00:00:00.000',1,5,null,N'CAN','2011-08-14 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (473,1582,18,37.2600,39.1230,'2011-08-21 00:00:00.000',1,5,null,N'CAN','2011-08-21 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (474,1582,18,41.3300,43.3965,'2011-08-21 00:00:00.000',1,5,null,N'CAN','2011-08-21 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (475,1582,18,37.2600,39.1230,'2011-08-21 00:00:00.000',1,5,null,N'CAN','2011-08-21 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (476,1568,15,15.1300,15.8865,'2011-08-20 00:00:00.000',100,1000,300,N'EA ','2011-08-20 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (477,1568,15,11.1100,11.6655,'2011-08-20 00:00:00.000',100,1000,300,N'EA ','2011-08-20 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (478,1568,15,10.5600,11.0880,'2011-08-26 00:00:00.000',100,1000,null,N'EA ','2011-08-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (479,1568,15,15.1300,15.8865,'2011-08-26 00:00:00.000',100,1000,300,N'EA ','2011-08-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (480,1568,15,11.1100,11.6655,'2011-08-26 00:00:00.000',100,1000,null,N'EA ','2011-08-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (481,1568,15,10.5600,11.0880,'2011-08-13 00:00:00.000',100,1000,300,N'EA ','2011-08-13 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (482,1568,15,8.3400,8.7570,'2011-08-13 00:00:00.000',100,1000,300,N'EA ','2011-08-13 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (483,1568,15,9.2300,9.6915,'2011-08-13 00:00:00.000',100,1000,null,N'EA ','2011-08-13 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (484,1568,15,6.5500,6.8775,'2011-08-13 00:00:00.000',100,1000,300,N'EA ','2011-08-13 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (485,1568,15,7.4300,7.8015,'2011-08-13 00:00:00.000',100,1000,300,N'EA ','2011-08-13 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (486,1568,15,8.3400,8.7570,'2011-08-13 00:00:00.000',100,1000,null,N'EA ','2011-08-13 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (487,1568,15,5.5300,5.8065,'2011-08-13 00:00:00.000',100,1000,300,N'EA ','2011-08-13 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (488,1568,15,8.4400,8.8620,'2011-08-13 00:00:00.000',100,1000,300,N'EA ','2011-08-13 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (489,1568,15,9.9700,10.4685,'2011-08-13 00:00:00.000',100,1000,null,N'EA ','2011-08-13 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (490,1592,16,12.1100,12.7155,'2011-08-27 00:00:00.000',1,5,null,N'CAN','2011-08-27 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (490,1662,16,11.7700,12.3585,'2011-08-28 00:00:00.000',1,5,null,N'CAN','2011-08-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (491,1548,15,19.0300,19.9815,'2011-08-26 00:00:00.000',1,5,3,N'CAN','2011-08-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (491,1592,16,18.9900,19.9395,'2011-08-27 00:00:00.000',1,5,null,N'CAN','2011-08-27 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (492,1584,16,48.3300,50.7465,'2011-08-21 00:00:00.000',20,100,null,N'GAL','2011-08-21 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (492,1692,17,47.8700,50.2635,'2011-08-19 00:00:00.000',20,100,60,N'GAL','2011-08-19 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (493,1584,16,55.4900,58.2645,'2011-08-21 00:00:00.000',20,100,null,N'GAL','2011-08-21 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (493,1692,17,54.4300,57.1515,'2011-08-19 00:00:00.000',20,100,null,N'GAL','2011-08-19 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (494,1584,16,48.3300,50.7465,'2011-08-27 00:00:00.000',20,100,null,N'GAL','2011-08-27 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (494,1692,17,50.6700,53.2035,'2011-08-25 00:00:00.000',20,100,60,N'GAL','2011-08-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (495,1584,16,59.9300,62.9265,'2011-08-27 00:00:00.000',20,100,null,N'GAL','2011-08-27 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (495,1692,17,60.6600,63.6930,'2011-08-25 00:00:00.000',20,100,null,N'GAL','2011-08-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (496,1584,16,47.2900,49.6545,'2011-08-27 00:00:00.000',20,100,null,N'GAL','2011-08-27 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (496,1692,17,46.5800,48.9090,'2011-08-25 00:00:00.000',20,100,null,N'GAL','2011-08-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (497,1566,17,32.5600,34.1880,'2011-08-25 00:00:00.000',1,5,3,N'CS ','2011-08-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (504,1690,17,46.4400,48.7620,'2011-08-25 00:00:00.000',1,5,3,N'CS ','2011-08-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (505,1612,16,42.1100,44.2155,'2011-08-28 00:00:00.000',1,5,3,N'CS ','2011-08-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (506,1504,15,8.7600,9.1980,'2011-08-26 00:00:00.000',20,100,60,N'DZ ','2011-08-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (507,1530,15,22.2800,23.3940,'2011-08-26 00:00:00.000',100,1000,null,N'EA ','2011-08-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (507,1624,15,21.1100,22.1655,'2011-08-26 00:00:00.000',100,1000,null,N'EA ','2011-08-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (508,1530,15,26.3300,27.6465,'2011-08-26 00:00:00.000',100,1000,null,N'EA ','2011-08-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (508,1624,15,27.8900,29.2845,'2011-08-26 00:00:00.000',100,1000,null,N'EA ','2011-08-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (509,1680,16,34.5500,36.2775,'2011-08-27 00:00:00.000',100,1000,null,N'EA ','2011-08-27 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (510,1526,18,22.2900,23.4045,'2011-08-27 00:00:00.000',100,1000,null,N'EA ','2011-08-27 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (510,1646,15,21.9800,23.0790,'2011-08-26 00:00:00.000',100,1000,300,N'EA ','2011-08-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (511,1526,18,26.5400,27.8670,'2011-08-27 00:00:00.000',100,1000,null,N'EA ','2011-08-27 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (511,1646,15,27.8800,29.2740,'2011-08-26 00:00:00.000',100,1000,300,N'EA ','2011-08-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (512,1646,15,33.3100,34.9755,'2011-08-26 00:00:00.000',100,1000,300,N'EA ','2011-08-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (512,1654,17,35.3200,37.0860,'2011-08-25 00:00:00.000',100,1000,null,N'EA ','2011-08-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (513,1664,17,25.3300,26.5965,'2011-08-25 00:00:00.000',100,1000,null,N'EA ','2011-08-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (513,1682,19,37.3300,39.1965,'2011-08-28 00:00:00.000',100,1000,null,N'EA ','2011-08-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (523,1560,17,10.2200,10.7310,'2011-08-25 00:00:00.000',100,1000,300,N'EA ','2011-08-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (523,1620,16,9.8900,10.3845,'2011-08-27 00:00:00.000',100,1000,null,N'EA ','2011-08-27 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (524,1560,17,13.4500,14.1225,'2011-08-25 00:00:00.000',100,1000,300,N'EA ','2011-08-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (524,1626,18,12.3500,12.9675,'2011-08-27 00:00:00.000',100,1000,null,N'EA ','2011-08-27 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (525,1600,15,2.2100,2.3205,'2011-08-26 00:00:00.000',100,1000,null,N'EA ','2011-08-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (526,1522,15,3.4700,3.6435,'2011-08-26 00:00:00.000',100,1000,null,N'EA ','2011-08-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (527,1644,18,6.4300,6.7515,'2011-08-27 00:00:00.000',100,1000,null,N'DZ ','2011-08-27 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (528,1618,16,36.3400,38.1570,'2011-08-28 00:00:00.000',1,5,null,N'CTN','2011-08-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (530,1494,17,15.3200,16.0860,'2011-08-29 00:00:00.000',100,1000,null,N'EA ','2011-08-29 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (535,1508,15,3.3200,3.4860,'2011-08-26 00:00:00.000',100,1000,null,N'EA ','2011-08-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (679,1544,15,5.5000,5.7750,'2011-08-20 00:00:00.000',100,1000,300,N'EA ','2011-08-20 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (679,1694,15,5.9000,6.1950,'2011-08-26 00:00:00.000',100,1000,300,N'EA ','2011-08-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (707,1520,30,13.2500,13.0863,'2014-03-13 00:00:00.000',4,200,25,N'EA ','2015-08-12 12:20:28.330');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (708,1520,30,13.2500,13.0863,'2014-09-22 00:00:00.000',4,200,25,N'EA ','2015-08-12 12:20:28.330');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (709,1574,12,3.1000,3.4000,'2014-10-22 00:00:00.000',100,500,150,N'EA ','2015-08-12 12:20:28.330');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (710,1574,12,3.1200,3.4000,'2014-10-22 00:00:00.000',100,500,150,N'EA ','2015-08-12 12:20:28.330');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (711,1520,45,13.8800,13.0800,'2014-07-02 00:00:00.000',50,750,300,N'EA ','2015-08-12 12:20:28.330');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (712,1636,45,6.5500,6.9200,'2014-06-13 00:00:00.000',100,1000,630,N'EA ','2015-08-12 12:20:28.330');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (713,1636,45,37.4500,38.4900,'2013-12-03 00:00:00.000',100,1000,600,N'EA ','2015-08-12 12:20:28.330');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (714,1636,45,37.8000,38.4900,'2013-12-03 00:00:00.000',100,1000,350,N'EA ','2015-08-12 12:20:28.330');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (715,1636,45,37.8000,38.4900,'2013-12-03 00:00:00.000',100,1000,100,N'EA ','2015-08-12 12:20:28.330');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (716,1636,45,38.0500,38.7500,'2013-12-03 00:00:00.000',100,1000,750,N'EA ','2015-08-12 12:20:28.330');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (841,1636,60,26.7500,24.7500,'2014-02-26 00:00:00.000',75,500,300,N'EA ','2015-08-12 12:20:28.330');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (842,1518,120,54.2000,51.5600,'2014-02-17 00:00:00.000',100,600,225,N'EA ','2015-08-12 12:20:28.330');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (843,1518,10,8.5000,10.3100,'2014-01-11 00:00:00.000',50,200,75,N'EA ','2015-08-12 12:20:28.330');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (844,1518,25,8.5000,8.2500,'2014-01-11 00:00:00.000',150,500,300,N'EA ','2015-08-12 12:20:28.330');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (845,1518,25,10.7500,10.3000,'2014-01-11 00:00:00.000',150,500,250,N'EA ','2015-08-12 12:20:28.330');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (846,1518,30,4.5000,5.7700,'2014-01-11 00:00:00.000',150,500,175,N'EA ','2015-08-12 12:20:28.330');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (847,1518,30,14.5000,4.4300,'2014-01-11 00:00:00.000',150,500,150,N'EA ','2015-08-12 12:20:28.330');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (848,1518,45,15.7500,18.5600,'2014-01-11 00:00:00.000',50,300,150,N'EA ','2015-08-12 12:20:28.330');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (849,1594,45,24.7500,24.7500,'2014-03-31 00:00:00.000',5000,10000,5000,N'EA ','2015-08-12 12:20:28.330');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (850,1594,45,24.7500,24.7500,'2014-03-31 00:00:00.000',5000,10000,5000,N'EA ','2015-08-12 12:20:28.330');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (851,1594,45,24.7500,24.7500,'2014-03-31 00:00:00.000',5000,10000,5000,N'EA ','2015-08-12 12:20:28.330');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (852,1594,60,32.3500,30.9400,'2014-05-14 00:00:00.000',500,8000,750,N'EA ','2015-08-12 12:20:28.330');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (853,1594,60,32.3500,30.9400,'2014-05-14 00:00:00.000',500,8000,750,N'EA ','2015-08-12 12:20:28.330');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (854,1594,60,32.3500,30.9400,'2014-05-14 00:00:00.000',500,8000,750,N'EA ','2015-08-12 12:20:28.330');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (855,1594,60,38.5000,37.1000,'2014-05-14 00:00:00.000',500,5000,1050,N'EA ','2015-08-12 12:20:28.330');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (856,1594,60,37.5000,37.1000,'2014-05-14 00:00:00.000',500,5000,1000,N'EA ','2015-08-12 12:20:28.343');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (857,1594,60,37.5000,37.1000,'2014-05-14 00:00:00.000',500,5000,1000,N'EA ','2015-08-12 12:20:28.343');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (858,1676,15,8.7500,9.1500,'2014-05-22 00:00:00.000',500,5000,700,N'EA ','2015-08-12 12:20:28.343');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (859,1676,15,8.7500,9.1500,'2014-05-22 00:00:00.000',500,5000,700,N'EA ','2015-08-12 12:20:28.343');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (860,1676,15,8.7500,9.1500,'2014-05-22 00:00:00.000',500,5000,700,N'EA ','2015-08-12 12:20:28.343');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (861,1676,25,15.5000,15.6700,'2014-05-22 00:00:00.000',500,5000,900,N'EA ','2015-08-12 12:20:28.343');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (862,1676,25,15.5000,15.6700,'2014-05-22 00:00:00.000',500,5000,900,N'EA ','2015-08-12 12:20:28.343');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (863,1676,25,15.5000,15.6700,'2014-05-22 00:00:00.000',500,5000,900,N'EA ','2015-08-12 12:20:28.343');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (864,1676,35,23.2000,23.7500,'2014-05-22 00:00:00.000',1000,7500,1250,N'EA ','2015-08-12 12:20:28.343');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (865,1676,35,23.2000,23.7500,'2014-05-22 00:00:00.000',1000,7500,1250,N'EA ','2015-08-12 12:20:28.343');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (866,1676,35,23.2000,23.7500,'2014-05-22 00:00:00.000',1000,7500,1250,N'EA ','2015-08-12 12:20:28.343');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (867,1676,25,25.4500,26.1800,'2014-05-22 00:00:00.000',1000,7500,2000,N'EA ','2015-08-12 12:20:28.343');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (868,1676,25,25.4500,26.1800,'2014-05-22 00:00:00.000',1000,7500,2000,N'EA ','2015-08-12 12:20:28.343');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (869,1676,25,25.4500,26.1800,'2014-05-22 00:00:00.000',1000,7500,2000,N'EA ','2015-08-12 12:20:28.343');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (870,1546,45,1.8700,1.8700,'2013-12-09 00:00:00.000',500,2500,1500,N'EA ','2015-08-12 12:20:28.343');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (871,1546,45,3.7400,3.7400,'2013-12-09 00:00:00.000',500,2500,500,N'EA ','2015-08-12 12:20:28.343');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (872,1546,45,3.0000,3.3600,'2013-12-09 00:00:00.000',500,2500,1000,N'EA ','2015-08-12 12:20:28.343');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (873,1546,45,0.8000,0.8600,'2013-12-09 00:00:00.000',1500,15000,8000,N'EA ','2015-08-12 12:20:28.343');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (874,1574,25,3.0000,2.3600,'2013-12-09 00:00:00.000',1500,15000,8000,N'EA ','2015-08-12 12:20:28.343');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (875,1574,25,3.0000,2.3600,'2013-12-09 00:00:00.000',1500,15000,8000,N'EA ','2015-08-12 12:20:28.343');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (876,1546,45,48.0000,33.8800,'2014-07-24 00:00:00.000',100,500,250,N'EA ','2015-08-12 12:20:28.343');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (877,1546,45,3.0000,2.9700,'2014-07-24 00:00:00.000',100,500,150,N'EA ','2015-08-12 12:20:28.343');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (878,1546,45,8.2200,8.2200,'2014-07-24 00:00:00.000',100,500,150,N'EA ','2015-08-12 12:20:28.343');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (879,1546,45,49.0000,59.4600,'2014-07-24 00:00:00.000',100,500,400,N'EA ','2015-08-12 12:20:28.343');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (880,1546,45,19.0000,20.5600,'2014-07-24 00:00:00.000',500,1500,1000,N'EA ','2015-08-12 12:20:28.343');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (881,1636,30,40.0000,41.5700,'2014-07-24 00:00:00.000',5000,10000,6000,N'EA ','2015-08-12 12:20:28.343');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (882,1636,30,40.0000,41.5700,'2014-07-24 00:00:00.000',5000,10000,6000,N'EA ','2015-08-12 12:20:28.343');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (883,1636,30,40.0000,41.5700,'2014-07-24 00:00:00.000',5000,10000,6000,N'EA ','2015-08-12 12:20:28.343');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (884,1636,30,40.0000,41.5700,'2014-07-24 00:00:00.000',5000,10000,6000,N'EA ','2015-08-12 12:20:28.343');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (907,1576,19,78.8900,82.8345,'2011-08-29 00:00:00.000',100,1000,null,N'EA ','2011-08-29 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (908,1570,15,20.0900,21.0945,'2011-08-27 00:00:00.000',100,1000,null,N'EA ','2011-08-27 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (908,1696,17,20.0900,21.0945,'2011-08-13 00:00:00.000',100,1000,null,N'EA ','2011-08-13 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (909,1570,15,28.9900,30.4395,'2011-08-27 00:00:00.000',100,1000,300,N'EA ','2011-08-27 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (909,1696,17,28.9900,30.4395,'2011-08-13 00:00:00.000',100,1000,null,N'EA ','2011-08-13 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (910,1610,18,38.9900,40.9395,'2011-08-27 00:00:00.000',100,1000,300,N'EA ','2011-08-27 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (910,1696,17,38.9900,40.9395,'2011-08-20 00:00:00.000',100,1000,null,N'EA ','2011-08-20 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (911,1542,18,20.0900,21.0945,'2011-08-27 00:00:00.000',100,1000,null,N'EA ','2011-08-27 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (911,1696,17,20.0900,21.0945,'2011-08-20 00:00:00.000',100,1000,null,N'EA ','2011-08-20 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (912,1542,18,28.9900,30.4395,'2011-08-27 00:00:00.000',100,1000,null,N'EA ','2011-08-27 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (912,1696,17,28.9900,30.4395,'2011-08-20 00:00:00.000',100,1000,null,N'EA ','2011-08-20 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (913,1570,15,38.9900,40.9395,'2011-08-27 00:00:00.000',100,1000,300,N'EA ','2011-08-27 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (913,1696,17,38.9900,40.9395,'2011-08-25 00:00:00.000',100,1000,null,N'EA ','2011-08-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (914,1672,15,20.0900,21.0945,'2011-08-26 00:00:00.000',100,1000,null,N'EA ','2011-08-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (914,1696,17,20.0900,21.0945,'2011-08-25 00:00:00.000',100,1000,null,N'EA ','2011-08-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (915,1672,15,28.9900,30.4395,'2011-08-26 00:00:00.000',100,1000,300,N'EA ','2011-08-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (915,1696,17,28.9900,30.4395,'2011-08-06 00:00:00.000',100,1000,null,N'EA ','2011-08-06 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (916,1672,15,38.9900,40.9395,'2011-08-26 00:00:00.000',100,1000,null,N'EA ','2011-08-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (916,1696,17,38.9900,40.9395,'2011-08-06 00:00:00.000',100,1000,null,N'EA ','2011-08-06 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (921,1498,19,5.3200,5.5860,'2011-08-29 00:00:00.000',100,1000,null,N'EA ','2011-08-29 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (922,1652,19,6.2200,6.5310,'2011-08-29 00:00:00.000',100,1000,null,N'EA ','2011-08-29 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (923,1652,19,5.8900,6.1845,'2011-08-29 00:00:00.000',100,1000,null,N'EA ','2011-08-29 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (928,1538,19,30.7100,32.2455,'2011-08-29 00:00:00.000',100,1000,null,N'EA ','2011-08-29 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (928,1632,19,31.2100,32.7705,'2011-08-28 00:00:00.000',100,1000,null,N'EA ','2011-08-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (929,1538,19,34.8200,36.5610,'2011-08-29 00:00:00.000',100,1000,null,N'EA ','2011-08-29 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (929,1632,19,35.3200,37.0860,'2011-08-28 00:00:00.000',100,1000,null,N'EA ','2011-08-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (930,1498,19,40.4900,42.5145,'2011-08-29 00:00:00.000',100,1000,null,N'EA ','2011-08-29 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (930,1632,19,40.9900,43.0395,'2011-08-28 00:00:00.000',100,1000,null,N'EA ','2011-08-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (931,1588,19,32.7100,34.3455,'2011-08-28 00:00:00.000',100,1000,null,N'EA ','2011-08-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (931,1684,19,33.2100,34.8705,'2011-08-28 00:00:00.000',100,1000,null,N'EA ','2011-08-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (932,1588,19,37.3700,39.2385,'2011-08-28 00:00:00.000',100,1000,null,N'EA ','2011-08-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (932,1684,19,37.8700,39.7635,'2011-08-28 00:00:00.000',100,1000,null,N'EA ','2011-08-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (933,1652,19,41.3900,43.4595,'2011-08-29 00:00:00.000',100,1000,null,N'EA ','2011-08-29 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (933,1684,19,41.8900,43.9845,'2011-08-28 00:00:00.000',100,1000,null,N'EA ','2011-08-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (934,1652,19,35.8300,37.6215,'2011-08-29 00:00:00.000',100,1000,null,N'EA ','2011-08-29 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (934,1684,19,36.3300,38.1465,'2011-08-28 00:00:00.000',100,1000,null,N'EA ','2011-08-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (935,1506,18,29.9900,31.4895,'2011-08-27 00:00:00.000',100,1000,300,N'EA ','2011-08-27 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (935,1658,15,29.9900,31.4895,'2011-08-26 00:00:00.000',100,1000,null,N'EA ','2011-08-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (936,1506,18,45.9900,48.2895,'2011-08-27 00:00:00.000',100,1000,300,N'EA ','2011-08-27 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (936,1658,15,45.9900,48.2895,'2011-08-26 00:00:00.000',100,1000,null,N'EA ','2011-08-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (937,1638,18,59.9900,62.9895,'2011-08-27 00:00:00.000',100,1000,300,N'EA ','2011-08-27 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (938,1586,16,29.9900,31.4895,'2011-08-28 00:00:00.000',100,1000,300,N'EA ','2011-08-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (938,1680,16,29.9900,31.4895,'2011-08-27 00:00:00.000',100,1000,null,N'EA ','2011-08-27 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (939,1586,16,45.9900,48.2895,'2011-08-28 00:00:00.000',100,1000,300,N'EA ','2011-08-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (939,1680,16,45.9900,48.2895,'2011-08-27 00:00:00.000',100,1000,null,N'EA ','2011-08-27 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (940,1508,15,59.9900,62.9895,'2011-08-26 00:00:00.000',100,1000,null,N'EA ','2011-08-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (941,1628,17,59.9900,62.9895,'2011-08-25 00:00:00.000',100,1000,null,N'EA ','2011-08-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (948,1576,19,78.8900,82.8345,'2011-08-29 00:00:00.000',100,1000,null,N'EA ','2011-08-29 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Purchasing].[ProductVendor] ([ProductID],[BusinessEntityID],[AverageLeadTime],[StandardPrice],[LastReceiptCost],[LastReceiptDate],[MinOrderQty],[MaxOrderQty],[OnOrderQty],[UnitMeasureCode],[ModifiedDate]) VALUES (952,1674,19,14.9900,15.7395,'2011-08-29 00:00:00.000',20,100,60,N'DZ ','2011-08-29 00:00:00.000');

COMMIT TRANSACTION

