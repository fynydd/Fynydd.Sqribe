SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;341e11

-- SQRIBE/TABLE;341e11
-- Adding 2,679 rows to Production.BillOfMaterials

SET IDENTITY_INSERT [Production].[BillOfMaterials] ON

BEGIN TRANSACTION

-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1,807,1,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2,782,995,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3,null,989,'2010-03-04 00:00:00.000',null,N'EA ',0,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (4,null,785,'2010-03-04 00:00:00.000',null,N'EA ',0,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (5,null,775,'2010-03-04 00:00:00.000',null,N'EA ',0,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (6,950,322,'2010-03-04 00:00:00.000',null,N'EA ',2,3.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (7,984,949,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (8,775,951,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (9,822,325,'2010-03-04 00:00:00.000',null,N'EA ',2,2.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (10,944,327,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (11,748,327,'2010-05-04 00:00:00.000',null,N'EA ',2,1.00,'2010-04-20 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (12,809,328,'2010-03-04 00:00:00.000',null,N'EA ',2,2.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (13,989,948,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (14,785,948,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (15,775,948,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (16,945,351,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (17,804,331,'2010-03-04 00:00:00.000',null,N'EA ',3,2.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (18,747,804,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (19,811,356,'2010-03-04 00:00:00.000',null,N'IN ',2,40.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (20,820,401,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (21,771,807,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (22,814,399,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (23,807,402,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (24,807,459,'2010-05-04 00:00:00.000',null,N'EA ',2,1.00,'2010-04-20 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (25,821,490,'2010-03-04 00:00:00.000',null,N'EA ',2,36.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (26,828,491,'2010-03-04 00:00:00.000',null,N'EA ',2,36.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (27,944,494,'2010-03-04 00:00:00.000',null,N'OZ ',2,8.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (28,517,497,'2010-03-04 00:00:00.000',null,N'EA ',2,4.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (29,797,939,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (30,980,907,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (31,779,907,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (32,768,994,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (33,null,974,'2010-03-04 00:00:00.000',null,N'EA ',0,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (34,null,750,'2010-05-04 00:00:00.000',null,N'EA ',0,1.00,'2010-04-20 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (35,783,952,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (36,997,952,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (37,997,949,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (38,762,948,'2010-05-04 00:00:00.000',null,N'EA ',1,1.00,'2010-04-20 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (39,756,948,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (40,789,948,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (41,978,945,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (42,981,815,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (43,786,809,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (44,750,813,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (45,786,936,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (46,750,940,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (47,981,907,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (48,780,907,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (49,769,994,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (50,966,996,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (51,null,982,'2010-03-04 00:00:00.000',null,N'EA ',0,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (52,null,781,'2010-03-04 00:00:00.000',null,N'EA ',0,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (53,784,952,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (54,998,952,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (55,998,949,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (56,966,951,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (57,763,948,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (58,757,948,'2010-05-04 00:00:00.000',null,N'EA ',1,1.00,'2010-04-20 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (59,790,948,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (60,979,945,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (61,966,945,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (62,982,815,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (63,787,809,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (64,751,813,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (65,954,947,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (66,970,806,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (67,787,936,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (68,751,940,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (69,982,907,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (70,781,907,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (71,770,994,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (72,967,996,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (73,null,971,'2010-03-04 00:00:00.000',null,N'EA ',0,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (74,999,952,'2010-05-04 00:00:00.000',null,N'EA ',1,1.00,'2010-04-20 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (75,999,949,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (76,967,951,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (77,764,948,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (78,758,948,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (79,791,948,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (80,967,945,'2010-05-04 00:00:00.000',null,N'EA ',1,1.00,'2010-04-20 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (81,770,738,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (82,764,727,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (83,983,815,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (84,788,809,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (85,752,813,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (86,955,947,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (87,971,806,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (88,788,936,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (89,752,940,'2010-05-04 00:00:00.000',null,N'EA ',1,1.00,'2010-04-20 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (90,983,907,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (91,968,996,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (92,null,801,'2010-03-04 00:00:00.000',null,N'EA ',0,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (93,968,951,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (94,958,945,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (95,968,945,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (96,993,927,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (97,753,813,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (98,956,947,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (99,972,806,'2010-05-04 00:00:00.000',null,N'EA ',1,1.00,'2010-04-20 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (100,533,478,'2010-03-04 00:00:00.000',null,N'EA ',3,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (101,988,907,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (102,977,994,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (103,null,977,'2010-03-04 00:00:00.000',null,N'EA ',0,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (104,765,952,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (105,792,813,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (106,964,805,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (107,792,940,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (108,766,952,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (109,953,945,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (110,767,952,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (111,749,948,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (112,965,805,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (113,798,894,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (114,962,894,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (115,954,894,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (116,800,894,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (117,956,894,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (118,957,894,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (119,826,506,'2010-03-04 00:00:00.000',null,N'EA ',2,2.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (120,821,506,'2010-03-04 00:00:00.000',null,N'EA ',2,2.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (121,821,513,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (122,980,823,'2010-05-04 00:00:00.000',null,N'EA ',1,1.00,'2010-04-20 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (123,985,823,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (124,776,825,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (125,982,823,'2010-05-04 00:00:00.000',null,N'EA ',1,1.00,'2010-04-20 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (126,987,823,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (127,778,825,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (128,989,514,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (129,973,518,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (130,756,518,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (131,793,519,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (132,991,514,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (133,975,518,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (134,962,520,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (135,758,518,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (136,795,519,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (137,971,521,'2010-05-04 00:00:00.000',null,N'EA ',1,1.00,'2010-04-20 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (138,993,514,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (139,754,518,'2010-03-04 00:00:00.000',null,N'EA ',1,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (140,517,911,'2010-05-04 00:00:00.000',null,N'EA ',2,1.00,'2010-04-20 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (141,522,916,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (142,816,527,'2010-05-04 00:00:00.000',null,N'EA ',2,36.00,'2010-04-20 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (143,827,527,'2010-03-04 00:00:00.000',null,N'EA ',2,36.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (144,520,528,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (145,946,529,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (146,521,530,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (147,944,533,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (148,748,533,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (149,947,398,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (150,826,931,'2010-05-04 00:00:00.000',null,N'EA ',2,1.00,'2010-04-20 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (151,825,921,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (152,942,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (153,924,324,'2010-03-04 00:00:00.000',null,N'EA ',2,2.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (154,927,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (155,917,494,'2010-03-04 00:00:00.000',null,N'OZ ',2,8.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (156,917,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (157,918,494,'2010-03-04 00:00:00.000',null,N'OZ ',2,8.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (158,918,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (159,919,494,'2010-03-04 00:00:00.000',null,N'OZ ',2,8.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (160,919,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (161,920,494,'2010-03-04 00:00:00.000',null,N'OZ ',2,8.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (162,920,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (163,830,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (164,831,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (165,832,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (166,904,494,'2010-03-04 00:00:00.000',null,N'OZ ',2,8.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (167,904,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (168,905,494,'2010-03-04 00:00:00.000',null,N'OZ ',2,8.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (169,905,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (170,906,494,'2010-03-04 00:00:00.000',null,N'OZ ',2,8.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (171,906,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (172,743,804,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (173,743,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (174,744,804,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (175,744,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (176,745,804,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (177,745,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (178,746,804,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (179,746,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (180,739,804,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (181,739,494,'2010-03-04 00:00:00.000',null,N'OZ ',2,8.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (182,739,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (183,740,804,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (184,740,494,'2010-03-04 00:00:00.000',null,N'OZ ',2,8.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (185,740,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (186,741,804,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (187,741,494,'2010-03-04 00:00:00.000',null,N'OZ ',2,8.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (188,741,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (189,742,804,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (190,742,494,'2010-03-04 00:00:00.000',null,N'OZ ',2,8.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (191,742,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (192,736,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (193,737,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (194,738,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (195,722,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (196,723,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (197,724,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (198,725,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (199,726,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (200,727,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (201,728,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (202,729,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (203,730,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (204,731,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (205,732,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (206,733,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (207,734,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (208,735,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (209,833,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (210,834,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (211,835,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (212,836,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (213,838,804,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (214,838,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (215,839,804,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (216,839,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (217,840,804,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (218,840,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (219,680,804,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (220,680,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (223,718,804,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (224,718,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (225,719,804,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (226,719,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (227,720,804,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (228,720,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (229,721,804,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (230,721,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (231,717,804,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (232,717,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (233,903,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (234,895,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (235,896,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (236,897,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (237,898,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (238,899,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (239,900,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (240,901,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (241,902,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (242,886,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (243,890,804,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (244,890,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (245,891,804,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (246,891,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (247,892,804,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (248,892,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (249,893,804,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (250,893,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (251,887,804,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (252,887,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (253,888,804,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (254,888,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (255,889,804,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (256,889,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (257,885,804,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (258,885,534,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (262,748,327,'2010-03-04 00:00:00.000','2010-05-03 00:00:00.000',N'EA ',1,2.00,'2010-05-03 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (268,807,459,'2010-03-04 00:00:00.000','2010-05-03 00:00:00.000',N'EA ',1,2.00,'2010-05-03 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (271,null,750,'2010-03-04 00:00:00.000','2010-05-03 00:00:00.000',N'EA ',0,1.00,'2010-05-03 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (273,762,948,'2010-03-04 00:00:00.000','2010-05-03 00:00:00.000',N'EA ',1,2.00,'2010-05-03 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (279,757,948,'2010-03-04 00:00:00.000','2010-05-03 00:00:00.000',N'EA ',1,2.00,'2010-05-03 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (285,999,952,'2010-03-04 00:00:00.000','2010-05-03 00:00:00.000',N'EA ',1,2.00,'2010-05-03 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (288,967,945,'2010-03-04 00:00:00.000','2010-05-03 00:00:00.000',N'EA ',1,2.00,'2010-05-03 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (291,752,940,'2010-03-04 00:00:00.000','2010-05-03 00:00:00.000',N'EA ',1,2.00,'2010-05-03 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (299,972,806,'2010-03-04 00:00:00.000','2010-05-03 00:00:00.000',N'EA ',1,2.00,'2010-05-03 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (336,980,823,'2010-03-04 00:00:00.000','2010-05-03 00:00:00.000',N'EA ',1,2.00,'2010-05-03 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (337,982,823,'2010-03-04 00:00:00.000','2010-05-03 00:00:00.000',N'EA ',1,2.00,'2010-05-03 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (343,971,521,'2010-03-04 00:00:00.000','2010-05-03 00:00:00.000',N'EA ',1,2.00,'2010-05-03 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (348,517,911,'2010-03-04 00:00:00.000','2010-05-03 00:00:00.000',N'EA ',1,2.00,'2010-05-03 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (349,816,527,'2010-03-04 00:00:00.000','2010-05-03 00:00:00.000',N'EA ',1,37.00,'2010-05-03 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (351,826,931,'2010-03-04 00:00:00.000','2010-05-03 00:00:00.000',N'EA ',1,2.00,'2010-05-03 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (360,706,804,'2010-03-04 00:00:00.000',null,N'EA ',2,1.00,'2010-02-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (361,806,1,'2010-03-18 00:00:00.000',null,N'EA ',2,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (362,949,317,'2010-03-18 00:00:00.000',null,N'EA ',2,2.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (363,989,952,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (364,785,952,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (365,775,952,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (366,949,322,'2010-05-18 00:00:00.000',null,N'EA ',2,3.00,'2010-05-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (367,944,324,'2010-03-18 00:00:00.000',null,N'EA ',2,2.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (368,748,324,'2010-03-18 00:00:00.000',null,N'EA ',2,2.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (369,785,950,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (370,944,326,'2010-05-18 00:00:00.000',null,N'EA ',2,1.00,'2010-05-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (371,748,326,'2010-03-18 00:00:00.000',null,N'EA ',2,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (372,808,328,'2010-03-18 00:00:00.000',null,N'EA ',2,2.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (373,797,948,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (374,980,945,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (375,779,945,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (376,803,331,'2010-03-18 00:00:00.000',null,N'EA ',3,2.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (377,814,803,'2010-03-18 00:00:00.000',null,N'EA ',2,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (378,771,817,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (379,808,356,'2010-03-18 00:00:00.000',null,N'IN ',2,40.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (380,819,401,'2010-03-18 00:00:00.000',null,N'EA ',2,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (381,822,399,'2010-03-18 00:00:00.000',null,N'EA ',2,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (382,806,402,'2010-03-18 00:00:00.000',null,N'EA ',2,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (383,806,459,'2010-03-18 00:00:00.000',null,N'EA ',2,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (384,819,490,'2010-03-18 00:00:00.000',null,N'EA ',2,36.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (385,825,491,'2010-03-18 00:00:00.000',null,N'EA ',2,36.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (386,516,497,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (387,984,935,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (388,775,937,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (389,3,504,'2010-03-18 00:00:00.000',null,N'EA ',3,2.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (390,973,907,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (391,798,994,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (392,null,981,'2010-03-18 00:00:00.000',null,N'EA ',0,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (393,null,780,'2010-03-18 00:00:00.000',null,N'EA ',0,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (394,961,952,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (395,961,949,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (396,772,951,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (397,990,948,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (398,786,948,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (399,776,948,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (400,768,948,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (401,793,948,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (402,985,945,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (403,772,945,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (404,783,816,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (405,789,820,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (406,990,808,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (407,974,812,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (408,961,946,'2010-05-18 00:00:00.000',null,N'EA ',1,1.00,'2010-05-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (409,981,806,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (410,780,806,'2010-05-18 00:00:00.000',null,N'EA ',1,1.00,'2010-05-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (411,750,807,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (412,990,935,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (413,974,939,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (414,961,941,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (415,974,907,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (416,750,907,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (417,799,994,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (418,970,995,'2010-05-18 00:00:00.000',null,N'EA ',1,1.00,'2010-05-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (419,null,970,'2010-03-18 00:00:00.000',null,N'EA ',0,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (420,962,952,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (421,954,952,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (422,962,949,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (423,773,951,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (424,991,948,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (425,787,948,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (426,777,948,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (427,769,948,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (428,794,948,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (429,986,945,'2010-05-18 00:00:00.000',null,N'EA ',1,1.00,'2010-05-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (430,773,945,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (431,769,737,'2010-05-18 00:00:00.000',null,N'EA ',1,1.00,'2010-05-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (432,763,726,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (433,784,816,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (434,790,820,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (435,991,808,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (436,975,812,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (437,962,946,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (438,966,947,'2010-05-18 00:00:00.000',null,N'EA ',1,1.00,'2010-05-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (439,982,806,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (440,781,806,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (441,751,807,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (442,991,935,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (443,975,939,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (444,962,941,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (445,954,941,'2010-05-18 00:00:00.000',null,N'EA ',1,1.00,'2010-05-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (446,975,907,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (447,751,907,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (448,800,994,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (449,971,995,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (450,null,800,'2010-03-18 00:00:00.000',null,N'EA ',0,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (451,963,952,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (452,955,952,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (453,963,949,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (454,774,951,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (455,992,948,'2010-05-18 00:00:00.000',null,N'EA ',1,1.00,'2010-05-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (456,788,948,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (457,778,948,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (458,770,948,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (459,795,948,'2010-05-18 00:00:00.000',null,N'EA ',1,1.00,'2010-05-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (460,987,945,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (461,774,945,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (462,992,926,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (463,778,745,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (464,999,738,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (465,976,836,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (466,791,820,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (467,992,808,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (468,976,812,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (469,963,946,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (470,967,947,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (471,983,806,'2010-05-18 00:00:00.000',null,N'EA ',1,1.00,'2010-05-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (472,752,807,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (473,992,935,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (474,976,939,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (475,963,941,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (476,955,941,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (477,976,907,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (478,752,907,'2010-05-18 00:00:00.000',null,N'EA ',1,1.00,'2010-05-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (479,801,994,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (480,972,995,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (481,null,993,'2010-03-18 00:00:00.000',null,N'EA ',0,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (482,null,796,'2010-03-18 00:00:00.000',null,N'EA ',0,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (483,956,952,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (484,993,948,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (485,796,948,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (486,988,945,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (487,968,892,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (488,993,808,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (489,968,947,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (490,753,807,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (491,534,482,'2010-03-18 00:00:00.000',null,N'EA ',3,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (492,350,486,'2010-03-18 00:00:00.000',null,N'EA ',4,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (493,796,940,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (494,964,994,'2010-05-18 00:00:00.000',null,N'EA ',1,1.00,'2010-05-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (495,977,948,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (496,754,812,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (497,754,939,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (498,759,907,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (499,754,907,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (500,792,907,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (501,953,950,'2010-05-18 00:00:00.000',null,N'EA ',1,1.00,'2010-05-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (502,755,812,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (503,953,947,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (504,959,805,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (505,755,939,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (506,760,907,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (507,755,907,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (508,965,994,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (509,767,724,'2010-05-18 00:00:00.000',null,N'EA ',1,1.00,'2010-05-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (510,761,730,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (511,749,820,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (512,960,805,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (513,761,907,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (514,979,894,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (515,966,894,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (516,971,894,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (517,958,894,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (518,968,894,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (519,959,894,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (520,969,894,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (521,825,506,'2010-03-18 00:00:00.000',null,N'EA ',2,2.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (522,820,506,'2010-03-18 00:00:00.000',null,N'EA ',2,2.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (523,825,509,'2010-03-18 00:00:00.000',null,N'EA ',2,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (524,782,824,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (525,786,824,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (526,750,828,'2010-05-18 00:00:00.000',null,N'EA ',1,1.00,'2010-05-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (527,784,824,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (528,790,828,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (529,788,824,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (530,752,828,'2010-05-18 00:00:00.000',null,N'EA ',1,1.00,'2010-05-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (531,749,828,'2010-05-18 00:00:00.000',null,N'EA ',1,1.00,'2010-05-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (532,779,516,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (533,772,516,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (534,762,517,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (535,781,516,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (536,979,520,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (537,774,516,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (538,764,517,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (539,958,520,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (540,759,517,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (541,959,520,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (542,761,517,'2010-03-18 00:00:00.000',null,N'EA ',1,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (543,400,523,'2010-03-18 00:00:00.000',null,N'EA ',3,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (544,815,527,'2010-03-18 00:00:00.000',null,N'EA ',2,36.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (545,826,527,'2010-03-18 00:00:00.000',null,N'EA ',2,36.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (546,519,528,'2010-03-18 00:00:00.000',null,N'EA ',2,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (547,813,529,'2010-03-18 00:00:00.000',null,N'EA ',2,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (548,520,530,'2010-03-18 00:00:00.000',null,N'EA ',2,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (549,944,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (550,748,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (551,946,398,'2010-05-18 00:00:00.000',null,N'EA ',2,1.00,'2010-05-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (552,816,929,'2010-03-18 00:00:00.000',null,N'EA ',2,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (553,821,934,'2010-03-18 00:00:00.000',null,N'EA ',2,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (554,894,535,'2010-03-18 00:00:00.000',null,N'EA ',2,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (555,821,923,'2010-03-18 00:00:00.000',null,N'EA ',2,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (556,824,921,'2010-03-18 00:00:00.000',null,N'EA ',2,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (557,927,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (558,917,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (559,918,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (560,919,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (561,920,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (562,830,803,'2010-03-18 00:00:00.000',null,N'EA ',2,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (563,830,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (564,831,803,'2010-03-18 00:00:00.000',null,N'EA ',2,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (565,831,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (566,832,803,'2010-03-18 00:00:00.000',null,N'EA ',2,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (567,832,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (568,904,803,'2010-03-18 00:00:00.000',null,N'EA ',2,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (569,904,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (570,905,803,'2010-03-18 00:00:00.000',null,N'EA ',2,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (571,905,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (572,906,803,'2010-03-18 00:00:00.000',null,N'EA ',2,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (573,906,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (574,743,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (575,744,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (576,745,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (577,746,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (578,739,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (579,740,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (580,741,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (581,742,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (582,736,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (583,737,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (584,738,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (585,722,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (586,723,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (587,724,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (588,725,493,'2010-03-18 00:00:00.000',null,N'OZ ',2,8.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (589,725,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (590,726,493,'2010-05-18 00:00:00.000',null,N'OZ ',2,8.00,'2010-05-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (591,726,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (592,727,493,'2010-03-18 00:00:00.000',null,N'OZ ',2,8.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (593,727,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (594,728,493,'2010-03-18 00:00:00.000',null,N'OZ ',2,8.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (595,728,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (596,729,493,'2010-03-18 00:00:00.000',null,N'OZ ',2,8.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (597,729,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (598,730,493,'2010-05-18 00:00:00.000',null,N'OZ ',2,8.00,'2010-05-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (599,730,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (600,731,803,'2010-03-18 00:00:00.000',null,N'EA ',2,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (601,731,493,'2010-03-18 00:00:00.000',null,N'OZ ',2,8.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (602,731,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (603,732,803,'2010-03-18 00:00:00.000',null,N'EA ',2,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (604,732,493,'2010-05-18 00:00:00.000',null,N'OZ ',2,8.00,'2010-05-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (605,732,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (606,733,803,'2010-03-18 00:00:00.000',null,N'EA ',2,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (607,733,493,'2010-03-18 00:00:00.000',null,N'OZ ',2,8.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (608,733,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (609,734,803,'2010-03-18 00:00:00.000',null,N'EA ',2,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (610,734,493,'2010-03-18 00:00:00.000',null,N'OZ ',2,8.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (611,734,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (612,735,803,'2010-03-18 00:00:00.000',null,N'EA ',2,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (613,735,493,'2010-03-18 00:00:00.000',null,N'OZ ',2,8.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (614,735,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (615,833,803,'2010-03-18 00:00:00.000',null,N'EA ',2,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (616,833,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (617,834,803,'2010-03-18 00:00:00.000',null,N'EA ',2,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (618,834,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (619,835,803,'2010-03-18 00:00:00.000',null,N'EA ',2,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (620,835,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (621,836,803,'2010-03-18 00:00:00.000',null,N'EA ',2,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (622,836,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (623,838,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (624,839,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (625,840,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (626,680,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (628,718,493,'2010-03-18 00:00:00.000',null,N'OZ ',2,8.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (629,718,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (630,719,493,'2010-05-18 00:00:00.000',null,N'OZ ',2,8.00,'2010-05-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (631,719,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (632,720,493,'2010-03-18 00:00:00.000',null,N'OZ ',2,8.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (633,720,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (634,721,493,'2010-03-18 00:00:00.000',null,N'OZ ',2,8.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (635,721,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (636,717,493,'2010-05-18 00:00:00.000',null,N'OZ ',2,8.00,'2010-05-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (637,717,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (638,903,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (639,895,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (640,896,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (641,897,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (642,898,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (643,899,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (644,900,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (645,901,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (646,902,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (647,886,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (648,890,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (649,891,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (650,892,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (651,893,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (652,887,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (653,888,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (654,889,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (655,885,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (656,924,533,'2010-03-18 00:00:00.000',null,N'EA ',2,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (657,925,533,'2010-03-18 00:00:00.000',null,N'EA ',2,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (658,926,533,'2010-03-18 00:00:00.000',null,N'EA ',2,1.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (661,949,322,'2010-03-18 00:00:00.000','2010-05-17 00:00:00.000',N'EA ',1,4.00,'2010-05-17 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (664,944,326,'2010-03-18 00:00:00.000','2010-05-17 00:00:00.000',N'EA ',1,2.00,'2010-05-17 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (676,961,946,'2010-03-18 00:00:00.000','2010-05-17 00:00:00.000',N'EA ',1,2.00,'2010-05-17 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (677,780,806,'2010-03-18 00:00:00.000','2010-05-17 00:00:00.000',N'EA ',1,2.00,'2010-05-17 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (681,970,995,'2010-03-18 00:00:00.000','2010-05-17 00:00:00.000',N'EA ',1,2.00,'2010-05-17 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (686,986,945,'2010-03-18 00:00:00.000','2010-05-17 00:00:00.000',N'EA ',1,2.00,'2010-05-17 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (689,769,737,'2010-03-18 00:00:00.000','2010-05-17 00:00:00.000',N'EA ',1,2.00,'2010-05-17 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (692,966,947,'2010-03-18 00:00:00.000','2010-05-17 00:00:00.000',N'EA ',1,2.00,'2010-05-17 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (693,954,941,'2010-03-18 00:00:00.000','2010-05-17 00:00:00.000',N'EA ',1,2.00,'2010-05-17 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (696,992,948,'2010-03-18 00:00:00.000','2010-05-17 00:00:00.000',N'EA ',1,2.00,'2010-05-17 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (697,795,948,'2010-03-18 00:00:00.000','2010-05-17 00:00:00.000',N'EA ',1,2.00,'2010-05-17 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (698,976,733,'2010-03-18 00:00:00.000','2010-05-17 00:00:00.000',N'EA ',1,2.00,'2010-05-17 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (701,983,806,'2010-03-18 00:00:00.000','2010-05-17 00:00:00.000',N'EA ',1,2.00,'2010-05-17 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (703,752,907,'2010-03-18 00:00:00.000','2010-05-17 00:00:00.000',N'EA ',1,2.00,'2010-05-17 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (712,964,994,'2010-03-18 00:00:00.000','2010-05-17 00:00:00.000',N'EA ',1,2.00,'2010-05-17 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (727,953,950,'2010-03-18 00:00:00.000','2010-05-17 00:00:00.000',N'EA ',1,2.00,'2010-05-17 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (740,767,724,'2010-03-18 00:00:00.000','2010-05-17 00:00:00.000',N'EA ',1,2.00,'2010-05-17 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (746,750,828,'2010-03-18 00:00:00.000','2010-05-17 00:00:00.000',N'EA ',1,2.00,'2010-05-17 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (748,752,828,'2010-03-18 00:00:00.000','2010-05-17 00:00:00.000',N'EA ',1,2.00,'2010-05-17 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (752,749,828,'2010-03-18 00:00:00.000','2010-05-17 00:00:00.000',N'EA ',1,2.00,'2010-05-17 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (758,946,398,'2010-03-18 00:00:00.000','2010-05-17 00:00:00.000',N'EA ',1,2.00,'2010-05-17 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (766,726,493,'2010-03-18 00:00:00.000','2010-05-17 00:00:00.000',N'OZ ',1,9.00,'2010-05-17 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (767,730,493,'2010-03-18 00:00:00.000','2010-05-17 00:00:00.000',N'OZ ',1,9.00,'2010-05-17 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (768,732,493,'2010-03-18 00:00:00.000','2010-05-17 00:00:00.000',N'OZ ',1,9.00,'2010-05-17 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (770,719,493,'2010-03-18 00:00:00.000','2010-05-17 00:00:00.000',N'OZ ',1,9.00,'2010-05-17 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (771,717,493,'2010-03-18 00:00:00.000','2010-05-17 00:00:00.000',N'OZ ',1,9.00,'2010-05-17 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (776,706,324,'2010-03-18 00:00:00.000',null,N'EA ',2,2.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (777,706,493,'2010-03-18 00:00:00.000',null,N'OZ ',2,8.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (778,706,532,'2010-03-18 00:00:00.000',null,N'EA ',2,4.00,'2010-03-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (779,706,534,'2010-05-06 00:00:00.000',null,N'EA ',2,1.00,'2010-04-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (780,980,994,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (781,973,995,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (782,775,996,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (783,null,797,'2010-07-26 00:00:00.000',null,N'EA ',0,1.00,'2010-07-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (784,950,318,'2010-05-26 00:00:00.000',null,N'EA ',2,2.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (785,984,952,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (786,771,952,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (787,951,322,'2010-05-26 00:00:00.000',null,N'EA ',2,3.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (788,822,324,'2010-05-26 00:00:00.000',null,N'EA ',2,2.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (789,814,325,'2010-05-26 00:00:00.000',null,N'EA ',2,2.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (790,822,326,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (791,810,328,'2010-05-26 00:00:00.000',null,N'EA ',2,2.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (792,797,945,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (793,942,803,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (794,989,943,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (795,775,747,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (796,782,816,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (797,946,356,'2010-05-26 00:00:00.000',null,N'IN ',2,40.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (798,821,401,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (799,980,808,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (800,782,810,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (801,823,490,'2010-05-26 00:00:00.000',null,N'EA ',2,36.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (802,942,494,'2010-05-26 00:00:00.000',null,N'OZ ',2,8.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (803,518,497,'2010-07-26 00:00:00.000',null,N'EA ',2,4.00,'2010-07-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (804,771,937,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (805,3,505,'2010-05-26 00:00:00.000',null,N'EA ',3,2.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (806,762,994,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (807,783,995,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (808,null,783,'2010-05-26 00:00:00.000',null,N'EA ',0,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (809,null,997,'2010-05-26 00:00:00.000',null,N'EA ',0,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (810,974,952,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (811,750,952,'2010-07-26 00:00:00.000',null,N'EA ',1,1.00,'2010-07-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (812,783,950,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (813,985,948,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (814,772,948,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (815,961,945,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (816,780,739,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (817,789,718,'2010-07-26 00:00:00.000',null,N'EA ',1,1.00,'2010-07-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (818,780,816,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (819,997,818,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (820,985,808,'2010-07-26 00:00:00.000',null,N'EA ',1,1.00,'2010-07-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (821,776,810,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (822,990,805,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (823,798,806,'2010-07-26 00:00:00.000',null,N'EA ',1,1.00,'2010-07-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (824,985,935,'2010-07-26 00:00:00.000',null,N'EA ',1,1.00,'2010-07-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (825,776,937,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (826,763,994,'2010-07-26 00:00:00.000',null,N'EA ',1,1.00,'2010-07-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (827,784,995,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (828,954,996,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (829,null,975,'2010-05-26 00:00:00.000',null,N'EA ',0,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (830,null,751,'2010-05-26 00:00:00.000',null,N'EA ',0,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (831,975,952,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (832,751,952,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (833,784,950,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (834,954,951,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (835,986,948,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (836,773,948,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (837,962,945,'2010-07-26 00:00:00.000',null,N'EA ',1,1.00,'2010-07-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (838,954,945,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (839,781,816,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (840,998,818,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (841,986,808,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (842,777,810,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (843,991,805,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (844,799,806,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (845,986,935,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (846,777,937,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (847,970,907,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (848,764,994,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (849,955,996,'2010-07-26 00:00:00.000',null,N'EA ',1,1.00,'2010-07-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (850,null,983,'2010-05-26 00:00:00.000',null,N'EA ',0,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (851,976,952,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (852,752,952,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (853,955,951,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (854,987,948,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (855,774,948,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (856,963,945,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (857,955,945,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (858,999,818,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (859,987,808,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (860,778,810,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (861,992,805,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (862,800,806,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (863,987,935,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (864,778,937,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (865,971,907,'2010-07-26 00:00:00.000',null,N'EA ',1,1.00,'2010-07-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (866,956,996,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (867,null,972,'2010-07-26 00:00:00.000',null,N'EA ',0,1.00,'2010-07-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (868,753,952,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (869,956,951,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (870,988,948,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (871,956,945,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (872,988,808,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (873,993,805,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (874,801,806,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (875,327,483,'2010-05-26 00:00:00.000',null,N'EA ',3,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (876,398,487,'2010-05-26 00:00:00.000',null,N'EA ',3,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (877,958,907,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (878,968,907,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (879,null,964,'2010-05-26 00:00:00.000',null,N'EA ',0,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (880,759,952,'2010-07-26 00:00:00.000',null,N'EA ',1,1.00,'2010-07-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (881,754,952,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (882,792,952,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (883,765,950,'2010-07-26 00:00:00.000',null,N'EA ',1,1.00,'2010-07-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (884,765,818,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (885,977,805,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (886,760,952,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (887,755,952,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (888,766,950,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (889,766,818,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (890,969,807,'2010-07-26 00:00:00.000',null,N'EA ',1,1.00,'2010-07-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (891,959,907,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (892,969,907,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (893,null,749,'2010-05-26 00:00:00.000',null,N'EA ',0,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (894,761,952,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (895,767,950,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (896,767,818,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (897,960,907,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (898,782,894,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (899,990,894,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (900,786,894,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (901,776,894,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (902,768,894,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (903,793,894,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (904,784,894,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (905,998,894,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (906,992,894,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (907,788,894,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (908,778,894,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (909,770,894,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (910,795,894,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (911,765,894,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (912,767,894,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (913,827,506,'2010-05-26 00:00:00.000',null,N'EA ',2,2.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (914,818,510,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (915,829,513,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (916,779,824,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (917,768,826,'2010-07-26 00:00:00.000',null,N'EA ',1,1.00,'2010-07-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (918,798,827,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (919,781,824,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (920,998,826,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (921,770,826,'2010-07-26 00:00:00.000',null,N'EA ',1,1.00,'2010-07-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (922,800,827,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (923,765,826,'2010-07-26 00:00:00.000',null,N'EA ',1,1.00,'2010-07-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (924,767,826,'2010-07-26 00:00:00.000',null,N'EA ',1,1.00,'2010-07-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (925,785,515,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (926,789,519,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (927,787,515,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (928,751,519,'2010-07-26 00:00:00.000',null,N'EA ',1,1.00,'2010-07-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (929,966,522,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (930,791,519,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (931,753,519,'2010-07-26 00:00:00.000',null,N'EA ',1,1.00,'2010-07-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (932,968,522,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (933,792,519,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (934,969,522,'2010-05-26 00:00:00.000',null,N'EA ',1,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (935,401,524,'2010-05-26 00:00:00.000',null,N'EA ',3,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (936,817,527,'2010-05-26 00:00:00.000',null,N'EA ',2,36.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (937,828,527,'2010-05-26 00:00:00.000',null,N'EA ',2,36.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (938,521,528,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (939,947,529,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (940,522,530,'2010-07-26 00:00:00.000',null,N'EA ',2,1.00,'2010-07-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (941,822,532,'2010-05-26 00:00:00.000',null,N'EA ',2,4.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (942,817,930,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (943,815,921,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (944,927,533,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (945,917,533,'2010-07-26 00:00:00.000',null,N'EA ',2,1.00,'2010-07-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (946,918,533,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (947,919,533,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (948,920,533,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (949,830,533,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (950,831,533,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (951,832,533,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (952,904,533,'2010-07-26 00:00:00.000',null,N'EA ',2,1.00,'2010-07-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (953,905,533,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (954,906,533,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (955,743,533,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (956,744,533,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (957,745,533,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (958,746,533,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (959,739,533,'2010-07-26 00:00:00.000',null,N'EA ',2,1.00,'2010-07-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (960,740,533,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (961,741,533,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (962,742,533,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (963,736,533,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (964,737,533,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (965,738,533,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (966,722,533,'2010-07-26 00:00:00.000',null,N'EA ',2,1.00,'2010-07-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (967,723,533,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (968,724,533,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (969,725,533,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (970,726,533,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (971,727,533,'2010-07-26 00:00:00.000',null,N'EA ',2,1.00,'2010-07-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (972,728,533,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (973,729,533,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (974,730,533,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (975,731,533,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (976,732,533,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (977,733,533,'2010-07-26 00:00:00.000',null,N'EA ',2,1.00,'2010-07-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (978,734,533,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (979,735,533,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (980,833,533,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (981,834,533,'2010-07-26 00:00:00.000',null,N'EA ',2,1.00,'2010-07-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (982,835,533,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (983,836,533,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (984,838,533,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (985,839,533,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (986,840,533,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (987,680,533,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (989,718,533,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (990,719,533,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (991,720,533,'2010-07-26 00:00:00.000',null,N'EA ',2,1.00,'2010-07-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (992,721,533,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (993,717,533,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (994,903,495,'2010-05-26 00:00:00.000',null,N'OZ ',2,8.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (995,903,533,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (996,895,495,'2010-07-26 00:00:00.000',null,N'OZ ',2,8.00,'2010-07-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (997,895,533,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (998,896,495,'2010-05-26 00:00:00.000',null,N'OZ ',2,8.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (999,896,533,'2010-07-26 00:00:00.000',null,N'EA ',2,1.00,'2010-07-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1000,897,495,'2010-05-26 00:00:00.000',null,N'OZ ',2,8.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1001,897,533,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1002,898,495,'2010-05-26 00:00:00.000',null,N'OZ ',2,8.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1003,898,533,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1004,899,533,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1005,900,533,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1006,901,533,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1007,902,533,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1008,886,533,'2010-07-26 00:00:00.000',null,N'EA ',2,1.00,'2010-07-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1009,890,495,'2010-05-26 00:00:00.000',null,N'OZ ',2,8.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1010,890,533,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1011,891,495,'2010-07-26 00:00:00.000',null,N'OZ ',2,8.00,'2010-07-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1012,891,533,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1013,892,495,'2010-05-26 00:00:00.000',null,N'OZ ',2,8.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1014,892,533,'2010-07-26 00:00:00.000',null,N'EA ',2,1.00,'2010-07-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1015,893,495,'2010-05-26 00:00:00.000',null,N'OZ ',2,8.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1016,893,533,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1017,887,533,'2010-07-26 00:00:00.000',null,N'EA ',2,1.00,'2010-07-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1018,888,533,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1019,889,533,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1020,885,533,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1021,925,325,'2010-07-26 00:00:00.000',null,N'EA ',2,2.00,'2010-07-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1022,926,325,'2010-05-26 00:00:00.000',null,N'EA ',2,2.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1023,927,325,'2010-05-26 00:00:00.000',null,N'EA ',2,2.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1024,null,797,'2010-05-26 00:00:00.000','2010-07-25 00:00:00.000',N'EA ',0,1.00,'2010-07-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1032,518,497,'2010-05-26 00:00:00.000','2010-07-25 00:00:00.000',N'EA ',1,5.00,'2010-07-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1037,750,952,'2010-05-26 00:00:00.000','2010-07-25 00:00:00.000',N'EA ',1,2.00,'2010-07-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1041,789,718,'2010-05-26 00:00:00.000','2010-07-25 00:00:00.000',N'EA ',1,2.00,'2010-07-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1043,985,808,'2010-05-26 00:00:00.000','2010-07-25 00:00:00.000',N'EA ',1,2.00,'2010-07-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1044,798,806,'2010-05-26 00:00:00.000','2010-07-25 00:00:00.000',N'EA ',1,2.00,'2010-07-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1045,985,935,'2010-05-26 00:00:00.000','2010-07-25 00:00:00.000',N'EA ',1,2.00,'2010-07-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1047,763,994,'2010-05-26 00:00:00.000','2010-07-25 00:00:00.000',N'EA ',1,2.00,'2010-07-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1053,962,945,'2010-05-26 00:00:00.000','2010-07-25 00:00:00.000',N'EA ',1,2.00,'2010-07-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1059,955,996,'2010-05-26 00:00:00.000','2010-07-25 00:00:00.000',N'EA ',1,2.00,'2010-07-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1068,971,907,'2010-05-26 00:00:00.000','2010-07-25 00:00:00.000',N'EA ',1,2.00,'2010-07-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1071,null,972,'2010-05-26 00:00:00.000','2010-07-25 00:00:00.000',N'EA ',0,1.00,'2010-07-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1079,759,952,'2010-05-26 00:00:00.000','2010-07-25 00:00:00.000',N'EA ',1,2.00,'2010-07-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1080,765,950,'2010-05-26 00:00:00.000','2010-07-25 00:00:00.000',N'EA ',1,2.00,'2010-07-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1091,969,807,'2010-05-26 00:00:00.000','2010-07-25 00:00:00.000',N'EA ',1,2.00,'2010-07-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1105,768,826,'2010-05-26 00:00:00.000','2010-07-25 00:00:00.000',N'EA ',1,2.00,'2010-07-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1107,770,826,'2010-05-26 00:00:00.000','2010-07-25 00:00:00.000',N'EA ',1,2.00,'2010-07-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1109,765,826,'2010-05-26 00:00:00.000','2010-07-25 00:00:00.000',N'EA ',1,2.00,'2010-07-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1111,767,826,'2010-05-26 00:00:00.000','2010-07-25 00:00:00.000',N'EA ',1,2.00,'2010-07-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1116,751,519,'2010-05-26 00:00:00.000','2010-07-25 00:00:00.000',N'EA ',1,2.00,'2010-07-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1119,753,519,'2010-05-26 00:00:00.000','2010-07-25 00:00:00.000',N'EA ',1,2.00,'2010-07-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1124,522,530,'2010-05-26 00:00:00.000','2010-07-25 00:00:00.000',N'EA ',1,2.00,'2010-07-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1129,917,533,'2010-05-26 00:00:00.000','2010-07-25 00:00:00.000',N'EA ',1,2.00,'2010-07-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1137,904,533,'2010-05-26 00:00:00.000','2010-07-25 00:00:00.000',N'EA ',1,2.00,'2010-07-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1145,739,533,'2010-05-26 00:00:00.000','2010-07-25 00:00:00.000',N'EA ',1,2.00,'2010-07-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1151,722,533,'2010-05-26 00:00:00.000','2010-07-25 00:00:00.000',N'EA ',1,2.00,'2010-07-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1152,727,533,'2010-05-26 00:00:00.000','2010-07-25 00:00:00.000',N'EA ',1,2.00,'2010-07-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1160,733,533,'2010-05-26 00:00:00.000','2010-07-25 00:00:00.000',N'EA ',1,2.00,'2010-07-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1165,834,533,'2010-05-26 00:00:00.000','2010-07-25 00:00:00.000',N'EA ',1,2.00,'2010-07-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1167,720,533,'2010-05-26 00:00:00.000','2010-07-25 00:00:00.000',N'EA ',1,2.00,'2010-07-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1178,895,495,'2010-05-26 00:00:00.000','2010-07-25 00:00:00.000',N'OZ ',1,9.00,'2010-07-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1179,896,533,'2010-05-26 00:00:00.000','2010-07-25 00:00:00.000',N'EA ',1,2.00,'2010-07-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1181,886,533,'2010-05-26 00:00:00.000','2010-07-25 00:00:00.000',N'EA ',1,2.00,'2010-07-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1186,891,495,'2010-05-26 00:00:00.000','2010-07-25 00:00:00.000',N'OZ ',1,9.00,'2010-07-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1187,892,533,'2010-05-26 00:00:00.000','2010-07-25 00:00:00.000',N'EA ',1,2.00,'2010-07-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1188,887,533,'2010-05-26 00:00:00.000','2010-07-25 00:00:00.000',N'EA ',1,2.00,'2010-07-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1189,925,325,'2010-05-26 00:00:00.000','2010-07-25 00:00:00.000',N'EA ',1,3.00,'2010-07-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1190,706,533,'2010-05-26 00:00:00.000',null,N'EA ',2,1.00,'2010-05-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1191,805,1,'2010-08-09 00:00:00.000',null,N'EA ',2,1.00,'2010-07-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1192,797,994,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1193,807,4,'2010-06-09 00:00:00.000',null,N'EA ',2,8.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1194,null,984,'2010-06-09 00:00:00.000',null,N'EA ',0,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1195,null,771,'2010-06-09 00:00:00.000',null,N'EA ',0,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1196,797,952,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1197,989,949,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1198,797,950,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1199,944,325,'2010-06-09 00:00:00.000',null,N'EA ',2,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1200,748,325,'2010-06-09 00:00:00.000',null,N'EA ',2,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1201,943,327,'2010-08-09 00:00:00.000',null,N'EA ',2,1.00,'2010-07-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1202,747,327,'2010-06-09 00:00:00.000',null,N'EA ',2,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1203,947,330,'2010-06-09 00:00:00.000',null,N'EA ',2,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1204,804,350,'2010-08-09 00:00:00.000',null,N'EA ',3,1.00,'2010-07-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1205,973,945,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1206,802,331,'2010-06-09 00:00:00.000',null,N'EA ',3,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1207,822,803,'2010-06-09 00:00:00.000',null,N'EA ',2,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1208,980,942,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1209,797,819,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1210,947,358,'2010-06-09 00:00:00.000',null,N'IN ',2,40.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1211,817,401,'2010-06-09 00:00:00.000',null,N'EA ',2,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1212,771,810,'2010-08-09 00:00:00.000',null,N'EA ',1,1.00,'2010-07-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1213,984,805,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1214,775,807,'2010-08-09 00:00:00.000',null,N'EA ',1,1.00,'2010-07-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1215,805,402,'2010-06-09 00:00:00.000',null,N'EA ',2,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1216,805,459,'2010-06-09 00:00:00.000',null,N'EA ',2,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1217,818,490,'2010-06-09 00:00:00.000',null,N'EA ',2,36.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1218,820,491,'2010-06-09 00:00:00.000',null,N'EA ',2,36.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1219,515,497,'2010-06-09 00:00:00.000',null,N'EA ',2,4.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1220,785,936,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1221,782,907,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1222,789,996,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1223,978,952,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1224,978,949,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1225,798,948,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1226,762,945,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1227,756,945,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1228,789,945,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1229,768,736,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1230,762,725,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1231,756,819,'2010-08-09 00:00:00.000',null,N'EA ',1,1.00,'2010-07-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1232,793,820,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1233,780,810,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1234,978,946,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1235,974,806,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1236,978,941,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1237,783,907,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1238,997,907,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1239,790,996,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1240,null,799,'2010-06-09 00:00:00.000',null,N'EA ',0,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1241,979,952,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1242,966,952,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1243,979,949,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1244,799,948,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1245,763,945,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1246,757,945,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1247,790,945,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1248,991,925,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1249,777,744,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1250,998,737,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1251,975,835,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1252,757,819,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1253,794,820,'2010-08-09 00:00:00.000',null,N'EA ',1,1.00,'2010-07-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1254,781,810,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1255,979,946,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1256,975,806,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1257,979,941,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1258,966,941,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1259,784,907,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1260,998,907,'2010-08-09 00:00:00.000',null,N'EA ',1,1.00,'2010-07-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1261,791,996,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1262,null,992,'2010-06-09 00:00:00.000',null,N'EA ',0,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1263,null,788,'2010-06-09 00:00:00.000',null,N'EA ',0,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1264,null,778,'2010-06-09 00:00:00.000',null,N'EA ',0,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1265,null,770,'2010-06-09 00:00:00.000',null,N'EA ',0,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1266,null,795,'2010-06-09 00:00:00.000',null,N'EA ',0,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1267,967,952,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1268,800,948,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1269,764,945,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1270,758,945,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1271,791,945,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1272,983,906,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1273,758,733,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1274,967,891,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1275,758,819,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1276,795,820,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1277,976,806,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1278,967,941,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1279,999,907,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1280,958,952,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1281,968,952,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1282,958,949,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1283,801,948,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1284,988,920,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1285,972,892,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1286,796,820,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1287,958,946,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1288,529,477,'2010-06-09 00:00:00.000',null,N'EA ',3,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1289,331,482,'2010-06-09 00:00:00.000',null,N'EA ',4,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1290,324,486,'2010-06-09 00:00:00.000',null,N'EA ',3,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1291,972,941,'2010-08-09 00:00:00.000',null,N'EA ',1,1.00,'2010-07-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1292,993,907,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1293,796,907,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1294,964,948,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1295,964,821,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1296,759,811,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1297,759,806,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1298,754,806,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1299,792,806,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1300,759,938,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1301,765,907,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1302,959,994,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1303,null,953,'2010-06-09 00:00:00.000',null,N'EA ',0,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1304,953,952,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1305,957,948,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1306,766,723,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1307,760,729,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1308,957,821,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1309,760,811,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1310,760,806,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
GO -- SQRIBE/GO;341e11
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1311,755,806,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1312,760,938,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1313,953,941,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1314,766,907,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1315,960,994,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1316,749,996,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1317,749,951,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1318,965,948,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1319,749,945,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1320,965,821,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1321,761,811,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1322,761,806,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1323,761,938,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1324,767,907,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1325,984,894,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1326,771,894,'2010-08-09 00:00:00.000',null,N'EA ',1,1.00,'2010-07-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1327,981,894,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1328,780,894,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1329,986,894,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1330,773,894,'2010-08-09 00:00:00.000',null,N'EA ',1,1.00,'2010-07-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1331,983,894,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1332,988,894,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1333,824,506,'2010-06-09 00:00:00.000',null,N'EA ',2,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1334,819,506,'2010-06-09 00:00:00.000',null,N'EA ',2,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1335,817,509,'2010-06-09 00:00:00.000',null,N'EA ',2,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1336,828,512,'2010-06-09 00:00:00.000',null,N'EA ',2,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1337,990,823,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1338,974,827,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1339,961,829,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1340,757,827,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1341,794,828,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1342,992,823,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1343,976,827,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1344,963,829,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1345,955,829,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1346,796,828,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1347,964,829,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1348,755,827,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1349,965,829,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1350,768,517,'2010-08-09 00:00:00.000',null,N'EA ',1,1.00,'2010-07-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1351,798,518,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1352,998,517,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1353,770,517,'2010-08-09 00:00:00.000',null,N'EA ',1,1.00,'2010-07-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1354,800,518,'2010-06-09 00:00:00.000',null,N'EA ',1,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1355,765,517,'2010-08-09 00:00:00.000',null,N'EA ',1,1.00,'2010-07-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1356,767,517,'2010-08-09 00:00:00.000',null,N'EA ',1,1.00,'2010-07-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1357,516,910,'2010-06-09 00:00:00.000',null,N'EA ',2,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1358,521,915,'2010-06-09 00:00:00.000',null,N'EA ',2,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1359,825,527,'2010-06-09 00:00:00.000',null,N'EA ',2,36.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1360,518,528,'2010-06-09 00:00:00.000',null,N'EA ',2,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1361,812,529,'2010-08-09 00:00:00.000',null,N'EA ',2,1.00,'2010-07-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1362,519,530,'2010-06-09 00:00:00.000',null,N'EA ',2,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1363,943,533,'2010-06-09 00:00:00.000',null,N'EA ',2,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1364,747,533,'2010-06-09 00:00:00.000',null,N'EA ',2,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1365,813,398,'2010-06-09 00:00:00.000',null,N'EA ',2,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1366,825,930,'2010-06-09 00:00:00.000',null,N'EA ',2,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1367,823,921,'2010-08-09 00:00:00.000',null,N'EA ',2,1.00,'2010-07-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1368,814,534,'2010-06-09 00:00:00.000',null,N'EA ',2,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1369,927,802,'2010-06-09 00:00:00.000',null,N'EA ',2,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1370,927,492,'2010-08-09 00:00:00.000',null,N'OZ ',2,8.00,'2010-07-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1371,917,324,'2010-06-09 00:00:00.000',null,N'EA ',2,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1372,917,802,'2010-06-09 00:00:00.000',null,N'EA ',2,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1373,918,324,'2010-06-09 00:00:00.000',null,N'EA ',2,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1374,918,802,'2010-06-09 00:00:00.000',null,N'EA ',2,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1375,919,324,'2010-08-09 00:00:00.000',null,N'EA ',2,2.00,'2010-07-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1376,919,802,'2010-06-09 00:00:00.000',null,N'EA ',2,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1377,920,324,'2010-06-09 00:00:00.000',null,N'EA ',2,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1378,920,802,'2010-06-09 00:00:00.000',null,N'EA ',2,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1379,830,324,'2010-06-09 00:00:00.000',null,N'EA ',2,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1380,830,492,'2010-06-09 00:00:00.000',null,N'OZ ',2,8.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1381,831,324,'2010-08-09 00:00:00.000',null,N'EA ',2,2.00,'2010-07-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1382,831,492,'2010-06-09 00:00:00.000',null,N'OZ ',2,8.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1383,832,324,'2010-06-09 00:00:00.000',null,N'EA ',2,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1384,832,492,'2010-06-09 00:00:00.000',null,N'OZ ',2,8.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1385,904,324,'2010-06-09 00:00:00.000',null,N'EA ',2,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1386,905,324,'2010-06-09 00:00:00.000',null,N'EA ',2,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1387,906,324,'2010-08-09 00:00:00.000',null,N'EA ',2,2.00,'2010-07-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1388,743,324,'2010-06-09 00:00:00.000',null,N'EA ',2,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1389,743,492,'2010-06-09 00:00:00.000',null,N'OZ ',2,8.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1390,744,324,'2010-08-09 00:00:00.000',null,N'EA ',2,2.00,'2010-07-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1391,744,492,'2010-06-09 00:00:00.000',null,N'OZ ',2,8.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1392,745,324,'2010-06-09 00:00:00.000',null,N'EA ',2,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1393,745,492,'2010-06-09 00:00:00.000',null,N'OZ ',2,8.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1394,746,324,'2010-06-09 00:00:00.000',null,N'EA ',2,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1395,746,492,'2010-08-09 00:00:00.000',null,N'OZ ',2,8.00,'2010-07-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1396,739,324,'2010-06-09 00:00:00.000',null,N'EA ',2,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1397,740,324,'2010-06-09 00:00:00.000',null,N'EA ',2,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1398,741,324,'2010-08-09 00:00:00.000',null,N'EA ',2,2.00,'2010-07-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1399,742,324,'2010-06-09 00:00:00.000',null,N'EA ',2,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1400,736,324,'2010-06-09 00:00:00.000',null,N'EA ',2,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1401,736,802,'2010-06-09 00:00:00.000',null,N'EA ',2,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1402,736,492,'2010-06-09 00:00:00.000',null,N'OZ ',2,8.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1403,737,324,'2010-08-09 00:00:00.000',null,N'EA ',2,2.00,'2010-07-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1404,737,802,'2010-06-09 00:00:00.000',null,N'EA ',2,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1405,737,492,'2010-06-09 00:00:00.000',null,N'OZ ',2,8.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1406,738,324,'2010-06-09 00:00:00.000',null,N'EA ',2,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1407,738,802,'2010-06-09 00:00:00.000',null,N'EA ',2,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1408,738,492,'2010-06-09 00:00:00.000',null,N'OZ ',2,8.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1409,722,324,'2010-06-09 00:00:00.000',null,N'EA ',2,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1410,722,802,'2010-06-09 00:00:00.000',null,N'EA ',2,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1411,722,492,'2010-06-09 00:00:00.000',null,N'OZ ',2,8.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1412,723,324,'2010-06-09 00:00:00.000',null,N'EA ',2,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1413,723,802,'2010-06-09 00:00:00.000',null,N'EA ',2,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1414,723,492,'2010-06-09 00:00:00.000',null,N'OZ ',2,8.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1415,724,324,'2010-08-09 00:00:00.000',null,N'EA ',2,2.00,'2010-07-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1416,724,802,'2010-06-09 00:00:00.000',null,N'EA ',2,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1417,724,492,'2010-06-09 00:00:00.000',null,N'OZ ',2,8.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1418,725,324,'2010-06-09 00:00:00.000',null,N'EA ',2,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1419,725,802,'2010-06-09 00:00:00.000',null,N'EA ',2,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1420,726,324,'2010-06-09 00:00:00.000',null,N'EA ',2,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1421,726,802,'2010-06-09 00:00:00.000',null,N'EA ',2,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1422,727,324,'2010-06-09 00:00:00.000',null,N'EA ',2,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1423,727,802,'2010-06-09 00:00:00.000',null,N'EA ',2,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1424,728,324,'2010-08-09 00:00:00.000',null,N'EA ',2,2.00,'2010-07-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1425,728,802,'2010-06-09 00:00:00.000',null,N'EA ',2,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1426,729,324,'2010-06-09 00:00:00.000',null,N'EA ',2,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1427,729,802,'2010-06-09 00:00:00.000',null,N'EA ',2,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1428,730,324,'2010-06-09 00:00:00.000',null,N'EA ',2,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1429,730,802,'2010-06-09 00:00:00.000',null,N'EA ',2,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1430,731,324,'2010-06-09 00:00:00.000',null,N'EA ',2,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1431,732,324,'2010-06-09 00:00:00.000',null,N'EA ',2,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1432,733,324,'2010-06-09 00:00:00.000',null,N'EA ',2,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1433,734,324,'2010-08-09 00:00:00.000',null,N'EA ',2,2.00,'2010-07-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1434,735,324,'2010-06-09 00:00:00.000',null,N'EA ',2,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1435,833,324,'2010-06-09 00:00:00.000',null,N'EA ',2,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1436,834,324,'2010-06-09 00:00:00.000',null,N'EA ',2,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1437,835,324,'2010-06-09 00:00:00.000',null,N'EA ',2,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1438,836,324,'2010-08-09 00:00:00.000',null,N'EA ',2,2.00,'2010-07-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1439,838,324,'2010-06-09 00:00:00.000',null,N'EA ',2,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1440,838,492,'2010-06-09 00:00:00.000',null,N'OZ ',2,8.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1441,839,324,'2010-08-09 00:00:00.000',null,N'EA ',2,2.00,'2010-07-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1442,839,492,'2010-06-09 00:00:00.000',null,N'OZ ',2,8.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1443,840,324,'2010-06-09 00:00:00.000',null,N'EA ',2,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1444,840,492,'2010-06-09 00:00:00.000',null,N'OZ ',2,8.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1445,680,324,'2010-06-09 00:00:00.000',null,N'EA ',2,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1446,680,492,'2010-08-09 00:00:00.000',null,N'OZ ',2,8.00,'2010-07-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1449,718,324,'2010-06-09 00:00:00.000',null,N'EA ',2,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1450,719,324,'2010-06-09 00:00:00.000',null,N'EA ',2,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1451,720,324,'2010-06-09 00:00:00.000',null,N'EA ',2,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1452,721,324,'2010-06-09 00:00:00.000',null,N'EA ',2,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1453,717,324,'2010-06-09 00:00:00.000',null,N'EA ',2,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1454,903,324,'2010-08-09 00:00:00.000',null,N'EA ',2,2.00,'2010-07-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1455,903,802,'2010-06-09 00:00:00.000',null,N'EA ',2,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1456,895,324,'2010-06-09 00:00:00.000',null,N'EA ',2,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1457,895,802,'2010-06-09 00:00:00.000',null,N'EA ',2,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1458,896,324,'2010-06-09 00:00:00.000',null,N'EA ',2,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1459,896,802,'2010-06-09 00:00:00.000',null,N'EA ',2,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1460,897,324,'2010-06-09 00:00:00.000',null,N'EA ',2,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1461,897,802,'2010-06-09 00:00:00.000',null,N'EA ',2,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1462,898,324,'2010-06-09 00:00:00.000',null,N'EA ',2,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1463,898,802,'2010-06-09 00:00:00.000',null,N'EA ',2,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1464,899,324,'2010-06-09 00:00:00.000',null,N'EA ',2,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1465,899,802,'2010-06-09 00:00:00.000',null,N'EA ',2,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1466,900,324,'2010-06-09 00:00:00.000',null,N'EA ',2,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1467,900,802,'2010-06-09 00:00:00.000',null,N'EA ',2,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1468,901,324,'2010-08-09 00:00:00.000',null,N'EA ',2,2.00,'2010-07-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1469,901,802,'2010-06-09 00:00:00.000',null,N'EA ',2,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1470,902,324,'2010-06-09 00:00:00.000',null,N'EA ',2,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1471,902,802,'2010-06-09 00:00:00.000',null,N'EA ',2,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1472,886,324,'2010-06-09 00:00:00.000',null,N'EA ',2,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1473,886,802,'2010-06-09 00:00:00.000',null,N'EA ',2,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1474,890,324,'2010-06-09 00:00:00.000',null,N'EA ',2,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1475,891,324,'2010-06-09 00:00:00.000',null,N'EA ',2,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1476,892,324,'2010-06-09 00:00:00.000',null,N'EA ',2,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1477,893,324,'2010-08-09 00:00:00.000',null,N'EA ',2,2.00,'2010-07-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1478,887,324,'2010-06-09 00:00:00.000',null,N'EA ',2,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1479,888,324,'2010-06-09 00:00:00.000',null,N'EA ',2,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1480,889,324,'2010-08-09 00:00:00.000',null,N'EA ',2,2.00,'2010-07-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1481,885,324,'2010-06-09 00:00:00.000',null,N'EA ',2,2.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1482,924,534,'2010-06-09 00:00:00.000',null,N'EA ',2,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1483,925,534,'2010-06-09 00:00:00.000',null,N'EA ',2,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1484,926,534,'2010-06-09 00:00:00.000',null,N'EA ',2,1.00,'2010-05-26 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1485,805,1,'2010-06-09 00:00:00.000','2010-08-08 00:00:00.000',N'EA ',1,2.00,'2010-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1489,943,327,'2010-06-09 00:00:00.000','2010-08-08 00:00:00.000',N'EA ',1,2.00,'2010-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1491,804,350,'2010-06-09 00:00:00.000','2010-08-08 00:00:00.000',N'EA ',2,2.00,'2010-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1493,980,944,'2010-06-09 00:00:00.000','2010-08-08 00:00:00.000',N'EA ',1,2.00,'2010-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1495,771,810,'2010-06-09 00:00:00.000','2010-08-08 00:00:00.000',N'EA ',1,2.00,'2010-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1496,775,807,'2010-06-09 00:00:00.000','2010-08-08 00:00:00.000',N'EA ',1,2.00,'2010-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1505,756,819,'2010-06-09 00:00:00.000','2010-08-08 00:00:00.000',N'EA ',1,2.00,'2010-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1511,794,820,'2010-06-09 00:00:00.000','2010-08-08 00:00:00.000',N'EA ',1,2.00,'2010-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1513,998,907,'2010-06-09 00:00:00.000','2010-08-08 00:00:00.000',N'EA ',1,2.00,'2010-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1528,972,941,'2010-06-09 00:00:00.000','2010-08-08 00:00:00.000',N'EA ',1,2.00,'2010-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1550,771,894,'2010-06-09 00:00:00.000','2010-08-08 00:00:00.000',N'EA ',1,2.00,'2010-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1553,773,894,'2010-06-09 00:00:00.000','2010-08-08 00:00:00.000',N'EA ',1,2.00,'2010-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1570,768,517,'2010-06-09 00:00:00.000','2010-08-08 00:00:00.000',N'EA ',1,2.00,'2010-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1571,770,517,'2010-06-09 00:00:00.000','2010-08-08 00:00:00.000',N'EA ',1,2.00,'2010-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1572,765,517,'2010-06-09 00:00:00.000','2010-08-08 00:00:00.000',N'EA ',1,2.00,'2010-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1573,767,517,'2010-06-09 00:00:00.000','2010-08-08 00:00:00.000',N'EA ',1,2.00,'2010-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1574,812,529,'2010-06-09 00:00:00.000','2010-08-08 00:00:00.000',N'EA ',1,2.00,'2010-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1576,823,921,'2010-06-09 00:00:00.000','2010-08-08 00:00:00.000',N'EA ',1,2.00,'2010-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1577,927,492,'2010-06-09 00:00:00.000','2010-08-08 00:00:00.000',N'OZ ',1,9.00,'2010-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1580,919,324,'2010-06-09 00:00:00.000','2010-08-08 00:00:00.000',N'EA ',1,3.00,'2010-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1584,831,324,'2010-06-09 00:00:00.000','2010-08-08 00:00:00.000',N'EA ',1,3.00,'2010-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1588,906,324,'2010-06-09 00:00:00.000','2010-08-08 00:00:00.000',N'EA ',1,3.00,'2010-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1592,744,324,'2010-06-09 00:00:00.000','2010-08-08 00:00:00.000',N'EA ',1,3.00,'2010-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1593,746,492,'2010-06-09 00:00:00.000','2010-08-08 00:00:00.000',N'OZ ',1,9.00,'2010-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1596,741,324,'2010-06-09 00:00:00.000','2010-08-08 00:00:00.000',N'EA ',1,3.00,'2010-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1600,737,324,'2010-06-09 00:00:00.000','2010-08-08 00:00:00.000',N'EA ',1,3.00,'2010-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1602,724,324,'2010-06-09 00:00:00.000','2010-08-08 00:00:00.000',N'EA ',1,3.00,'2010-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1603,728,324,'2010-06-09 00:00:00.000','2010-08-08 00:00:00.000',N'EA ',1,3.00,'2010-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1611,734,324,'2010-06-09 00:00:00.000','2010-08-08 00:00:00.000',N'EA ',1,3.00,'2010-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1615,836,324,'2010-06-09 00:00:00.000','2010-08-08 00:00:00.000',N'EA ',1,3.00,'2010-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1616,839,324,'2010-06-09 00:00:00.000','2010-08-08 00:00:00.000',N'EA ',1,3.00,'2010-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1617,680,492,'2010-06-09 00:00:00.000','2010-08-08 00:00:00.000',N'OZ ',1,9.00,'2010-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1628,903,324,'2010-06-09 00:00:00.000','2010-08-08 00:00:00.000',N'EA ',1,3.00,'2010-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1630,901,324,'2010-06-09 00:00:00.000','2010-08-08 00:00:00.000',N'EA ',1,3.00,'2010-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1637,893,324,'2010-06-09 00:00:00.000','2010-08-08 00:00:00.000',N'EA ',1,3.00,'2010-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1638,889,324,'2010-06-09 00:00:00.000','2010-08-08 00:00:00.000',N'EA ',1,3.00,'2010-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1639,771,996,'2010-08-19 00:00:00.000',null,N'EA ',1,1.00,'2010-08-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1640,995,3,'2010-06-19 00:00:00.000',null,N'EA ',2,10.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1641,null,980,'2010-06-19 00:00:00.000',null,N'EA ',0,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1642,null,779,'2010-06-19 00:00:00.000',null,N'EA ',0,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1643,951,319,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1644,805,323,'2010-06-19 00:00:00.000',null,N'EA ',2,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1645,942,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1646,814,327,'2010-06-19 00:00:00.000',null,N'EA ',2,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1647,811,329,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1648,943,802,'2010-06-19 00:00:00.000',null,N'EA ',2,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1649,949,332,'2010-06-19 00:00:00.000',null,N'EA ',2,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1650,779,748,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1651,779,816,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1652,809,357,'2010-06-19 00:00:00.000',null,N'IN ',2,40.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1653,818,400,'2010-06-19 00:00:00.000',null,N'EA ',2,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1654,825,401,'2010-06-19 00:00:00.000',null,N'EA ',2,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1655,779,810,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1656,973,806,'2010-08-19 00:00:00.000',null,N'EA ',1,1.00,'2010-08-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1657,3,461,'2010-06-19 00:00:00.000',null,N'EA ',3,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1658,826,490,'2010-06-19 00:00:00.000',null,N'EA ',2,36.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1659,814,492,'2010-06-19 00:00:00.000',null,N'OZ ',2,8.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1660,520,497,'2010-06-19 00:00:00.000',null,N'EA ',2,4.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1661,782,936,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1662,989,907,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1663,785,907,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1664,775,907,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1665,978,994,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1666,780,995,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1667,750,996,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1668,null,978,'2010-06-19 00:00:00.000',null,N'EA ',0,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1669,981,950,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1670,780,950,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1671,750,951,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1672,961,948,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1673,974,945,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1674,750,945,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1675,783,743,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1676,772,739,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1677,961,899,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1678,990,815,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1679,974,819,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1680,961,821,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1681,772,810,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1682,762,811,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1683,985,805,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1684,762,806,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1685,756,806,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1686,789,806,'2010-08-19 00:00:00.000',null,N'EA ',1,1.00,'2010-08-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1687,776,807,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1688,772,937,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1689,762,938,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1690,990,907,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1691,786,907,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1692,776,907,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1693,768,907,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1694,793,907,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1695,979,994,'2010-08-19 00:00:00.000',null,N'EA ',1,1.00,'2010-08-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1696,781,995,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1697,751,996,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1698,null,962,'2010-06-19 00:00:00.000',null,N'EA ',0,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1699,null,954,'2010-06-19 00:00:00.000',null,N'EA ',0,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1700,970,952,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1701,982,950,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1702,781,950,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1703,751,951,'2010-08-19 00:00:00.000',null,N'EA ',1,1.00,'2010-08-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1704,962,948,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1705,954,948,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1706,975,945,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1707,751,945,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1708,787,831,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1709,794,839,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1710,751,719,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1711,991,815,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1712,975,819,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1713,962,821,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1714,954,821,'2010-08-19 00:00:00.000',null,N'EA ',1,1.00,'2010-08-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1715,773,810,'2010-08-19 00:00:00.000',null,N'EA ',1,1.00,'2010-08-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1716,763,811,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1717,986,805,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1718,763,806,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1719,757,806,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1720,790,806,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1721,777,807,'2010-08-19 00:00:00.000',null,N'EA ',1,1.00,'2010-08-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1722,773,937,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1723,763,938,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1724,970,941,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1725,991,907,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1726,787,907,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1727,777,907,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1728,769,907,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1729,794,907,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1730,752,996,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1731,null,999,'2010-08-19 00:00:00.000',null,N'EA ',0,1.00,'2010-08-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1732,971,952,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1733,983,950,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1734,752,951,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1735,963,948,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1736,955,948,'2010-08-19 00:00:00.000',null,N'EA ',1,1.00,'2010-08-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1737,976,945,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1738,752,945,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1739,791,720,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1740,992,815,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1741,976,819,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1742,963,821,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1743,955,821,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1744,774,810,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1745,764,811,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1746,987,805,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1747,764,806,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1748,758,806,'2010-08-19 00:00:00.000',null,N'EA ',1,1.00,'2010-08-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1749,791,806,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1750,778,807,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1751,774,937,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1752,764,938,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1753,971,941,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1754,992,907,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1755,788,907,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1756,778,907,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1757,770,907,'2010-08-19 00:00:00.000',null,N'EA ',1,1.00,'2010-08-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1758,795,907,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1759,958,994,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1760,753,996,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1761,null,753,'2010-08-19 00:00:00.000',null,N'EA ',0,1.00,'2010-08-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1762,972,952,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1763,753,951,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1764,956,948,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1765,753,945,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1766,993,815,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1767,956,821,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1768,988,805,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1769,532,484,'2010-08-19 00:00:00.000',null,N'EA ',3,1.00,'2010-08-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1770,958,941,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1771,968,941,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1772,792,996,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1773,759,945,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1774,754,945,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1775,792,945,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1776,754,819,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1777,977,907,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1778,null,959,'2010-06-19 00:00:00.000',null,N'EA ',0,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1779,null,969,'2010-06-19 00:00:00.000',null,N'EA ',0,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1780,959,952,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1781,969,952,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1782,959,949,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1783,760,945,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1784,755,945,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1785,755,819,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1786,959,946,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1787,959,941,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1788,969,941,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1789,null,965,'2010-06-19 00:00:00.000',null,N'EA ',0,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1790,960,952,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1791,960,949,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1792,761,945,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1793,749,717,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1794,960,946,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1795,960,941,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1796,980,894,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1797,779,894,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1798,985,894,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1799,772,894,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1800,982,894,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1801,781,894,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1802,987,894,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1803,774,894,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1804,829,506,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1805,823,507,'2010-06-19 00:00:00.000',null,N'EA ',2,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1806,989,823,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1807,973,827,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1808,756,827,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1809,793,828,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1810,991,823,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1811,975,827,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1812,962,829,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1813,954,829,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1814,758,827,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1815,795,828,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1816,993,823,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1817,956,829,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1818,754,827,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1819,957,829,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1820,797,518,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1821,997,517,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1822,769,517,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1823,799,518,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1824,999,517,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1825,801,518,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1826,977,517,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1827,766,517,'2010-06-19 00:00:00.000',null,N'EA ',1,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1828,994,525,'2010-06-19 00:00:00.000',null,N'EA ',2,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1829,819,527,'2010-06-19 00:00:00.000',null,N'EA ',2,36.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1830,514,530,'2010-06-19 00:00:00.000',null,N'EA ',2,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1831,802,531,'2010-06-19 00:00:00.000',null,N'EA ',3,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1832,814,533,'2010-06-19 00:00:00.000',null,N'EA ',2,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1833,808,398,'2010-06-19 00:00:00.000',null,N'EA ',2,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1834,818,931,'2010-06-19 00:00:00.000',null,N'EA ',2,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1835,817,921,'2010-06-19 00:00:00.000',null,N'EA ',2,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1836,827,922,'2010-06-19 00:00:00.000',null,N'EA ',2,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1837,943,534,'2010-06-19 00:00:00.000',null,N'EA ',2,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1838,747,534,'2010-06-19 00:00:00.000',null,N'EA ',2,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1839,917,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1840,918,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1841,919,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1842,920,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1843,830,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1844,831,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1845,832,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1846,904,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1847,905,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1848,906,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1849,743,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1850,744,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1851,745,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1852,746,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1853,739,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1854,740,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1855,741,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1856,742,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1857,736,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1858,737,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1859,738,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1860,722,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1861,723,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1862,724,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1863,725,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1864,726,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1865,727,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1866,728,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1867,729,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1868,730,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1869,731,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1870,732,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1871,733,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1872,734,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1873,735,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1874,833,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1875,834,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1876,835,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1877,836,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1878,838,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1879,839,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1880,840,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1881,680,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1883,718,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1884,719,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1885,720,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1886,721,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1887,717,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1888,903,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1889,895,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1890,896,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1891,897,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1892,898,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1893,899,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1894,900,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1895,901,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1896,902,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1897,886,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1898,890,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1899,891,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1900,892,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1901,893,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1902,887,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1903,888,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1904,889,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1905,885,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1906,924,326,'2010-06-19 00:00:00.000',null,N'EA ',2,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1907,925,326,'2010-06-19 00:00:00.000',null,N'EA ',2,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1908,926,326,'2010-08-19 00:00:00.000',null,N'EA ',2,1.00,'2010-08-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1909,927,326,'2010-06-19 00:00:00.000',null,N'EA ',2,1.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1910,771,996,'2010-06-19 00:00:00.000','2010-08-18 00:00:00.000',N'EA ',1,2.00,'2010-08-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1916,973,806,'2010-06-19 00:00:00.000','2010-08-18 00:00:00.000',N'EA ',1,2.00,'2010-08-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1925,789,806,'2010-06-19 00:00:00.000','2010-08-18 00:00:00.000',N'EA ',1,2.00,'2010-08-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1928,979,994,'2010-06-19 00:00:00.000','2010-08-18 00:00:00.000',N'EA ',1,2.00,'2010-08-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1932,751,951,'2010-06-19 00:00:00.000','2010-08-18 00:00:00.000',N'EA ',1,2.00,'2010-08-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1935,954,821,'2010-06-19 00:00:00.000','2010-08-18 00:00:00.000',N'EA ',1,2.00,'2010-08-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1936,773,810,'2010-06-19 00:00:00.000','2010-08-18 00:00:00.000',N'EA ',1,2.00,'2010-08-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1937,777,807,'2010-06-19 00:00:00.000','2010-08-18 00:00:00.000',N'EA ',1,2.00,'2010-08-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1938,null,999,'2010-06-19 00:00:00.000','2010-08-18 00:00:00.000',N'EA ',0,1.00,'2010-08-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1941,955,948,'2010-06-19 00:00:00.000','2010-08-18 00:00:00.000',N'EA ',1,2.00,'2010-08-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1945,758,806,'2010-06-19 00:00:00.000','2010-08-18 00:00:00.000',N'EA ',1,2.00,'2010-08-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1947,770,907,'2010-06-19 00:00:00.000','2010-08-18 00:00:00.000',N'EA ',1,2.00,'2010-08-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1950,null,753,'2010-06-19 00:00:00.000','2010-08-18 00:00:00.000',N'EA ',0,1.00,'2010-08-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1956,532,484,'2010-06-19 00:00:00.000','2010-08-18 00:00:00.000',N'EA ',2,2.00,'2010-08-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1998,926,326,'2010-06-19 00:00:00.000','2010-08-18 00:00:00.000',N'EA ',1,2.00,'2010-08-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (1999,706,325,'2010-06-19 00:00:00.000',null,N'EA ',2,2.00,'2010-06-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2000,3,2,'2010-07-08 00:00:00.000',null,N'EA ',3,10.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2001,779,995,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2002,994,3,'2010-07-08 00:00:00.000',null,N'EA ',2,10.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2003,814,324,'2010-07-08 00:00:00.000',null,N'EA ',2,2.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2004,771,951,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2005,814,326,'2010-07-08 00:00:00.000',null,N'EA ',2,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2006,822,327,'2010-09-07 00:00:00.000',null,N'EA ',2,1.00,'2010-08-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2007,984,948,'2010-09-07 00:00:00.000',null,N'EA ',1,1.00,'2010-08-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2008,771,948,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2009,989,945,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2010,785,945,'2010-09-07 00:00:00.000',null,N'EA ',1,1.00,'2010-08-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2011,775,945,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2012,748,804,'2010-07-08 00:00:00.000',null,N'EA ',2,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2013,980,815,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2014,815,400,'2010-07-08 00:00:00.000',null,N'EA ',2,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2015,824,401,'2010-09-07 00:00:00.000',null,N'EA ',2,1.00,'2010-08-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2016,782,806,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2017,942,399,'2010-07-08 00:00:00.000',null,N'EA ',2,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2018,824,490,'2010-09-07 00:00:00.000',null,N'EA ',2,36.00,'2010-08-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2019,943,492,'2010-07-08 00:00:00.000',null,N'OZ ',2,8.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2020,748,494,'2010-09-07 00:00:00.000',null,N'OZ ',2,8.00,'2010-08-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2021,822,496,'2010-07-08 00:00:00.000',null,N'OZ ',2,8.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2022,519,497,'2010-07-08 00:00:00.000',null,N'EA ',2,4.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2023,797,907,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2024,981,994,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2025,974,995,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2026,776,996,'2010-09-07 00:00:00.000',null,N'EA ',1,1.00,'2010-08-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2027,null,961,'2010-07-08 00:00:00.000',null,N'EA ',0,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2028,981,952,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2029,780,952,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2030,974,950,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2031,978,948,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2032,783,945,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2033,997,945,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2034,786,830,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2035,793,838,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2036,750,718,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2037,978,821,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2038,768,811,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2039,798,812,'2010-09-07 00:00:00.000',null,N'EA ',1,1.00,'2010-08-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2040,786,806,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2041,768,806,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2042,793,806,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2043,768,938,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2044,798,939,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2045,798,907,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2046,982,994,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2047,975,995,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2048,777,996,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2049,null,784,'2010-07-08 00:00:00.000',null,N'EA ',0,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2050,null,998,'2010-07-08 00:00:00.000',null,N'EA ',0,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2051,982,952,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2052,781,952,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2053,975,950,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2054,979,948,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2055,966,948,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2056,784,945,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2057,998,945,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2058,781,742,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2059,790,719,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2060,979,821,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2061,966,821,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2062,769,811,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2063,799,812,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2064,787,806,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2065,769,806,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2066,794,806,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2067,769,938,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2068,799,939,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2069,799,907,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2070,983,994,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2071,976,995,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2072,778,996,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2073,null,976,'2010-07-08 00:00:00.000',null,N'EA ',0,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2074,null,752,'2010-07-08 00:00:00.000',null,N'EA ',0,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2075,983,952,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2076,976,950,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2077,967,948,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2078,999,945,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2079,967,821,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2080,770,811,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2081,800,812,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2082,788,806,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2083,770,806,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2084,795,806,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2085,770,938,'2010-09-07 00:00:00.000',null,N'EA ',1,1.00,'2010-08-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2086,800,939,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2087,800,907,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2088,958,948,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2089,968,948,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2090,958,821,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2091,968,821,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2092,801,812,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2093,796,806,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2094,531,487,'2010-07-08 00:00:00.000',null,N'EA ',4,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2095,956,907,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2096,754,995,'2010-09-07 00:00:00.000',null,N'EA ',1,1.00,'2010-08-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2097,759,950,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2098,754,950,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2099,792,950,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2100,765,945,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2101,964,902,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2102,759,818,'2010-09-07 00:00:00.000',null,N'EA ',1,1.00,'2010-08-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2103,977,811,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2104,977,938,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2105,964,907,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2106,755,995,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2107,null,957,'2010-07-08 00:00:00.000',null,N'EA ',0,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2108,760,950,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2109,755,950,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2110,953,948,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2111,766,945,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2112,760,818,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2113,953,821,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2114,957,807,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2115,957,907,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2116,761,950,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2117,767,945,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2118,761,818,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2119,965,907,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2120,973,894,'2010-09-07 00:00:00.000',null,N'EA ',1,1.00,'2010-08-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2121,762,894,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2122,756,894,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2123,789,894,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2124,975,894,'2010-09-07 00:00:00.000',null,N'EA ',1,1.00,'2010-08-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2125,751,894,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2126,764,894,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2127,758,894,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2128,791,894,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2129,753,894,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2130,759,894,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2131,754,894,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2132,792,894,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2133,761,894,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2134,828,506,'2010-07-08 00:00:00.000',null,N'EA ',2,2.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2135,815,507,'2010-07-08 00:00:00.000',null,N'EA ',2,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2136,826,510,'2010-09-07 00:00:00.000',null,N'EA ',2,1.00,'2010-08-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2137,772,825,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2138,762,826,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2139,979,829,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2140,966,829,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2141,774,825,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2142,764,826,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2143,971,829,'2010-09-07 00:00:00.000',null,N'EA ',1,1.00,'2010-08-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2144,958,829,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2145,968,829,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2146,759,826,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2147,959,829,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2148,969,829,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2149,761,826,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2150,984,514,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2151,775,516,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2152,981,514,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2153,783,516,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2154,986,514,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2155,777,516,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2156,954,522,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2157,983,514,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2158,988,514,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2159,956,522,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2160,957,522,'2010-07-08 00:00:00.000',null,N'EA ',1,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2161,518,912,'2010-07-08 00:00:00.000',null,N'EA ',2,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2162,400,525,'2010-07-08 00:00:00.000',null,N'EA ',3,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2163,818,527,'2010-07-08 00:00:00.000',null,N'EA ',2,36.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2164,829,527,'2010-09-07 00:00:00.000',null,N'EA ',2,36.00,'2010-08-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2165,522,528,'2010-07-08 00:00:00.000',null,N'EA ',2,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2166,814,532,'2010-07-08 00:00:00.000',null,N'EA ',2,4.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2167,822,533,'2010-07-08 00:00:00.000',null,N'EA ',2,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2168,827,932,'2010-07-08 00:00:00.000',null,N'EA ',2,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2169,816,921,'2010-07-08 00:00:00.000',null,N'EA ',2,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2170,826,922,'2010-07-08 00:00:00.000',null,N'EA ',2,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2171,833,496,'2010-09-07 00:00:00.000',null,N'OZ ',2,8.00,'2010-08-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2172,834,496,'2010-07-08 00:00:00.000',null,N'OZ ',2,8.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2173,835,496,'2010-07-08 00:00:00.000',null,N'OZ ',2,8.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2174,836,496,'2010-07-08 00:00:00.000',null,N'OZ ',2,8.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2175,899,496,'2010-09-07 00:00:00.000',null,N'OZ ',2,8.00,'2010-08-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2176,900,496,'2010-07-08 00:00:00.000',null,N'OZ ',2,8.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2177,901,496,'2010-07-08 00:00:00.000',null,N'OZ ',2,8.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2178,902,496,'2010-07-08 00:00:00.000',null,N'OZ ',2,8.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2179,886,496,'2010-07-08 00:00:00.000',null,N'OZ ',2,8.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2180,887,496,'2010-07-08 00:00:00.000',null,N'OZ ',2,8.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2181,888,496,'2010-07-08 00:00:00.000',null,N'OZ ',2,8.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2182,889,496,'2010-07-08 00:00:00.000',null,N'OZ ',2,8.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2183,885,496,'2010-09-07 00:00:00.000',null,N'OZ ',2,8.00,'2010-08-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2184,924,399,'2010-07-08 00:00:00.000',null,N'EA ',2,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2185,925,399,'2010-07-08 00:00:00.000',null,N'EA ',2,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2186,926,399,'2010-07-08 00:00:00.000',null,N'EA ',2,1.00,'2010-06-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2192,822,327,'2010-07-08 00:00:00.000','2010-09-06 00:00:00.000',N'EA ',1,2.00,'2010-09-06 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2193,984,948,'2010-07-08 00:00:00.000','2010-09-06 00:00:00.000',N'EA ',1,2.00,'2010-09-06 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2195,785,945,'2010-07-08 00:00:00.000','2010-09-06 00:00:00.000',N'EA ',1,2.00,'2010-09-06 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2200,824,401,'2010-07-08 00:00:00.000','2010-09-06 00:00:00.000',N'EA ',1,2.00,'2010-09-06 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2202,824,490,'2010-07-08 00:00:00.000','2010-09-06 00:00:00.000',N'EA ',1,37.00,'2010-09-06 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2203,748,494,'2010-07-08 00:00:00.000','2010-09-06 00:00:00.000',N'OZ ',1,9.00,'2010-09-06 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2206,776,996,'2010-07-08 00:00:00.000','2010-09-06 00:00:00.000',N'EA ',1,2.00,'2010-09-06 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2210,798,812,'2010-07-08 00:00:00.000','2010-09-06 00:00:00.000',N'EA ',1,2.00,'2010-09-06 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2216,781,905,'2010-07-08 00:00:00.000','2010-09-06 00:00:00.000',N'EA ',1,2.00,'2010-09-06 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2223,770,938,'2010-07-08 00:00:00.000','2010-09-06 00:00:00.000',N'EA ',1,2.00,'2010-09-06 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2238,754,995,'2010-07-08 00:00:00.000','2010-09-06 00:00:00.000',N'EA ',1,2.00,'2010-09-06 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2243,759,818,'2010-07-08 00:00:00.000','2010-09-06 00:00:00.000',N'EA ',1,2.00,'2010-09-06 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2266,973,894,'2010-07-08 00:00:00.000','2010-09-06 00:00:00.000',N'EA ',1,2.00,'2010-09-06 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2269,975,894,'2010-07-08 00:00:00.000','2010-09-06 00:00:00.000',N'EA ',1,2.00,'2010-09-06 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2278,826,510,'2010-07-08 00:00:00.000','2010-09-06 00:00:00.000',N'EA ',1,2.00,'2010-09-06 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2280,971,829,'2010-07-08 00:00:00.000','2010-09-06 00:00:00.000',N'EA ',1,2.00,'2010-09-06 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2283,829,527,'2010-07-08 00:00:00.000','2010-09-06 00:00:00.000',N'EA ',1,37.00,'2010-09-06 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2292,833,496,'2010-07-08 00:00:00.000','2010-09-06 00:00:00.000',N'OZ ',1,9.00,'2010-09-06 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2296,899,496,'2010-07-08 00:00:00.000','2010-09-06 00:00:00.000',N'OZ ',1,9.00,'2010-09-06 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2299,885,496,'2010-07-08 00:00:00.000','2010-09-06 00:00:00.000',N'OZ ',1,9.00,'2010-09-06 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2300,806,4,'2010-08-05 00:00:00.000',null,N'EA ',2,8.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2301,804,316,'2010-08-05 00:00:00.000',null,N'EA ',3,2.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2302,951,320,'2010-08-05 00:00:00.000',null,N'EA ',2,3.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2303,951,321,'2010-08-05 00:00:00.000',null,N'EA ',2,3.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2304,943,324,'2010-08-05 00:00:00.000',null,N'EA ',2,2.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2305,747,324,'2010-08-05 00:00:00.000',null,N'EA ',2,2.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2306,943,326,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2307,747,326,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2308,946,330,'2010-08-05 00:00:00.000',null,N'EA ',2,2.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2309,980,948,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2310,779,948,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2311,803,350,'2010-08-05 00:00:00.000',null,N'EA ',3,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2312,782,945,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2313,984,944,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2314,782,747,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2315,984,815,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2316,775,817,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2317,894,355,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2318,813,358,'2010-08-05 00:00:00.000',null,N'IN ',2,40.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2319,816,401,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2320,797,812,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2321,785,806,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2322,944,399,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2323,748,399,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2324,807,462,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2325,816,490,'2010-08-05 00:00:00.000',null,N'EA ',2,36.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2326,817,491,'2010-08-05 00:00:00.000',null,N'EA ',2,36.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2327,514,497,'2010-08-05 00:00:00.000',null,N'EA ',2,4.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2328,989,935,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2329,973,939,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2330,985,994,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2331,756,995,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2332,793,996,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2333,null,798,'2010-08-05 00:00:00.000',null,N'EA ',0,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2334,985,952,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2335,772,952,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2336,985,949,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2337,762,950,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2338,756,950,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2339,789,950,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2340,776,951,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2341,990,945,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2342,786,945,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2343,776,945,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2344,768,945,'2010-10-05 00:00:00.000',null,N'EA ',1,1.00,'2010-09-21 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2345,793,945,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2346,990,924,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2347,776,743,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2348,997,736,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2349,974,834,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2350,772,817,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2351,762,818,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2352,997,811,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2353,783,806,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2354,780,936,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2355,997,938,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2356,961,907,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2357,986,994,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2358,757,995,'2010-10-05 00:00:00.000',null,N'EA ',1,1.00,'2010-09-21 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2359,794,996,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2360,null,991,'2010-08-05 00:00:00.000',null,N'EA ',0,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2361,null,787,'2010-08-05 00:00:00.000',null,N'EA ',0,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2362,null,777,'2010-08-05 00:00:00.000',null,N'EA ',0,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2363,null,769,'2010-08-05 00:00:00.000',null,N'EA ',0,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2364,null,794,'2010-08-05 00:00:00.000',null,N'EA ',0,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2365,986,952,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2366,773,952,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2367,986,949,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2368,763,950,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2369,757,950,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2370,790,950,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2371,777,951,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2372,970,948,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2373,991,945,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2374,787,945,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2375,777,945,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2376,769,945,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2377,794,945,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2378,982,905,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2379,757,732,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2380,966,890,'2010-10-05 00:00:00.000',null,N'EA ',1,1.00,'2010-09-21 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2381,773,817,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2382,763,818,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2383,970,821,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2384,998,811,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2385,784,806,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2386,954,807,'2010-10-05 00:00:00.000',null,N'EA ',1,1.00,'2010-09-21 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2387,781,936,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2388,998,938,'2010-10-05 00:00:00.000',null,N'EA ',1,1.00,'2010-09-21 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2389,962,907,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2390,954,907,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2391,987,994,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2392,758,995,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2393,795,996,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2394,null,764,'2010-08-05 00:00:00.000',null,N'EA ',0,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2395,null,758,'2010-08-05 00:00:00.000',null,N'EA ',0,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2396,null,791,'2010-08-05 00:00:00.000',null,N'EA ',0,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2397,987,952,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2398,774,952,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2399,987,949,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2400,764,950,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2401,758,950,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2402,791,950,'2010-10-05 00:00:00.000',null,N'EA ',1,1.00,'2010-09-21 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2403,778,951,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2404,971,948,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2405,992,945,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2406,788,945,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2407,778,945,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2408,770,945,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2409,795,945,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2410,987,919,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2411,971,891,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2412,774,817,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2413,764,818,'2010-10-05 00:00:00.000',null,N'EA ',1,1.00,'2010-09-21 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2414,971,821,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2415,999,811,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2416,955,807,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2417,999,938,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2418,963,907,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2419,955,907,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2420,988,994,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2421,796,996,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2422,null,988,'2010-08-05 00:00:00.000',null,N'EA ',0,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2423,988,952,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2424,988,949,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2425,972,948,'2010-10-05 00:00:00.000',null,N'EA ',1,1.00,'2010-09-21 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2426,993,945,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2427,796,945,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2428,958,896,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2429,956,889,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2430,972,821,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2431,956,807,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2432,330,482,'2010-08-05 00:00:00.000',null,N'EA ',3,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2433,316,486,'2010-08-05 00:00:00.000',null,N'EA ',4,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2434,801,939,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2435,801,907,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2436,977,945,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2437,765,722,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2438,759,728,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2439,765,811,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2440,765,806,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2441,765,938,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2442,959,948,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2443,969,948,'2010-10-05 00:00:00.000',null,N'EA ',1,1.00,'2010-09-21 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2444,959,821,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2445,969,821,'2010-10-05 00:00:00.000',null,N'EA ',1,1.00,'2010-09-21 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2446,766,811,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2447,766,806,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2448,766,938,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2449,null,767,'2010-08-05 00:00:00.000',null,N'EA ',0,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2450,960,948,'2010-10-05 00:00:00.000',null,N'EA ',1,1.00,'2010-09-21 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2451,960,821,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2452,767,811,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2453,767,806,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2454,767,938,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2455,974,894,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2456,750,894,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2457,763,894,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2458,757,894,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2459,790,894,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2460,976,894,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2461,752,894,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2462,760,894,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2463,755,894,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2464,749,894,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2465,823,506,'2010-08-05 00:00:00.000',null,N'EA ',2,2.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2466,818,506,'2010-10-05 00:00:00.000',null,N'EA ',2,2.00,'2010-09-21 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2467,820,512,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2468,771,825,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2469,978,829,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2470,773,825,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2471,763,826,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2472,970,829,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2473,967,829,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2474,972,829,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2475,760,826,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2476,953,829,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2477,960,829,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2478,980,514,'2010-10-05 00:00:00.000',null,N'EA ',1,1.00,'2010-09-21 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2479,782,516,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2480,985,514,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2481,776,516,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2482,982,514,'2010-10-05 00:00:00.000',null,N'EA ',1,1.00,'2010-09-21 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2483,784,516,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2484,987,514,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2485,778,516,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2486,955,522,'2010-08-05 00:00:00.000',null,N'EA ',1,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2487,401,526,'2010-08-05 00:00:00.000',null,N'EA ',3,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2488,824,527,'2010-08-05 00:00:00.000',null,N'EA ',2,36.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2489,517,528,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2490,811,529,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2491,518,530,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2492,943,532,'2010-08-05 00:00:00.000',null,N'EA ',2,4.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2493,747,532,'2010-10-05 00:00:00.000',null,N'EA ',2,4.00,'2010-09-21 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2494,812,398,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2495,815,928,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2496,820,933,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2497,820,922,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2498,822,534,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2499,917,327,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2500,918,327,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2501,919,327,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2502,920,327,'2010-10-05 00:00:00.000',null,N'EA ',2,1.00,'2010-09-21 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2503,830,327,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2504,831,327,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2505,832,327,'2010-10-05 00:00:00.000',null,N'EA ',2,1.00,'2010-09-21 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2506,904,327,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2507,905,327,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2508,906,327,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2509,743,327,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2510,744,327,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2511,745,327,'2010-10-05 00:00:00.000',null,N'EA ',2,1.00,'2010-09-21 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2512,746,327,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2513,739,327,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2514,740,327,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2515,741,327,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2516,742,327,'2010-10-05 00:00:00.000',null,N'EA ',2,1.00,'2010-09-21 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2517,736,327,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2518,737,327,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2519,738,327,'2010-10-05 00:00:00.000',null,N'EA ',2,1.00,'2010-09-21 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2520,722,327,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2521,723,327,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2522,724,327,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2523,725,327,'2010-10-05 00:00:00.000',null,N'EA ',2,1.00,'2010-09-21 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2524,726,327,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2525,727,327,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2526,728,327,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2527,729,327,'2010-10-05 00:00:00.000',null,N'EA ',2,1.00,'2010-09-21 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2528,730,327,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2529,731,327,'2010-10-05 00:00:00.000',null,N'EA ',2,1.00,'2010-09-21 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2530,732,327,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2531,733,327,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2532,734,327,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2533,735,327,'2010-10-05 00:00:00.000',null,N'EA ',2,1.00,'2010-09-21 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2534,833,327,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2535,834,327,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2536,835,327,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2537,836,327,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2538,838,327,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2539,839,327,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2540,840,327,'2010-10-05 00:00:00.000',null,N'EA ',2,1.00,'2010-09-21 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2541,680,327,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2543,718,327,'2010-10-05 00:00:00.000',null,N'EA ',2,1.00,'2010-09-21 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2544,719,327,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2545,720,327,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2546,721,327,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2547,717,327,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2548,903,327,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2549,895,327,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2550,896,327,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2551,897,327,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2552,898,327,'2010-10-05 00:00:00.000',null,N'EA ',2,1.00,'2010-09-21 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2553,899,327,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2554,900,327,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2555,901,327,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2556,902,327,'2010-10-05 00:00:00.000',null,N'EA ',2,1.00,'2010-09-21 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2557,886,327,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2558,890,327,'2010-10-05 00:00:00.000',null,N'EA ',2,1.00,'2010-09-21 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2559,891,327,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2560,892,327,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2561,893,327,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2562,887,327,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2563,888,327,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2564,889,327,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2565,885,327,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2566,924,532,'2010-08-05 00:00:00.000',null,N'EA ',2,4.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2567,925,532,'2010-08-05 00:00:00.000',null,N'EA ',2,4.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2568,926,532,'2010-08-05 00:00:00.000',null,N'EA ',2,4.00,'2010-07-22 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2579,768,945,'2010-08-05 00:00:00.000','2010-10-04 00:00:00.000',N'EA ',1,2.00,'2010-10-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2587,757,995,'2010-08-05 00:00:00.000','2010-10-04 00:00:00.000',N'EA ',1,2.00,'2010-10-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2591,966,890,'2010-08-05 00:00:00.000','2010-10-04 00:00:00.000',N'EA ',1,2.00,'2010-10-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2593,954,807,'2010-08-05 00:00:00.000','2010-10-04 00:00:00.000',N'EA ',1,2.00,'2010-10-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2594,998,938,'2010-08-05 00:00:00.000','2010-10-04 00:00:00.000',N'EA ',1,2.00,'2010-10-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2598,791,950,'2010-08-05 00:00:00.000','2010-10-04 00:00:00.000',N'EA ',1,2.00,'2010-10-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2600,971,895,'2010-08-05 00:00:00.000','2010-10-04 00:00:00.000',N'EA ',1,2.00,'2010-10-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2601,764,818,'2010-08-05 00:00:00.000','2010-10-04 00:00:00.000',N'EA ',1,2.00,'2010-10-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2609,972,948,'2010-08-05 00:00:00.000','2010-10-04 00:00:00.000',N'EA ',1,2.00,'2010-10-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2630,969,948,'2010-08-05 00:00:00.000','2010-10-04 00:00:00.000',N'EA ',1,2.00,'2010-10-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2633,969,821,'2010-08-05 00:00:00.000','2010-10-04 00:00:00.000',N'EA ',1,2.00,'2010-10-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2641,960,948,'2010-08-05 00:00:00.000','2010-10-04 00:00:00.000',N'EA ',1,2.00,'2010-10-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2648,818,506,'2010-08-05 00:00:00.000','2010-10-04 00:00:00.000',N'EA ',1,3.00,'2010-10-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2649,980,514,'2010-08-05 00:00:00.000','2010-10-04 00:00:00.000',N'EA ',1,2.00,'2010-10-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2650,982,514,'2010-08-05 00:00:00.000','2010-10-04 00:00:00.000',N'EA ',1,2.00,'2010-10-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2653,747,532,'2010-08-05 00:00:00.000','2010-10-04 00:00:00.000',N'EA ',1,5.00,'2010-10-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2656,920,327,'2010-08-05 00:00:00.000','2010-10-04 00:00:00.000',N'EA ',1,2.00,'2010-10-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2660,832,327,'2010-08-05 00:00:00.000','2010-10-04 00:00:00.000',N'EA ',1,2.00,'2010-10-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2667,745,327,'2010-08-05 00:00:00.000','2010-10-04 00:00:00.000',N'EA ',1,2.00,'2010-10-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2670,742,327,'2010-08-05 00:00:00.000','2010-10-04 00:00:00.000',N'EA ',1,2.00,'2010-10-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2674,738,327,'2010-08-05 00:00:00.000','2010-10-04 00:00:00.000',N'EA ',1,2.00,'2010-10-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2675,725,327,'2010-08-05 00:00:00.000','2010-10-04 00:00:00.000',N'EA ',1,2.00,'2010-10-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2676,729,327,'2010-08-05 00:00:00.000','2010-10-04 00:00:00.000',N'EA ',1,2.00,'2010-10-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2682,731,327,'2010-08-05 00:00:00.000','2010-10-04 00:00:00.000',N'EA ',1,2.00,'2010-10-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2683,735,327,'2010-08-05 00:00:00.000','2010-10-04 00:00:00.000',N'EA ',1,2.00,'2010-10-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2688,840,327,'2010-08-05 00:00:00.000','2010-10-04 00:00:00.000',N'EA ',1,2.00,'2010-10-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2689,718,327,'2010-08-05 00:00:00.000','2010-10-04 00:00:00.000',N'EA ',1,2.00,'2010-10-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2700,898,327,'2010-08-05 00:00:00.000','2010-10-04 00:00:00.000',N'EA ',1,2.00,'2010-10-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2701,902,327,'2010-08-05 00:00:00.000','2010-10-04 00:00:00.000',N'EA ',1,2.00,'2010-10-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2706,890,327,'2010-08-05 00:00:00.000','2010-10-04 00:00:00.000',N'EA ',1,2.00,'2010-10-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2709,706,327,'2010-08-05 00:00:00.000',null,N'EA ',2,1.00,'2010-07-22 00:00:00.000');
GO -- SQRIBE/GO;341e11
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2710,984,994,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2711,805,4,'2010-09-15 00:00:00.000',null,N'EA ',2,8.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2712,803,316,'2010-11-15 00:00:00.000',null,N'EA ',3,2.00,'2010-11-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2713,950,320,'2010-09-15 00:00:00.000',null,N'EA ',2,3.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2714,980,952,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2715,779,952,'2010-11-15 00:00:00.000',null,N'EA ',1,1.00,'2010-11-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2716,950,321,'2010-09-15 00:00:00.000',null,N'EA ',2,3.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2717,980,950,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2718,779,950,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2719,943,325,'2010-09-15 00:00:00.000',null,N'EA ',2,2.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2720,747,325,'2010-09-15 00:00:00.000',null,N'EA ',2,2.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2721,973,948,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2722,802,350,'2010-09-15 00:00:00.000',null,N'EA ',3,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2723,945,352,'2010-09-15 00:00:00.000',null,N'EA ',2,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2724,785,814,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2725,785,816,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2726,810,358,'2010-11-15 00:00:00.000',null,N'IN ',2,40.00,'2010-11-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2727,829,401,'2010-09-15 00:00:00.000',null,N'EA ',2,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2728,984,808,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2729,775,810,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2730,989,805,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2731,797,806,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2732,806,462,'2010-09-15 00:00:00.000',null,N'EA ',2,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2733,815,490,'2010-09-15 00:00:00.000',null,N'EA ',2,36.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2734,786,995,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2735,null,990,'2010-09-15 00:00:00.000',null,N'EA ',0,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2736,null,786,'2010-09-15 00:00:00.000',null,N'EA ',0,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2737,null,776,'2010-09-15 00:00:00.000',null,N'EA ',0,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2738,null,768,'2010-11-15 00:00:00.000',null,N'EA ',0,1.00,'2010-11-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2739,null,793,'2010-09-15 00:00:00.000',null,N'EA ',0,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2740,762,952,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2741,756,952,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2742,789,952,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2743,786,950,'2010-11-15 00:00:00.000',null,N'EA ',1,1.00,'2010-11-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2744,768,950,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2745,793,950,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2746,981,948,'2010-11-15 00:00:00.000',null,N'EA ',1,1.00,'2010-11-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2747,780,948,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2748,798,945,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2749,981,904,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2750,756,731,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2751,768,818,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2752,798,819,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2753,981,808,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2754,783,810,'2010-11-15 00:00:00.000',null,N'EA ',1,1.00,'2010-11-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2755,997,805,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2756,981,935,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2757,978,907,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2758,787,995,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2759,null,763,'2010-09-15 00:00:00.000',null,N'EA ',0,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2760,null,757,'2010-09-15 00:00:00.000',null,N'EA ',0,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2761,null,790,'2010-09-15 00:00:00.000',null,N'EA ',0,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2762,763,952,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2763,757,952,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2764,790,952,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2765,787,950,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2766,769,950,'2010-11-15 00:00:00.000',null,N'EA ',1,1.00,'2010-11-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2767,794,950,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2768,982,948,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2769,781,948,'2010-11-15 00:00:00.000',null,N'EA ',1,1.00,'2010-11-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2770,799,945,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2771,986,918,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2772,769,818,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2773,799,819,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2774,982,808,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2775,784,810,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2776,998,805,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2777,966,807,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2778,982,935,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2779,979,907,'2010-11-15 00:00:00.000',null,N'EA ',1,1.00,'2010-11-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2780,966,907,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2781,788,995,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2782,null,987,'2010-09-15 00:00:00.000',null,N'EA ',0,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2783,null,774,'2010-09-15 00:00:00.000',null,N'EA ',0,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2784,764,952,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2785,758,952,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2786,791,952,'2010-11-15 00:00:00.000',null,N'EA ',1,1.00,'2010-11-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2787,788,950,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2788,770,950,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2789,795,950,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2790,983,948,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2791,800,945,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2792,955,888,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2793,770,818,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2794,800,819,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2795,983,808,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2796,999,805,'2010-11-15 00:00:00.000',null,N'EA ',1,1.00,'2010-11-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2797,967,807,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2798,983,935,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2799,967,907,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2800,null,958,'2010-09-15 00:00:00.000',null,N'EA ',0,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2801,null,968,'2010-09-15 00:00:00.000',null,N'EA ',0,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2802,796,950,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2803,801,945,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2804,801,819,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2805,968,807,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2806,329,482,'2010-09-15 00:00:00.000',null,N'EA ',3,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2807,988,935,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2808,972,907,'2010-11-15 00:00:00.000',null,N'EA ',1,1.00,'2010-11-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2809,759,994,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2810,964,945,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2811,977,722,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2812,977,818,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2813,760,994,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2814,957,996,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2815,null,766,'2010-09-15 00:00:00.000',null,N'EA ',0,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2816,957,951,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2817,957,945,'2010-11-15 00:00:00.000',null,N'EA ',1,1.00,'2010-11-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2818,755,735,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2819,969,893,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2820,953,907,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2821,761,994,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2822,null,761,'2010-09-15 00:00:00.000',null,N'EA ',0,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2823,749,952,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2824,965,945,'2010-11-15 00:00:00.000',null,N'EA ',1,1.00,'2010-11-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2825,989,894,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2826,785,894,'2010-11-15 00:00:00.000',null,N'EA ',1,1.00,'2010-11-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2827,775,894,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2828,783,894,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2829,997,894,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2830,991,894,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2831,787,894,'2010-11-15 00:00:00.000',null,N'EA ',1,1.00,'2010-11-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2832,777,894,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2833,769,894,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2834,794,894,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2835,999,894,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2836,993,894,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2837,796,894,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2838,977,894,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2839,766,894,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2840,817,506,'2010-09-15 00:00:00.000',null,N'EA ',2,2.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2841,824,508,'2010-09-15 00:00:00.000',null,N'EA ',2,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2842,797,827,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2843,780,824,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2844,997,826,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2845,769,826,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2846,799,827,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2847,999,826,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2848,801,827,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2849,977,826,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2850,766,826,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2851,786,515,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2852,750,519,'2010-11-15 00:00:00.000',null,N'EA ',1,1.00,'2010-11-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2853,790,519,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2854,788,515,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2855,752,519,'2010-11-15 00:00:00.000',null,N'EA ',1,1.00,'2010-11-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2856,967,522,'2010-09-15 00:00:00.000',null,N'EA ',1,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2857,749,519,'2010-11-15 00:00:00.000',null,N'EA ',1,1.00,'2010-11-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2858,515,909,'2010-09-15 00:00:00.000',null,N'EA ',2,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2859,520,914,'2010-09-15 00:00:00.000',null,N'EA ',2,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2860,996,526,'2010-09-15 00:00:00.000',null,N'EA ',2,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2861,823,527,'2010-09-15 00:00:00.000',null,N'EA ',2,36.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2862,516,528,'2010-09-15 00:00:00.000',null,N'EA ',2,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2863,810,529,'2010-09-15 00:00:00.000',null,N'EA ',2,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2864,517,530,'2010-09-15 00:00:00.000',null,N'EA ',2,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2865,811,398,'2010-09-15 00:00:00.000',null,N'EA ',2,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2866,824,929,'2010-09-15 00:00:00.000',null,N'EA ',2,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2867,829,934,'2010-09-15 00:00:00.000',null,N'EA ',2,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2868,819,922,'2010-09-15 00:00:00.000',null,N'EA ',2,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2869,829,923,'2010-09-15 00:00:00.000',null,N'EA ',2,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2870,924,802,'2010-09-15 00:00:00.000',null,N'EA ',2,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2871,924,492,'2010-09-15 00:00:00.000',null,N'OZ ',2,8.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2872,925,324,'2010-09-15 00:00:00.000',null,N'EA ',2,2.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2873,925,802,'2010-09-15 00:00:00.000',null,N'EA ',2,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2874,925,492,'2010-09-15 00:00:00.000',null,N'OZ ',2,8.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2875,926,324,'2010-09-15 00:00:00.000',null,N'EA ',2,2.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2876,926,802,'2010-09-15 00:00:00.000',null,N'EA ',2,1.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2877,926,492,'2010-09-15 00:00:00.000',null,N'OZ ',2,8.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2878,927,324,'2010-09-15 00:00:00.000',null,N'EA ',2,2.00,'2010-09-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2880,803,316,'2010-09-15 00:00:00.000','2010-11-14 00:00:00.000',N'EA ',2,3.00,'2010-11-14 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2881,779,952,'2010-09-15 00:00:00.000','2010-11-14 00:00:00.000',N'EA ',1,2.00,'2010-11-14 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2893,810,358,'2010-09-15 00:00:00.000','2010-11-14 00:00:00.000',N'IN ',1,41.00,'2010-11-14 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2899,null,768,'2010-09-15 00:00:00.000','2010-11-14 00:00:00.000',N'EA ',0,1.00,'2010-11-14 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2900,786,950,'2010-09-15 00:00:00.000','2010-11-14 00:00:00.000',N'EA ',1,2.00,'2010-11-14 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2901,981,948,'2010-09-15 00:00:00.000','2010-11-14 00:00:00.000',N'EA ',1,2.00,'2010-11-14 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2905,783,810,'2010-09-15 00:00:00.000','2010-11-14 00:00:00.000',N'EA ',1,2.00,'2010-11-14 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2907,769,950,'2010-09-15 00:00:00.000','2010-11-14 00:00:00.000',N'EA ',1,2.00,'2010-11-14 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2908,781,948,'2010-09-15 00:00:00.000','2010-11-14 00:00:00.000',N'EA ',1,2.00,'2010-11-14 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2914,979,907,'2010-09-15 00:00:00.000','2010-11-14 00:00:00.000',N'EA ',1,2.00,'2010-11-14 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2918,791,952,'2010-09-15 00:00:00.000','2010-11-14 00:00:00.000',N'EA ',1,2.00,'2010-11-14 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2923,999,805,'2010-09-15 00:00:00.000','2010-11-14 00:00:00.000',N'EA ',1,2.00,'2010-11-14 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2931,972,907,'2010-09-15 00:00:00.000','2010-11-14 00:00:00.000',N'EA ',1,2.00,'2010-11-14 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2943,957,945,'2010-09-15 00:00:00.000','2010-11-14 00:00:00.000',N'EA ',1,2.00,'2010-11-14 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2953,965,945,'2010-09-15 00:00:00.000','2010-11-14 00:00:00.000',N'EA ',1,2.00,'2010-11-14 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2958,785,894,'2010-09-15 00:00:00.000','2010-11-14 00:00:00.000',N'EA ',1,2.00,'2010-11-14 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2961,787,894,'2010-09-15 00:00:00.000','2010-11-14 00:00:00.000',N'EA ',1,2.00,'2010-11-14 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2980,750,519,'2010-09-15 00:00:00.000','2010-11-14 00:00:00.000',N'EA ',1,2.00,'2010-11-14 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2983,752,519,'2010-09-15 00:00:00.000','2010-11-14 00:00:00.000',N'EA ',1,2.00,'2010-11-14 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2989,749,519,'2010-09-15 00:00:00.000','2010-11-14 00:00:00.000',N'EA ',1,2.00,'2010-11-14 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2991,989,994,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2992,996,3,'2010-12-15 00:00:00.000',null,N'EA ',2,10.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2993,null,973,'2010-12-15 00:00:00.000',null,N'EA ',0,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2994,782,952,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2995,806,323,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2996,942,324,'2010-12-15 00:00:00.000',null,N'EA ',2,2.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2997,782,950,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2998,942,326,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (2999,812,329,'2010-12-15 00:00:00.000',null,N'EA ',2,2.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3000,984,945,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3001,771,945,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3002,950,332,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3003,812,357,'2010-12-15 00:00:00.000',null,N'IN ',2,40.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3004,823,400,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3005,827,401,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3006,989,808,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3007,973,812,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3008,980,806,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3009,779,806,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3010,827,490,'2010-12-15 00:00:00.000',null,N'EA ',2,36.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3011,747,492,'2010-12-15 00:00:00.000',null,N'OZ ',2,8.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3012,521,497,'2010-12-15 00:00:00.000',null,N'EA ',2,4.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3013,980,935,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3014,961,994,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3015,772,996,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3016,null,985,'2010-12-15 00:00:00.000',null,N'EA ',0,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3017,null,772,'2010-12-15 00:00:00.000',null,N'EA ',0,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3018,798,952,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3019,783,948,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3020,997,948,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3021,981,945,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3022,780,945,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3023,978,903,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3024,786,816,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3025,750,820,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3026,756,812,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3027,793,813,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3028,978,805,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3029,756,939,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3030,793,940,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3031,762,907,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3032,756,907,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3033,789,907,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3034,962,994,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3035,773,996,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3036,null,979,'2010-12-15 00:00:00.000',null,N'EA ',0,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3037,null,966,'2010-12-15 00:00:00.000',null,N'EA ',0,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3038,799,952,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3039,970,950,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3040,784,948,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3041,998,948,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3042,982,945,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3043,781,945,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3044,784,746,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3045,773,740,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3046,787,816,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3047,751,820,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3048,757,812,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3049,794,813,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3050,970,947,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3051,979,805,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3052,757,939,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3053,794,940,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3054,763,907,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3055,757,907,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3056,790,907,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3057,963,994,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3058,774,996,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3059,null,963,'2010-12-15 00:00:00.000',null,N'EA ',0,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3060,null,955,'2010-12-15 00:00:00.000',null,N'EA ',0,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3061,800,952,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3062,971,950,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3063,999,948,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3064,983,945,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3065,788,832,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3066,795,840,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3067,752,720,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3068,788,816,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3069,752,820,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3070,758,812,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3071,795,813,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3072,971,947,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3073,758,939,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3074,795,940,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3075,764,907,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3076,758,907,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3077,791,907,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3078,801,952,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3079,972,950,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3080,753,820,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3081,796,813,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3082,972,947,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3083,958,805,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3084,993,935,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3085,956,941,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3086,753,907,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3087,null,759,'2010-12-15 00:00:00.000',null,N'EA ',0,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3088,null,754,'2010-12-15 00:00:00.000',null,N'EA ',0,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3089,null,792,'2010-12-15 00:00:00.000',null,N'EA ',0,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3090,964,952,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3091,964,949,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3092,765,948,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3093,792,820,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3094,964,946,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3095,964,941,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3096,953,995,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3097,957,952,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3098,766,948,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3099,957,885,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3100,969,947,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3101,957,941,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3102,null,960,'2010-12-15 00:00:00.000',null,N'EA ',0,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3103,965,952,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3104,965,949,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3105,767,948,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3106,965,886,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3107,965,946,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3108,749,807,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3109,965,941,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3110,749,907,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3111,894,679,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3112,978,894,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3113,970,894,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3114,967,894,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3115,972,894,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3116,953,894,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3117,960,894,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3118,815,506,'2010-12-15 00:00:00.000',null,N'EA ',2,2.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3119,819,511,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3120,785,824,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3121,783,824,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3122,789,828,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3123,787,824,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3124,751,828,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3125,791,828,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3126,753,828,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3127,792,828,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3128,771,516,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3129,780,516,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3130,978,520,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3131,773,516,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3132,763,517,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3133,760,517,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3134,960,520,'2010-12-15 00:00:00.000',null,N'EA ',1,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3135,514,908,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3136,519,913,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3137,820,527,'2010-12-15 00:00:00.000',null,N'EA ',2,36.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3138,514,528,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3139,808,529,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3140,515,530,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3141,803,531,'2010-12-15 00:00:00.000',null,N'EA ',3,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3142,942,532,'2010-12-15 00:00:00.000',null,N'EA ',2,4.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3143,809,398,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3144,823,928,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3145,828,933,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3146,828,922,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3147,927,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3148,917,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3149,918,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3150,919,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3151,920,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3152,830,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3153,831,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3154,832,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3155,904,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3156,905,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3157,906,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3158,743,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3159,744,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3160,745,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3161,746,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3162,739,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3163,740,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3164,741,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3165,742,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3166,736,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3167,737,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3168,738,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3169,722,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3170,723,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3171,724,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3172,725,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3173,726,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3174,727,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3175,728,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3176,729,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3177,730,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3178,731,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3179,732,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3180,733,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3181,734,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3182,735,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3183,833,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3184,834,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3185,835,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3186,836,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3187,838,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3188,839,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3189,840,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3190,680,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3192,718,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3193,719,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3194,720,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3195,721,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3196,717,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3197,903,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3198,895,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3199,896,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3200,897,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3201,898,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3202,899,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3203,900,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3204,901,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3205,902,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3206,886,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3207,890,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3208,891,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3209,892,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3210,893,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3211,887,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3212,888,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3213,889,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3214,885,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3215,706,399,'2010-12-15 00:00:00.000',null,N'EA ',2,1.00,'2010-12-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3216,785,995,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3217,null,782,'2010-12-23 00:00:00.000',null,N'EA ',0,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3218,802,316,'2010-12-23 00:00:00.000',null,N'EA ',3,2.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3219,949,320,'2010-12-23 00:00:00.000',null,N'EA ',2,3.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3220,973,952,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3221,949,321,'2010-12-23 00:00:00.000',null,N'EA ',2,3.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3222,807,323,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3223,973,950,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3224,942,327,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3225,813,329,'2010-12-23 00:00:00.000',null,N'EA ',2,2.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3226,782,948,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3227,944,802,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3228,951,332,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3229,771,748,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3230,989,815,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3231,973,819,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3232,826,400,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3233,828,401,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3234,785,809,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3235,943,399,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3236,747,399,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3237,805,462,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3238,829,490,'2010-12-23 00:00:00.000',null,N'EA ',2,36.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3239,522,497,'2010-12-23 00:00:00.000',null,N'EA ',2,4.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3240,779,936,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3241,984,907,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3242,771,907,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3243,990,994,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3244,997,994,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3245,null,762,'2010-12-23 00:00:00.000',null,N'EA ',0,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3246,null,756,'2010-12-23 00:00:00.000',null,N'EA ',0,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3247,null,789,'2010-12-23 00:00:00.000',null,N'EA ',0,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3248,990,952,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3249,786,952,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3250,776,952,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3251,768,952,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3252,793,952,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3253,990,949,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3254,798,950,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3255,974,948,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3256,750,948,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3257,985,917,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3258,973,833,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3259,797,822,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3260,798,833,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3261,799,834,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3262,800,835,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3263,801,836,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3264,970,890,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3265,953,893,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3266,979,895,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3267,959,897,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3268,962,900,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3269,985,815,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3270,776,817,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3271,789,813,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3272,961,805,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3273,772,807,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3274,783,936,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3275,789,940,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3276,985,907,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3277,772,907,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3278,991,994,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3279,998,994,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3280,null,986,'2010-12-23 00:00:00.000',null,N'EA ',0,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3281,null,773,'2010-12-23 00:00:00.000',null,N'EA ',0,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3282,991,952,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3283,787,952,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3284,777,952,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3285,769,952,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3286,794,952,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3287,991,949,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3288,799,950,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3289,975,948,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3290,751,948,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3291,970,945,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3292,954,887,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3293,986,815,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3294,777,817,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3295,790,813,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3296,962,805,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3297,773,807,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3298,784,936,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3299,790,940,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3300,986,907,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3301,773,907,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3302,992,994,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3303,999,994,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3304,null,967,'2010-12-23 00:00:00.000',null,N'EA ',0,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3305,992,952,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3306,788,952,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3307,778,952,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3308,770,952,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3309,795,952,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3310,992,949,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3311,800,950,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3312,976,948,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3313,752,948,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3314,971,945,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3315,774,741,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3316,963,901,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3317,987,815,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3318,778,817,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3319,791,813,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3320,963,805,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3321,774,807,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3322,791,940,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3323,987,907,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3324,774,907,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3325,993,994,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3326,null,956,'2010-12-23 00:00:00.000',null,N'EA ',0,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3327,993,952,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3328,796,952,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3329,993,949,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3330,801,950,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3331,753,948,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3332,972,945,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3333,796,680,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3334,753,721,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3335,792,706,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3336,988,815,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3337,328,482,'2010-12-23 00:00:00.000',null,N'EA ',3,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3338,399,485,'2010-12-23 00:00:00.000',null,N'EA ',3,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3339,753,940,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3340,765,994,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3341,null,765,'2010-12-23 00:00:00.000',null,N'EA ',0,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3342,977,952,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3343,977,949,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3344,759,948,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3345,754,948,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3346,792,948,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3347,754,734,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3348,766,994,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3349,969,996,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3350,null,760,'2010-12-23 00:00:00.000',null,N'EA ',0,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3351,null,755,'2010-12-23 00:00:00.000',null,N'EA ',0,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3352,969,951,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3353,760,948,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3354,755,948,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3355,959,945,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3356,969,945,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3357,957,947,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3358,953,806,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3359,767,994,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3360,761,948,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3361,960,945,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3362,960,898,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3363,749,813,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3364,749,940,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3365,797,894,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3366,961,894,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3367,799,894,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3368,963,894,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3369,955,894,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3370,801,894,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3371,964,894,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3372,965,894,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3373,816,506,'2010-12-23 00:00:00.000',null,N'EA ',2,2.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3374,816,508,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3375,827,511,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3376,984,823,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3377,775,825,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3378,981,823,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3379,986,823,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3380,777,825,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3381,983,823,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3382,988,823,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3383,990,514,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3384,974,518,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3385,961,520,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3386,757,518,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3387,794,519,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3388,970,521,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3389,992,514,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3390,976,518,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3391,963,520,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3392,796,519,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3393,972,521,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3394,964,520,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3395,755,518,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3396,953,521,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3397,965,520,'2010-12-23 00:00:00.000',null,N'EA ',1,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3398,995,526,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3399,821,527,'2010-12-23 00:00:00.000',null,N'EA ',2,36.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3400,515,528,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3401,809,529,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3402,516,530,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3403,804,531,'2010-12-23 00:00:00.000',null,N'EA ',3,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3404,942,533,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3405,810,398,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3406,819,932,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3407,818,922,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3408,944,534,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3409,748,534,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3410,924,325,'2010-12-23 00:00:00.000',null,N'EA ',2,2.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3411,917,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3412,918,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3413,919,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3414,920,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3415,830,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3416,831,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3417,832,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3418,904,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3419,905,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3420,906,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3421,743,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3422,744,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3423,745,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3424,746,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3425,739,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3426,740,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3427,741,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3428,742,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3429,736,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3430,737,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3431,738,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3432,722,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3433,723,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3434,724,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3435,725,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3436,726,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3437,727,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3438,728,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3439,729,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3440,730,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3441,731,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3442,732,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3443,733,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3444,734,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3445,735,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3446,833,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3447,834,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3448,835,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3449,836,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3450,838,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3451,839,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3452,840,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3453,680,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3455,718,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3456,719,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3457,720,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3458,721,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3459,717,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3460,903,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3461,895,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3462,896,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3463,897,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3464,898,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3465,899,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3466,900,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3467,901,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3468,902,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3469,886,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3470,890,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3471,891,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3472,892,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3473,893,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3474,887,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3475,888,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3476,889,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3477,885,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3478,924,327,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3479,925,327,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3480,926,327,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3481,927,327,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[BillOfMaterials] ([BillOfMaterialsID],[ProductAssemblyID],[ComponentID],[StartDate],[EndDate],[UnitMeasureCode],[BOMLevel],[PerAssemblyQty],[ModifiedDate]) VALUES (3482,706,326,'2010-12-23 00:00:00.000',null,N'EA ',2,1.00,'2010-12-09 00:00:00.000');

COMMIT TRANSACTION

SET IDENTITY_INSERT [Production].[BillOfMaterials] OFF

