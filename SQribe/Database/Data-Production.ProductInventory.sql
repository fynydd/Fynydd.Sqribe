SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;341e11

-- SQRIBE/TABLE;341e11
-- Adding 1,069 rows to Production.ProductInventory

BEGIN TRANSACTION

-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (1,1,N'A','1',408,'47a24246-6c43-48eb-968f-025738a8a410','2014-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (1,6,N'B','5',324,'d4544d7d-caf5-46b3-ab22-5718dcc26b5e','2014-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (1,50,N'A','5',353,'bff7dc60-96a8-43ca-81a7-d6d2ed3000a8','2014-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (2,1,N'A','2',427,'f407c07a-ca14-4684-a02c-608bd00c2233','2014-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (2,6,N'B','1',318,'ca1ff2f4-48fb-4960-8d92-3940b633e4c1','2014-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (2,50,N'A','6',364,'d38cfbee-6347-47b1-b033-0e278cca03e2','2014-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (3,1,N'A','7',585,'e18a519b-fb5e-4051-874c-58cd58436c95','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (3,6,N'B','9',443,'3c860c96-15ff-4df4-91d7-b237ff64480f','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (3,50,N'A','10',324,'1339e5e3-1f8e-4b82-a447-a8666a264f0c','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (4,1,N'A','6',512,'6beaf0a0-971a-4ce1-96fe-692807d5dc00','2014-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (4,6,N'B','10',422,'2c82427a-63f1-4877-a1f6-a27b4d201eb6','2014-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (4,50,N'A','11',388,'fd912e69-efa2-4ab7-82a4-03f5101af11c','2014-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (316,5,N'A','11',532,'1ee3dbd3-2a7e-47dc-af99-1b585575efb9','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (316,10,N'B','1',388,'cb2a24d7-9b70-4140-8836-9eb7592621d3','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (316,50,N'B','8',441,'36b375a3-022a-45bf-b425-dbffaac3145a','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (317,1,N'C','1',283,'c04fc1cf-1d2b-4480-ba13-64c6ef780f4b','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (317,5,N'A','1',158,'83332a73-48a9-401d-95f4-385c944d716f','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (317,50,N'A','21',152,'4072c90c-a867-4f64-882f-ec45ada1b79c','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (318,1,N'C','2',136,'f287efd3-ccc5-4344-9f4a-e588bbf29801','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (318,5,N'A','2',171,'b62232e8-90b5-4da1-bfe1-453aa1917efc','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (318,50,N'A','22',132,'d758c516-d9bf-4aa6-8e57-f5bd6d568f97','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (319,1,N'C','3',308,'7367821f-bb8b-4102-86ed-a7fb7054f8e1','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (319,5,N'A','3',184,'bfb760ac-0767-4f76-8670-49488d0f731d','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (319,50,N'A','23',305,'febbcc76-2764-48a3-a086-77d1e883137c','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (320,1,N'C','4',481,'bd134ecd-d4da-406c-a7ce-7ec40f9bcf34','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (320,5,N'A','4',372,'deedba07-171b-4038-88a5-a57166e8f446','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (320,50,N'A','24',283,'4fef28b3-6652-4d3a-999b-00784d401e42','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (321,1,N'C','6',569,'afdbcf09-10f8-4f3c-86e1-379310ffbfe3','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (321,5,N'A','6',540,'65fc4167-6a09-46c9-a262-632b945b2fbb','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (321,50,N'A','26',641,'b291ee86-cb6e-4d74-b47d-b8b0794ca9c4','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (322,1,N'C','7',622,'7726d791-a784-4754-b144-bb25c9e2f38a','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (322,5,N'A','7',587,'04da1bb9-9625-4e71-b861-93f64a3a53dc','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (322,50,N'A','27',475,'02d51ed0-af15-44e9-a355-86433710b0c0','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (323,1,N'C','35',603,'f7863985-c001-44d5-a939-554c67df203a','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (323,5,N'A','12',568,'bd637bc5-eb67-4424-8f92-dca208276e6f','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (323,50,N'A','28',513,'968dae62-ea98-49fe-b190-d1ec7b9e9f0c','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (324,1,N'C','36',585,'c6e3bcde-5f39-40ef-b253-ad2b018ab1cc','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (324,5,N'A','13',568,'aec9bf74-0e06-4181-b6c7-c8fa41126a4e','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (324,50,N'A','29',476,'cee69fd4-22ec-4d83-b9ec-c0af63967839','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (325,1,N'H','1',569,'624ac935-868e-40e0-8668-950451746f90','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (325,6,N'G','1',540,'cf93bbfb-a391-4313-814d-82d62fbe1afb','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (325,60,N'A','1',641,'d42750b2-2c8a-4457-9dda-4b43cbdc4594','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (326,1,N'H','2',622,'71a75809-8b9e-4f87-8687-8bdd367f2f72','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (326,6,N'G','2',587,'67777062-a86a-4fed-bf8f-f7641edf9444','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (326,60,N'A','2',475,'eadaa7f8-e962-46c4-977f-05538c494bcd','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (327,5,N'K','1',408,'61add309-16ef-40d4-9853-548f4efdc40c','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (327,10,N'F','1',443,'553c89bb-2063-48e3-966f-b557efd1f4e9','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (327,50,N'B','9',513,'a3aad1f8-ba38-4f6c-99d3-dbc5e2bc9774','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (328,5,N'A','8',568,'bf52885d-74a3-422b-8c75-8a46350d9a6d','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (328,10,N'D','1',585,'c6c865b4-0db2-44b7-9d5f-12d43b75f803','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (328,50,N'A','14',476,'ea52800f-a344-4c4a-9e37-d48a67fbbb6c','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (329,5,N'A','9',558,'7a1417a3-21ea-4da1-b3d1-e85bab7d8a9e','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (329,10,N'D','2',576,'ad6db38a-997b-4ad8-a03b-7f38f8c3b7e1','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (329,50,N'A','15',467,'6cb842cb-7b2f-4d89-9187-3c81630fb907','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (330,5,N'A','10',548,'ad971345-bf63-47d4-975d-c56a6081ff0a','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (330,10,N'D','3',566,'ff9889d7-e242-4761-ace0-eb0d95147fa8','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (330,50,N'A','16',457,'e6d96af6-7e4c-46f7-9a2c-5e94cf403888','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (331,5,N'J','5',574,'d52d418a-c295-4cb9-a410-8ee245fc61a7','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (331,10,N'C','6',441,'1d251426-738f-4b5a-96c2-3c9226e18905','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (331,50,N'A','12',390,'85990921-d43f-41f9-9095-5863d687bb43','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (332,5,N'J','6',344,'171a680f-7a90-45df-980d-48757f4b4eb4','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (332,10,N'C','7',233,'7a23dc3c-9bdc-4aa5-ba41-0c4e9f4b6e18','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (332,50,N'A','13',267,'c08f7632-254c-43ea-bf10-8ec79bbb4374','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (341,1,N'E','4',372,'00eed5ca-525c-4174-885d-846deefc223e','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (341,50,N'G','10',392,'afb7ca1e-6f91-459b-b508-31d773564ac8','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (341,60,N'S','1',339,'a07991c9-ce2f-4081-a5f3-ac4de98ba485','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (342,1,N'E','5',369,'fea262c8-d498-4b77-b8fe-82258aff6ad6','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (342,50,N'G','12',388,'ec6c3097-17f6-4108-a55b-3c239a965360','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (342,60,N'G','11',336,'7542fce0-b9f7-42ec-9671-a4809c568743','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (343,1,N'E','6',568,'a82c0072-9a18-4318-a62a-92304eeb0443','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (343,50,N'S','3',606,'656a9a1f-6f1e-4d75-9ca5-fcd0fe3cc27b','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (343,60,N'S','2',499,'0f5d6037-a8c6-49b4-92b8-a50dc5880372','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (344,1,N'E','7',358,'000c77ab-c1d6-4f8e-a66d-ed8068140d8c','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (344,50,N'G','14',332,'6ad6b192-073e-49fe-97b0-1567c4f40778','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (344,60,N'G','13',382,'0a5ec50b-6c5d-4e08-b126-516eba2006d3','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (345,1,N'E','8',321,'05e0ee89-8462-4b52-bc3c-7c7735214c05','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (345,50,N'G','15',315,'d4a2cfda-f3a3-4a65-80b5-ccc70b046d4c','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (345,60,N'S','4',300,'331a2238-a0e4-4685-adfd-f5b4f1af9a5f','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (346,1,N'E','9',585,'11bc6f46-10dc-4771-ac9a-e2179f1b2461','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (346,50,N'S','6',476,'38f17071-fe89-4cb2-ace2-ccb8f0cf0f7e','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (346,60,N'S','5',641,'24a6f94a-da92-4566-91c8-59218a6cb9d9','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (347,1,N'E','10',318,'7295a247-2228-44b0-8218-0cb9908a5ac4','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (347,50,N'G','17',246,'87dd4e3b-4a78-47a4-9d45-685a43c91b8e','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (347,60,N'G','16',332,'206aafb1-15f7-4dc4-b8ee-b3eb772eeb4d','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (348,1,N'E','11',323,'cdab8141-2896-4b9d-a332-5f726ee6cb23','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (348,50,N'S','8',251,'0d8fe9aa-d64a-4842-9856-42aad33de485','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (348,60,N'S','7',337,'3e598d72-9120-42ea-9fa7-a0e2929e2538','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (349,1,N'E','12',328,'7109150f-14a3-4eac-b72f-e128b3044abf','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (349,50,N'G','18',256,'604c83fd-5918-4951-b8a2-2d047c0768ab','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (349,60,N'S','9',342,'332c44e7-f145-4bb2-bb36-fe8f9bd93596','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (350,5,N'J','2',622,'50be1fe4-c767-41d9-bd46-748a31a0768d','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (350,10,N'C','3',406,'2e276e50-efa2-4c02-b1c1-4999e16a1799','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (350,50,N'A','2',313,'9a23c432-ba8b-4f05-b7b4-94e451f01c24','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (351,5,N'J','3',179,'d1f587a6-a29f-47a6-88e5-30e9eca52ab3','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (351,10,N'C','4',281,'8727068f-3b49-4031-ae74-31de17693d6b','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (351,50,N'A','3',145,'a1962b7f-ec0e-43ac-80bb-a04e7cf0e31d','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (352,5,N'J','10',300,'f8bef986-c583-4428-a515-358cebeff3b9','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (352,10,N'C','1',278,'71ea95cb-6490-4db9-beb3-38e565f45630','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (352,50,N'A','20',195,'1e6baff0-75fc-4c17-9b8f-164db2531564','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (355,1,N'D','16',276,'8ad0c765-f104-4435-afeb-0bbd74d6b08c','2014-08-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (355,6,N'H','16',257,'2d1d737d-8877-4b9e-baec-da6fe962e19c','2014-08-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (355,50,N'C','1',289,'983c8fb4-b5a3-4de8-97c0-c1d050e5848a','2014-08-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (356,1,N'D','17',262,'6de6fdd4-8de6-478a-a7cb-312e68edd8c6','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (356,6,N'H','17',243,'a03019e1-cd99-43ed-a1c7-6ff207ad3ce0','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (356,50,N'C','2',275,'d604707d-b5c2-49cf-a983-8934523e186d','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (357,1,N'D','18',248,'a492ec7b-d2a7-48f0-9bc6-66c779afead3','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (357,6,N'H','18',228,'866ac631-6597-4b06-b019-8f040f552e49','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (357,50,N'C','3',260,'e879cfeb-5115-421b-bfe2-7376b72afb4c','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (358,1,N'D','19',233,'ddab150a-235c-432a-83d2-0822db1b057d','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (358,6,N'H','19',214,'536b55d9-5dcf-4af1-bc64-f19dd5022086','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (358,50,N'C','4',246,'0511f131-8a69-4975-aa97-54f366d8b211','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (359,1,N'C','8',369,'46bc0376-ad5c-4bdc-99d4-55a959f32163','2014-07-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (359,6,N'R','1',360,'2d7484f7-f157-43e1-b33f-87ce2f94b360','2014-07-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (359,50,N'E','1',374,'52b0910c-93b1-47a6-b2b7-d78f14ebb914','2014-07-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (360,1,N'C','9',363,'b16bdad8-4778-41ab-984d-d2de2927e3b8','2014-07-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (360,6,N'R','2',353,'73de1d45-d603-4c5c-bd6a-78a49943b502','2014-07-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (360,50,N'E','2',368,'01add3d7-e329-4167-9b7c-f3a2c31a25e1','2014-07-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (361,1,N'C','10',499,'55b9556b-a6bf-4be1-8c4b-94510d875d60','2014-08-03 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (361,6,N'R','3',601,'4351724c-18c7-4e48-8e69-f0158e60e823','2014-08-03 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (361,50,N'E','3',531,'f340eb47-1825-4e24-a2f8-c3daaac9d1bc','2014-08-03 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (362,1,N'C','11',377,'2d215f50-e878-41ff-be20-c30a74a4502a','2014-08-03 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (362,6,N'R','4',315,'d0ea3625-0c56-4380-8363-bf79b3df9870','2014-08-03 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (362,50,N'E','4',334,'9ead4efe-86a5-4787-94f3-045d1636ef3d','2014-08-03 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (363,1,N'C','12',499,'2e2bc76c-4ee0-47a1-9a60-ea46e3659e4a','2014-08-03 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (363,6,N'R','5',643,'7322a3fa-0786-4be6-a232-6e9613b4ccd0','2014-08-03 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (363,50,N'E','5',619,'ba60b595-1709-4bb1-a224-d9d56dc7c70a','2014-08-03 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (364,1,N'C','13',368,'0336df16-7e36-4c21-bd6e-059123a74698','2014-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (364,6,N'R','6',358,'015f9608-e327-446f-b9a1-9b35386ca195','2014-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (364,50,N'E','6',326,'85014570-7bc6-4553-b8f5-40009658e395','2014-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (365,1,N'C','14',411,'517e8517-442e-4498-bffe-6ed02467eece','2014-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (365,6,N'R','7',691,'f7e2000a-42bc-4763-b78e-b8deb7aee3af','2014-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (365,50,N'E','7',619,'84066d8c-dece-401e-8e3b-8513db83ba0e','2014-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (366,1,N'C','15',318,'9cfe6d84-71ed-4032-88b4-1b0920740597','2014-07-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (366,6,N'R','8',299,'09eb5c91-f9c3-4c08-9dd4-7b1b5e8b54bb','2014-07-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (366,50,N'E','8',412,'df23c794-808e-417d-953b-4499f97a8768','2014-07-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (367,1,N'C','16',643,'5f1c3630-0c24-433a-8cf3-40f4b40606db','2014-07-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (367,6,N'R','9',689,'70153711-7aaf-4da3-993d-9fce9cf137cb','2014-07-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (367,50,N'E','9',569,'2cd85f13-0b80-4312-afbe-750362c45f34','2014-07-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (368,1,N'C','17',369,'abf23795-41ab-4e61-9697-725825f2c0e3','2014-07-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (368,6,N'R','10',360,'a693aa01-3638-452c-abf8-f50552be92d9','2014-07-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (368,50,N'E','10',374,'35cc6156-ae35-4251-9856-bf15db9ed147','2014-07-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (369,1,N'C','18',363,'952f0127-cb2a-4ffb-90cb-e92eb69e7498','2014-07-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (369,6,N'R','11',353,'79a3d625-139b-4a85-bf48-5c5405e5cac6','2014-07-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (369,50,N'E','11',368,'46ca8287-b665-444d-80b1-2d4afca5c039','2014-07-28 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (370,1,N'C','19',252,'6a2188af-2b6f-4d9b-917e-86c78968a293','2014-08-03 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (370,6,N'R','12',155,'d9fe0218-5528-4001-b11d-aa39001c3297','2014-08-03 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (370,50,N'E','12',476,'a4937ba2-ac13-4bdf-bf6f-75a94b3408aa','2014-08-03 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (371,1,N'C','20',585,'acbb836b-9ccb-4a59-887b-394899fba961','2014-08-03 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (371,6,N'R','13',649,'da646c40-bef6-4855-bdf3-ba1c29907b99','2014-08-03 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (371,50,N'E','13',547,'fc7e0e74-3314-4f38-89b1-e809c2e518c7','2014-08-03 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (372,1,N'C','21',281,'44970271-6e78-4913-96fb-c000ca9be1f7','2014-08-03 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (372,6,N'R','14',344,'68466df2-9832-4a64-9645-6fa5783a1f97','2014-08-03 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (372,50,N'E','14',272,'4679584b-36e7-4292-b2d4-540eb0baa4ff','2014-08-03 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (373,1,N'C','22',284,'e95fdb19-5e04-4f6f-b4ac-bec51f93004c','2014-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (373,6,N'R','15',347,'f888a98f-2614-4ac6-af4c-0bc0b0e87661','2014-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (373,50,N'E','15',275,'4eff169f-6b4d-4d55-bc97-90a5fcf3c9d6','2014-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (374,1,N'C','23',288,'7e32714a-875c-4446-a94e-26ca13f33b58','2014-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (374,6,N'R','16',350,'8a8f612f-a214-4aa0-ae77-f0ab1518c29d','2014-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (374,50,N'E','16',278,'5926bfe2-bf96-469e-bbdd-7217faae18c5','2014-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (375,1,N'C','24',291,'4bd22b4e-4b98-499d-b3a2-a5d848a93b9f','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (375,6,N'R','17',353,'708e8581-b834-4122-b095-dcada0a33139','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (375,50,N'E','17',281,'29695d30-491f-4125-86de-acf27267c6fd','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (376,1,N'C','25',585,'9117d3dd-c5fc-4274-826b-6a1e018592e7','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (376,6,N'R','18',649,'59b30ee5-aa05-4069-914a-01a4860daccc','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (376,50,N'E','18',547,'cfd04477-1d95-4065-ad38-7261f8267d24','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (377,1,N'C','26',249,'64451b09-a02d-4a97-97e7-3fd1f603656c','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (377,6,N'R','19',299,'ae60c83a-108b-439e-87cc-f209f0f734f1','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (377,50,N'E','19',393,'d4f21a3b-f52f-4c25-a3db-07450393a97e','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (378,1,N'C','27',244,'7f9de9ea-c846-4941-8d0b-67bf96cf3ecf','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (378,6,N'R','20',294,'ba32e523-8a33-4721-8eda-f8b7fbb66f84','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (378,50,N'E','20',388,'403788ea-0fb8-4a35-95a5-6fad3ba02b5f','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (379,1,N'C','28',323,'426d1c6b-0c59-42d4-8d48-8d62bbd19532','2014-07-19 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (379,6,N'R','21',897,'78120df1-86f2-4b14-b0d4-782fa1fdf229','2014-07-19 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (379,50,N'E','21',691,'d94aba0d-56f0-4fbd-bc2c-1917c8bec2dd','2014-07-19 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (380,1,N'C','29',156,'7aae8563-add3-47a3-8d6d-d20a9ec019b5','2014-07-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (380,6,N'R','22',264,'9fde5eba-17e5-4a45-a8e7-ba45aac01314','2014-07-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (380,50,N'E','22',350,'2940c078-3e2b-4151-a6d5-61713f51672c','2014-07-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (381,1,N'C','30',163,'87b51434-9d2d-4491-bd93-5d7c38c2305e','2014-07-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (381,6,N'R','23',270,'f7583df4-5c0c-4db3-bd31-1bb00fe8d6c2','2014-07-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (381,50,N'E','23',356,'9acdb34c-5342-472f-a185-904eae6d9113','2014-07-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (382,1,N'C','31',169,'2d6d664e-2220-49e2-a263-4c53be5c2065','2014-07-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (382,6,N'R','24',276,'9e0934f9-7ba9-4def-b901-dfba82c75c5d','2014-07-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (382,50,N'E','24',363,'288103e3-3b2c-437c-b350-98f3126cdf6d','2014-07-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (383,1,N'C','32',587,'8ff37375-bdd1-44b8-8085-8fbcbf59b061','2014-07-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (383,6,N'R','25',676,'1bf6a76b-16c5-44d6-8c8f-ba0458fbeec0','2014-07-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (383,50,N'E','25',638,'f21e0ced-ebb8-4298-a5d2-b4c86019fd3d','2014-07-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (384,1,N'C','33',299,'17080020-ed82-44d6-bc22-70d48fcb8010','2014-07-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (384,6,N'R','26',217,'d70c97ea-ba23-4b1d-9b94-cb8da7420b08','2014-07-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (384,50,N'E','26',304,'8ef1bd2a-dbaa-4a4d-82e6-8ca69a67f2c1','2014-07-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (385,1,N'C','34',619,'b2e01d6b-62f3-4731-b05c-b3c726300ad0','2014-07-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (385,6,N'R','27',526,'63c7faf1-9573-4a7f-b9bb-ce0d5999abbd','2014-07-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (385,50,N'E','27',633,'2af00b07-8f20-41b4-9141-facc338d46ea','2014-07-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (386,1,N'D','1',148,'2bb4d4d9-b826-4a68-8a81-cbddf6dd8847','2014-08-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (386,6,N'R','28',192,'c5bcd527-544a-4c25-9091-d71ce3b6f481','2014-08-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (386,50,N'E','28',385,'52a0bc53-3db4-4d59-937e-d27b88eae7ed','2014-08-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (387,1,N'D','2',524,'c3f68247-c17d-4c33-b932-51845ce15b41','2014-08-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (387,6,N'R','29',710,'6b8a8f43-0ea9-419a-bb6a-1880f396f8ba','2014-08-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (387,50,N'E','29',654,'0c6d6619-80df-414e-90cf-d16cf513762a','2014-08-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (388,1,N'D','3',292,'5cd35680-ea12-4299-b8a5-c2c34a1c1b2d','2014-08-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (388,6,N'R','30',140,'adb0e9a5-3e3b-4d32-84a4-dcabb4800b99','2014-08-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (388,50,N'E','30',366,'fb84c5fb-1f0a-430a-b0a7-60b5a6039459','2014-08-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (389,1,N'D','4',657,'1bc79480-0bd2-406f-a8bc-0044b056bff1','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (389,6,N'R','31',691,'53e256e6-3196-4632-a449-265998c40575','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (389,50,N'E','31',460,'e7bff7c6-0c4e-4739-81dc-b1343fcf0ae6','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (390,1,N'D','5',292,'a9b93fbd-bcde-4ed6-bfb3-1e2f9a970f29','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (390,6,N'R','32',140,'f8867b2b-1a45-40e5-ae45-e7179b1cf0b6','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (390,50,N'E','32',366,'9983eea3-d2e9-466b-8a45-9dcba1505cd0','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (391,1,N'D','6',296,'214cd58d-24f1-4937-b06a-855c53e17511','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (391,6,N'R','33',144,'aaad4a7d-9a70-4d16-9de2-46d82415b7ef','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (391,50,N'E','33',369,'e3f44ca3-8527-45f9-91f8-1d863e1ae757','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (392,1,N'D','7',299,'e6726b0d-1f11-40f9-890b-4bea7c2384f6','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (392,6,N'R','34',147,'8a1608d2-8c67-44bc-81a2-41fa849af519','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (392,50,N'E','34',372,'01545f11-5822-43e1-821c-bbe6c3d3f0c9','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (393,1,N'D','8',603,'ce7edf53-f13d-45e7-8bcd-707c4b53e1c5','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (393,6,N'R','35',780,'cfd67534-3382-43d6-9de3-5a275d809ea3','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (393,50,N'E','35',497,'aef7ac8c-d595-4dfb-b41e-9536fed7a993','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (394,1,N'D','9',302,'72090dae-c90e-4b90-b752-e7518c177bb2','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (394,6,N'R','36',150,'d77fdae7-048d-4ee9-be37-42eb722c8117','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (394,50,N'E','36',459,'3a5be20f-ecb6-45b2-a948-98c47bece24c','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (395,1,N'D','10',281,'abf6b89a-1931-4179-b851-39a49cd83fff','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (395,6,N'R','37',355,'72d6c080-9f91-4dac-8e7a-ee4161947a65','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (395,50,N'E','37',148,'f0ab1a66-42ba-4b10-9e75-61e0e6fd8463','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (396,1,N'D','11',636,'290ef0f5-e1bb-417a-a8d8-1d5e25e791fc','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (396,6,N'R','38',585,'f7225878-8a03-4467-8184-c81a8f9bc451','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (396,50,N'E','38',603,'7b36c058-dc0c-4404-94a2-700e6eeb7de9','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (397,1,N'D','12',339,'f38a392f-df6e-4b83-aaaf-44fca31f2443','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (397,6,N'R','39',550,'c5c52bc6-895c-4900-a4d6-9699db354c9d','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (397,50,N'E','39',763,'de7cf261-ed7a-4b59-b06e-5aaa930120fc','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (398,5,N'B','1',372,'5c40b94f-9012-4610-a30e-614e09b73790','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (398,10,N'B','4',404,'1d6c48d5-8351-49c1-988c-5b54c8fc19f2','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (398,20,N'A','3',550,'be99281e-ba29-4e3b-8ceb-40eab801e74e','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (399,5,N'B','2',366,'41f877c5-b77c-4f3e-9de1-e0065248ff2e','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (399,10,N'B','5',398,'a36caeb3-7e04-467e-a884-58a076a04844','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (399,20,N'A','4',544,'2519471e-47b8-40b0-ad78-1d9fa2e1922e','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (400,5,N'B','3',260,'0f2050d4-f337-49e1-af12-1183e9ecaf68','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (400,10,N'B','2',246,'7dc91844-6c3c-4542-9781-78c256e14f40','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (400,20,N'A','1',284,'dcca4742-7bbb-4308-8129-c1324f1c7da3','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (401,5,N'B','4',283,'01700343-1c46-4765-845f-9196dafe6b24','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (401,10,N'B','3',212,'15c1e385-25c0-480d-9b5e-d295483e1027','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (401,20,N'A','2',302,'1b7b59ff-cac1-4abd-9a54-c912ba36c5b8','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (402,1,N'F','1',316,'4a28a4c6-b3e2-47fa-867e-0aa76682ec90','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (402,6,N'G','3',353,'0d8ab28e-40b9-4097-8686-97d9d4e182f7','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (402,50,N'T','1',321,'2f9d3973-e6e5-47dc-bc73-1e1b914141d4','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (403,1,N'F','2',313,'7b91307f-1f98-4514-bf52-f5cfa41128a3','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (403,6,N'G','4',350,'641bbe33-c957-40d1-b4ec-22a940fc9487','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (403,50,N'T','2',318,'446d7922-61ca-4fec-8584-0c8339abf855','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (404,1,N'F','3',310,'0f610bfa-cec6-4e2e-99ef-61a91042f6a1','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (404,6,N'G','5',347,'c27d3114-c6dc-4d6f-814e-cb704b152f9d','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (404,50,N'T','3',315,'f511cf72-5b77-4a7b-b777-7f943eb95b1d','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (405,1,N'F','4',307,'6cbf468f-fc5c-4ce0-8e43-bf761624b7e2','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (405,6,N'G','6',344,'9030ea68-2f28-43fc-ae2c-fdd57444fc2b','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (405,50,N'T','4',312,'a172a0d0-e4d2-40ff-828a-394edc93cec0','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (406,1,N'F','5',304,'5ae120bf-9489-4d02-9569-0ad129fb5611','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (406,6,N'G','7',340,'977516d5-833c-426e-adba-6a4ea45e60a0','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (406,50,N'T','5',308,'ab0ed5c3-6a8d-4d65-8189-482345c0dd8e','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (407,1,N'F','6',460,'76523859-c463-4470-95e7-121c6349d07f','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (407,6,N'G','8',587,'83ff6efa-ebe6-4566-accb-732b98c89554','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (407,50,N'T','6',625,'223515b8-0201-45e3-8b14-0f73f2e84df0','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (408,1,N'F','7',417,'aebcff82-ad40-492a-ad72-e7a68bb20ef1','2014-08-07 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (408,6,N'G','9',344,'6c83a526-e9fb-4ada-84a3-c2085d12c29e','2014-08-07 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (408,50,N'T','7',296,'1c4a5ee5-55b2-45f6-8f4b-a9a55b8375e2','2014-08-07 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (409,1,N'F','8',414,'02272bf0-1f64-4ea9-b73d-8e2c6a1f05e2','2014-08-07 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (409,6,N'G','10',340,'9ffe546f-343f-4cf1-a165-c43bbf1fc0d8','2014-08-07 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (409,50,N'T','8',292,'5bdd9df8-3286-4f69-bd79-b731c7d13111','2014-08-07 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (410,1,N'F','9',411,'59311c05-9bc0-4ff4-8810-97416188cf9b','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (410,6,N'G','11',337,'c0b2029a-f0d6-4efb-97fd-96428834a46b','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (410,50,N'T','9',289,'9cab72da-293c-499d-8612-5ec854f4b021','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (411,1,N'F','10',603,'9872c93f-c4aa-49bc-adde-81230134cd8d','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (411,6,N'G','12',552,'9cb6e6af-c5f7-48d6-afcd-fddc14aec26c','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (411,50,N'T','10',459,'0f2194fc-d2ea-4dbb-819f-ca2c24122a01','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (412,1,N'F','11',299,'10ee3c79-2238-4ff6-8dc8-974d7fa5557d','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (412,6,N'G','13',321,'f1f92cf8-627a-48e5-82bc-2ea3b58d991d','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (412,50,N'T','11',156,'c6ddfd7c-6b86-46e6-849c-63e5a84b8e06','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (413,1,N'F','12',641,'bc6df6cd-aa94-45c9-aa74-110d339a4711','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (413,6,N'G','14',603,'0eb6d655-fbd8-4565-b7e1-d069062fe50a','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (413,50,N'T','12',459,'a5c4352d-1103-433c-b801-1e49c53a5e8e','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (414,1,N'F','13',427,'24a9d4af-ec4d-411c-982e-49a7db4517ab','2014-07-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (414,6,N'G','15',321,'c9c50b9d-81f5-48c6-8c92-3aec825dcc27','2014-07-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (414,50,N'T','13',371,'333f9ecd-4933-4f5f-a820-4bcfbf657825','2014-07-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (415,1,N'F','14',422,'6807ed12-c75d-4ae7-b031-13d7de3be0fe','2014-07-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (415,6,N'G','16',316,'d523afaf-1a7b-4f2c-b9e7-2c6ead6e3035','2014-07-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (415,50,N'T','14',366,'61712e05-6ee1-4511-8c4d-ec89265250f5','2014-07-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (416,1,N'F','15',417,'9c9d0459-5ac6-4d54-82b4-6775d283210c','2014-07-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (416,6,N'G','17',312,'b0b1f1e0-a2ef-4be0-a63f-e1bf2bda3362','2014-07-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (416,50,N'T','15',361,'253db65c-4833-4766-bc10-265984f6f9cb','2014-07-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (417,1,N'F','16',572,'8bdee515-541e-41a6-a6f7-bf40d2173ac4','2014-08-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (417,6,N'G','18',627,'029b2a2e-2d6a-4c38-b38b-a986a4df2452','2014-08-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (417,50,N'T','16',516,'84d6a6a6-1b31-48e6-a5ef-8515b8212cf6','2014-08-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (418,1,N'F','17',248,'065fb4a3-a7ef-4ac5-9510-ce89317719b1','2014-08-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (418,6,N'G','19',283,'3a260d71-dd89-4d5e-9271-7a1ceab13395','2014-08-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (418,50,N'T','17',388,'3a9618d7-4f46-47a6-a224-78a4240cf165','2014-08-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (419,1,N'F','18',246,'b81b94b3-9e2f-4675-ae20-ac358b46a455','2014-08-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (419,6,N'G','20',281,'91663a44-ea3b-4c72-955d-daccc2cb74aa','2014-08-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (419,50,N'T','18',387,'86e5e622-e1fb-4308-8ddf-2c6ee02e45e7','2014-08-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (420,1,N'F','19',244,'166b592e-b6be-44b1-aa69-41f2d31dca73','2014-08-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (420,6,N'G','21',280,'eaf15bae-fba9-42d6-b37c-b512f5e78c7e','2014-08-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (420,50,N'T','19',385,'a81d45ea-b957-4835-a47d-09b57a8d2fde','2014-08-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (421,1,N'F','20',243,'54cc5882-b786-4e61-bdf5-808011295001','2014-08-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (421,6,N'G','22',278,'dcc01697-ee43-4f64-bc08-edca25eb8f16','2014-08-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (421,50,N'T','20',384,'77e0026b-f62a-4e23-b8d9-d088f5321e9d','2014-08-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (422,1,N'K','1',620,'b1a6ee01-fb3c-45a5-b5b1-46274213ba5b','2014-08-07 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (422,6,N'G','23',515,'4f5216d1-7ee9-4a1e-afbc-2477d7d6ef45','2014-08-07 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (422,50,N'T','21',497,'309003bd-8c77-42f1-8489-b22ac60ac940','2014-08-07 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (423,1,N'K','2',619,'0a3219bb-74b2-4c85-8474-f6a4a5096a40','2014-08-07 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (423,6,N'G','24',513,'0b685703-951b-42a0-930a-705f7497e430','2014-08-07 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (423,50,N'U','1',496,'65a0613e-ffe1-4857-9bd6-76bfcbda05c9','2014-08-07 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (424,1,N'K','3',617,'cfe9b367-934e-4adb-a58f-06dbb4fc02e6','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (424,6,N'G','25',512,'70f516ff-5f50-4628-adb3-79ec23d339bf','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (424,50,N'U','2',494,'3a8cb523-d799-46eb-8eae-ba7562610615','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (425,1,N'K','4',616,'4f52c183-b4a9-4a5e-852d-3bac4fe10364','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (425,6,N'G','26',510,'2e55d18c-5ed1-4bce-9f4d-182c03a9114b','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (425,50,N'U','3',492,'165a33b3-ac7f-4717-a451-9e2c96250799','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (426,1,N'K','5',614,'5a0b316a-a2ee-4e00-8ff9-99a1d3181e6d','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (426,6,N'G','27',508,'806f5772-158d-4442-8be6-2a9e35eb288b','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (426,50,N'U','4',491,'ca1fed88-1bc8-487e-af6b-bd156612b780','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (427,1,N'K','6',612,'ee3a9b1e-8ce3-4ad3-8731-9b0ff331d22d','2014-08-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (427,6,N'G','28',507,'abfe1a52-43fb-409e-a76a-df8642dfcc59','2014-08-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (427,50,N'U','5',489,'90a7e004-8bdb-40ae-98a0-6b756dcf7e32','2014-08-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (428,1,N'K','7',611,'02d98068-7a9f-4d08-b8bc-a135495a8c42','2014-08-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (428,6,N'G','29',505,'66c31f3d-1470-4d19-bee3-7b56b1841731','2014-08-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (428,50,N'U','6',488,'746a5cfa-178e-4045-b870-b1a8d5afe693','2014-08-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (429,1,N'K','8',609,'1da04543-2c1d-4e32-8309-f122af94d599','2014-08-06 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (429,6,N'G','30',504,'45f36d5d-9959-4601-9174-6db78ecb24b5','2014-08-06 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (429,50,N'U','7',486,'615e3ae7-3a4c-4a8f-b6c4-310d19471f1f','2014-08-06 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (430,1,N'K','9',608,'fa52e937-c81e-4b9b-8aaf-9b17b1e9e221','2014-08-06 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (430,6,N'G','31',502,'e4c5cf3a-dacf-41f2-aeab-6aba23f6fbcd','2014-08-06 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (430,50,N'U','8',484,'3c97af79-e74c-47d8-b037-f0551018ee1c','2014-08-06 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (431,1,N'K','10',611,'ef83378a-74b7-427c-a920-06580c15625a','2014-08-06 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (431,6,N'G','32',505,'8d949e7f-113b-4c9b-910e-07d20f8343e4','2014-08-06 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (431,50,N'U','9',488,'a59c4676-9d41-4736-a5fa-2d5d59777325','2014-08-06 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (432,1,N'K','11',614,'8e88e613-7a21-4f85-911a-6c4561a80e16','2014-08-06 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (432,6,N'G','33',508,'12cc3875-07a1-4c8b-abbf-8e62a6f6056f','2014-08-06 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (432,50,N'U','10',491,'3263d2c9-a9f5-4cf4-b5e3-b81bdc698c26','2014-08-06 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (433,1,N'L','1',617,'2c79989b-6065-44f7-a5b7-658516bb0670','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (433,6,N'G','34',512,'f0beaabf-3da2-4a6f-b6f7-80aeeaf86b72','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (433,50,N'U','11',494,'45bac6b1-de5d-4ccc-a8ed-0af8a5222403','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (434,1,N'L','2',620,'730ffa60-7617-4b4a-a157-96dec935d340','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (434,6,N'G','35',515,'c76ea25c-7d83-4d0e-a0c1-a4a61105673f','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (434,50,N'U','12',497,'2ce641a9-6bbf-459c-965e-79a5673ec082','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (435,1,N'L','3',624,'a111baee-2267-4926-8287-51889a4a3244','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (435,6,N'G','36',518,'79378e6b-713e-4470-a2d2-7f47816b51c8','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (435,50,N'U','13',500,'bbb56309-e9ec-4cc8-972b-631b4da70ac0','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (436,1,N'L','4',627,'e8d235a9-57e3-4539-902a-d1587fa70d79','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (436,6,N'G','37',521,'37538d3d-1754-47f3-a843-435a6751cd59','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (436,50,N'U','14',504,'e0da77f8-eda7-4308-a459-97f71fa0e845','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (437,1,N'L','5',630,'310726d7-9203-4cf8-a664-9f8055db5bf7','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (437,6,N'G','38',524,'28030a94-323c-440a-b516-db48db308e93','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (437,50,N'U','15',507,'c2bdd324-5764-4dd6-aa17-743141089e3f','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (438,1,N'L','6',633,'e7aa0b5b-e281-4236-8451-4f2be7c94092','2014-07-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (438,6,N'G','39',528,'f16e555c-0de6-402e-a030-782267ed81c9','2014-07-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (438,50,N'U','16',510,'a0a4a2ef-bcc4-4790-87e7-90d7764f24d1','2014-07-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (439,1,N'L','7',636,'7bced1b1-d4fc-4e22-888e-d683f01a6aa3','2014-07-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (439,6,N'G','40',531,'a893bfee-a048-49ac-a4e5-e83738defca6','2014-07-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (439,50,N'U','17',513,'b9b38c6e-76bf-4570-8869-c36bd7a3d167','2014-07-24 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (440,1,N'L','8',640,'21f25c10-15d8-4a35-8622-70f1a609f94b','2014-07-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (440,6,N'G','41',534,'2e3b8f70-5823-4002-85e8-8934aff487e2','2014-07-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (440,50,N'U','18',516,'c2ec33e5-3dc5-41ab-ad97-399d385d6cb3','2014-07-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (441,1,N'L','9',635,'03cfad0f-c227-4579-99be-e8f31e753103','2014-07-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (441,6,N'G','42',529,'02525804-006e-4cc2-a644-a66c826914b4','2014-07-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (441,50,N'U','19',512,'3ace5fee-309d-4374-8ac4-9b1053bb2130','2014-07-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (442,1,N'L','10',630,'9d45b955-0c3e-4a5b-8dac-b449a70f46d5','2014-07-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (442,6,N'G','43',524,'01b17f75-48ba-4f6e-b266-664734b7b924','2014-07-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (442,50,N'U','20',507,'1d595c46-49ff-439a-b8d4-f86113ed5eaf','2014-07-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (443,1,N'L','11',625,'53dd8159-9863-446e-9352-0fbabf08898d','2014-08-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (443,6,N'G','44',520,'276f7119-7483-459e-a6c3-2df6b8801c84','2014-08-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (443,50,N'U','21',502,'1fff7f27-7a93-4364-af4b-5f761857352a','2014-08-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (444,1,N'L','12',620,'d736e942-d015-42d8-a3ad-8595d93fd92f','2014-08-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (444,6,N'G','45',515,'4de6a1eb-06be-4d01-ac35-894404d282f0','2014-08-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (444,50,N'U','22',497,'fb6c4585-0563-4c15-b021-8039be938a8c','2014-08-04 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (445,1,N'H','3',616,'eb4f2a7b-bf1a-417e-ad5f-bc996fbf2725','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (445,6,N'G','46',510,'953370d9-f166-486c-9455-a1eeef84218c','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (445,50,N'U','23',492,'cf3adfa8-f900-42b7-a660-37b30c87aae6','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (446,1,N'H','4',611,'d4cfb8e1-4651-4673-8dcc-362f442606c5','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (446,6,N'G','47',505,'f58f510e-90e2-486f-b3d4-0c017c6eb2ec','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (446,50,N'U','24',488,'1d51f20b-b4e3-44bf-83a4-e8bcaf6a0eeb','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (447,1,N'H','5',606,'ecc8a876-cb00-4079-a1f5-849199c1ede9','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (447,6,N'G','48',500,'ae2d642c-ab0d-4ce1-881e-ce2cd5fff797','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (447,50,N'U','25',483,'fd36b8aa-28e6-4b1e-9e87-469fc427ff4d','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (448,1,N'H','6',601,'2d045980-7e93-42ef-9f51-29513f4859ad','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (448,6,N'G','49',496,'56ad65e1-04d4-4248-89fb-6027c28844fd','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (448,50,N'U','26',478,'0824ca20-ca01-4320-9d08-6dccd75040c3','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (449,1,N'H','7',596,'1fab07d7-a1b8-44cb-b815-820c649b5a1a','2014-07-27 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (449,6,N'G','50',491,'7f8631bb-e073-40d4-a228-44192956bc03','2014-07-27 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (449,50,N'U','27',473,'cc26b5ef-f6ce-4a1c-bc88-60d6d00ca778','2014-07-27 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (450,1,N'H','8',592,'becbb6f8-9e74-47fb-88f9-fe1047c1a9ca','2014-08-02 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (450,6,N'G','51',486,'60b176fc-9041-4c31-bd87-db8ceb1431b4','2014-08-02 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (450,50,N'U','28',468,'94547166-8beb-4ab6-bbfe-21aeba2ae77e','2014-08-02 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (451,1,N'H','9',595,'8d54e1a6-2e2a-4bb9-86ef-fc1b80b2cc7b','2014-08-02 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (451,6,N'G','52',489,'8207b94f-7bc7-408f-b27f-a5abd4dc5a3a','2014-08-02 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (451,50,N'U','29',472,'d4efb693-cf65-4ea4-9eff-b731af88d13c','2014-08-02 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (452,1,N'H','10',598,'5ac3fa47-4da3-480e-8f8c-9c9c50acae47','2014-08-02 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (452,6,N'G','53',492,'ffdf35c4-3bed-460b-9821-26d51a95baf6','2014-08-02 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (452,50,N'U','30',475,'a13cca2d-03b3-474e-86fa-db2a1c27d231','2014-08-02 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (453,1,N'H','11',601,'f3fac1d4-7609-44a0-ba12-b0a8f3025410','2014-08-02 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (453,6,N'G','54',496,'cab945f5-dd54-43ad-88fd-a25c200e8acc','2014-08-02 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (453,50,N'U','31',478,'7311df42-8339-425e-9589-6bd31e1e971f','2014-08-02 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (454,1,N'H','12',604,'a57d34f7-25b7-432a-988c-fadad614ce89','2014-08-02 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (454,6,N'G','55',499,'1bb8ff62-7587-4686-a863-bd55fe20cb5e','2014-08-02 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (454,50,N'U','32',481,'4cde0cc3-3428-460b-8111-987ab4df6ef8','2014-08-02 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (455,1,N'H','13',608,'8aebebe3-b29d-4376-be79-c5095831b02e','2014-08-07 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (455,6,N'G','56',502,'b4ec8722-a9cb-4f5f-b233-5530a9760a3d','2014-08-07 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (455,50,N'U','33',484,'8d384b50-cbba-4eb0-99d3-5448d8698106','2014-08-07 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (456,1,N'H','14',611,'2e56d990-74a7-4129-9846-e5f806b6de85','2014-08-07 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (456,6,N'G','57',505,'4c335b51-c1d0-476e-9eea-6bb03a3eb43c','2014-08-07 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (456,50,N'U','34',488,'4dd252b2-8337-4268-9b89-cac0d2236daf','2014-08-07 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (457,1,N'H','15',614,'1370408d-13b4-4c6c-850f-63a6163b2b3d','2014-08-07 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (457,6,N'G','58',508,'9ec6eff6-bc45-4442-94e2-632c289d0d1b','2014-08-07 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (457,50,N'U','35',491,'13fad7bf-527e-4429-921a-529474f0a179','2014-08-07 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (458,1,N'H','16',617,'c6e8524f-b6b3-4eb6-b25e-2f604e79ae3d','2014-08-07 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (458,6,N'G','59',512,'bbde3406-8255-449e-899e-bdb32ad2eba3','2014-08-07 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (458,50,N'U','36',494,'ce01779c-632f-48ac-897a-7214de4e3389','2014-08-07 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (459,1,N'H','17',620,'557a3ed2-69f7-4601-868d-34f465b8c904','2014-08-07 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (459,6,N'G','60',515,'ed7edce2-86dd-4241-965a-1af5e4cf18fd','2014-08-07 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (459,50,N'U','37',497,'6961f234-056a-4abf-a1cc-674110152992','2014-08-07 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (460,1,N'H','18',624,'46547c0b-79fb-41a6-8d11-a1591d44ff84','2014-08-07 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (460,6,N'G','61',518,'c7e472d5-a7f6-4a22-95ee-09ec93dee0b1','2014-08-07 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (460,50,N'U','38',500,'b7f5a6b7-3763-4a3b-9e41-ba063b256778','2014-08-07 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (461,1,N'G','19',627,'eda01cef-3b81-4d75-8670-40db0e8aa961','2014-07-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (461,6,N'H','1',521,'20e1c2cc-4fd4-4ec1-a159-929042ec47f6','2014-07-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (461,50,N'K','1',504,'2d2984bc-582a-40c4-bb95-d9936a33d36e','2014-07-18 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (462,1,N'G','2',310,'c3b6216e-6d48-4ab3-ad2f-eed611c2395b','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (462,6,N'H','2',204,'ba32112a-8f7e-4f19-8c15-da0690a9cb40','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (462,50,N'K','2',187,'b72dccac-5fde-41dd-bd6f-6f05fdd053c1','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (463,1,N'G','3',499,'e294536d-7f5a-4024-8466-353b39048c6c','2014-08-06 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (463,6,N'H','3',566,'4aeb951e-8c65-4c28-a5ab-e53b0d8cc9d5','2014-08-06 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (463,50,N'K','3',620,'7ca89d43-f69e-4cd3-a8e7-53a418bff63c','2014-08-06 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (464,1,N'G','4',500,'01abd22d-700d-4459-baaa-ca7503372755','2014-08-06 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (464,6,N'H','4',568,'d49aa8d2-4fec-4fc4-b343-f2c8e2d8f988','2014-08-06 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (464,50,N'K','4',622,'1eca084d-c032-47ff-9fa4-204f34ef3e72','2014-08-06 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (465,1,N'G','5',502,'ee6ae42c-2c83-4cc2-9309-505213bb9208','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (465,6,N'H','5',569,'0679645a-45a0-4b7c-8816-ea95e8c033b8','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (465,50,N'K','5',624,'d886564a-8a3a-41cf-8cd7-83902095e53b','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (466,1,N'G','8',504,'6294ecb8-195a-40c7-8199-e2cfcf5a0c92','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (466,6,N'H','6',571,'7cc8444b-55dd-46f4-bfa1-797597508e7b','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (466,50,N'K','6',625,'0d85905e-6003-46db-937f-9eee681d8314','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (467,1,N'G','7',505,'02929f08-040b-48e8-b859-e351476b2773','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (467,6,N'H','7',572,'49c9c319-356b-4d73-952b-f0d59dda9355','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (467,50,N'K','7',627,'ebefd4d6-f12a-4eeb-9584-2a6289f2cb51','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (468,1,N'G','3',507,'fda6b140-92b3-4e53-bac5-8a4b2e848fdb','2014-08-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (468,6,N'H','8',574,'e1d4b9b3-e9a0-4b0e-ba76-587336907407','2014-08-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (468,50,N'K','8',628,'0326587f-9a2e-4bfb-8017-2b006b61a963','2014-08-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (469,1,N'J','4',508,'cf285ff3-9881-4836-a3bf-6ff502199e7e','2014-08-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (469,6,N'H','9',576,'d4f4af2d-5215-45e8-8c6a-4d1c3b27edc8','2014-08-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (469,50,N'K','9',630,'d7bba80a-dfbd-4929-9e30-673f94f735d4','2014-08-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (470,1,N'J','5',510,'accba237-3706-42c4-afe8-0fb6bb8fd37c','2014-08-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (470,6,N'H','10',577,'f3fc1c07-317b-47b5-85d5-d57dae2aa709','2014-08-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (470,50,N'K','10',632,'85454fd3-9f47-4f6f-b38a-89258e127154','2014-08-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (471,1,N'J','6',512,'6203d596-5106-4997-9b9f-a40de5d62b80','2014-08-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (471,6,N'H','11',579,'43489450-d406-4486-b34d-2700c4dd13b4','2014-08-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (471,50,N'K','11',633,'c659b805-fee3-45a8-befe-14dc52e1c25c','2014-08-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (472,1,N'J','7',513,'4475b9f1-8fe0-4c38-a05c-f15b0216fea8','2014-08-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (472,6,N'H','12',580,'2adac0c5-91bf-4b1d-b154-1896b42beb4e','2014-08-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (472,50,N'K','12',635,'453994cb-4b54-4131-8cc6-ddc48f85908a','2014-08-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (473,1,N'J','8',515,'2a2bccf9-eb66-4667-ade7-3ea56bfa7240','2014-08-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (473,6,N'H','13',582,'eeeb74f6-dc41-4b85-8258-9905dbc4e837','2014-08-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (473,50,N'K','13',636,'d5dfe757-4edc-4bbf-91ec-79eae89b44ac','2014-08-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (474,1,N'J','9',516,'479b1bc1-f815-44ae-a696-91a2a3375706','2014-08-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (474,6,N'H','14',584,'fd82f153-b473-4cef-8f91-8a33600eb904','2014-08-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (474,50,N'K','14',638,'9a5778bd-ee98-4366-a40c-3b0b35388c4b','2014-08-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (475,1,N'J','10',518,'cdb7b866-0fec-4cd0-b93d-7ea2edc291ec','2014-08-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (475,6,N'H','15',585,'173b2a0e-0fca-4d75-a25e-887ab7523c6a','2014-08-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (475,50,N'K','15',640,'2acb4d37-de06-4050-a6d9-6c6bb4465417','2014-08-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (476,5,N'D','0',324,'436f1d08-3a45-42bd-8dd1-b6fa551b0bf3','2014-07-19 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (476,10,N'A','0',404,'a592f45b-9da4-4875-a75f-ceffe443a6cc','2014-07-19 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (476,20,N'B','0',355,'3a134806-6a8e-4e17-b471-365515f2153e','2014-07-19 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (477,2,N'B','0',403,'56adde61-b9f7-4558-900f-1ef3dcac50f2','2014-07-19 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (477,5,N'D','0',323,'3200aab0-0da9-4f7d-809a-f5a0ade43569','2014-07-19 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (477,10,N'A','0',353,'1e085ebc-8780-434d-ac03-8c98c230449b','2014-07-19 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (478,2,N'B','0',497,'939ec4e8-7c4d-40cb-b663-0c98cf85163f','2014-07-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (478,5,N'D','0',568,'5c1065c6-ded6-4569-892f-455fe0a920ac','2014-07-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (478,10,N'A','0',622,'b3dc38ec-98d7-4f0e-99c9-9b45e0fb2e0a','2014-07-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (479,2,N'C','0',441,'507b5e1e-3fcb-487d-bf9b-705556c228ed','2014-07-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (479,5,N'E','0',390,'0be6dfb1-9845-4106-ab26-962fd5f80872','2014-07-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (479,10,N'C','0',198,'712165a2-789d-4848-8d60-8153ab5f27f5','2014-07-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (480,2,N'C','0',689,'4fa134c6-6049-4a9a-8a30-f2f1e8159d63','2014-07-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (480,5,N'E','0',515,'d327c8e5-8e39-4ea2-b81e-43423f1fd068','2014-07-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (480,10,N'C','0',457,'e3a857df-eed7-4760-8e91-70a7bcf28937','2014-07-25 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (481,2,N'C','0',427,'1ef33b99-f9aa-445f-9355-ddb2d6201712','2014-07-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (481,5,N'E','0',374,'5d341ae1-d5c5-4b4f-aca1-4520e5b87bb9','2014-07-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (481,10,N'C','0',196,'1fd00477-eb28-4c02-80e3-c4cb70cdf107','2014-07-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (482,2,N'D','0',321,'9eaf665b-08c1-4456-aa2a-536c607bacfc','2014-07-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (482,5,N'R','10',427,'3e33c96a-4001-4312-9e27-767676334a6b','2014-07-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (482,10,N'L','0',176,'45a769b5-15be-4405-9c1f-42dbef34fd71','2014-07-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (483,2,N'D','0',691,'53431b4e-2948-4d8f-a9d1-b2a9dcda30d8','2014-08-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (483,5,N'R','0',531,'e83dd8e1-26f1-41e6-98a5-c88004be7a00','2014-08-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (483,10,N'L','0',459,'c9400641-1b3a-4a84-baf0-16b110a5d4b2','2014-08-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (484,2,N'D','0',427,'0a8cd779-6c31-448a-8f48-d86430ac93f9','2014-08-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (484,5,N'R','0',374,'89e015f9-84d7-4200-ab8b-fc6b86b9bd5d','2014-08-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (484,10,N'L','0',196,'1ceb98a2-4ef9-493b-ad32-5c9c530d064d','2014-08-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (485,2,N'D','0',321,'96758939-c6b3-444b-821c-519d6917d89c','2014-08-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (485,5,N'R','0',427,'500f898b-8f62-420f-ab9b-2f20c24ba319','2014-08-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (485,10,N'L','0',176,'7781927b-bb91-4e18-8ee2-88e7761f1d5a','2014-08-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (486,2,N'D','0',689,'39ae00fa-4be0-4686-bac2-e21941266a72','2014-08-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (486,5,N'R','0',515,'50f68020-73a0-4c92-89fd-3a6cda2ce599','2014-08-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (486,10,N'L','0',457,'437e0279-1e93-4e7d-8510-ef7dfcbf0146','2014-08-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (487,2,N'D','0',331,'99793199-1e85-40df-b211-5b3139811a07','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (487,5,N'R','0',337,'fde61861-1afc-41c3-a3fc-1c41719450eb','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (487,10,N'L','0',324,'c298805f-0aed-4f20-81a3-c41abd3f0ef2','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (488,2,N'D','0',312,'309bd92c-69f8-4a82-a89e-7e48985bcb99','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (488,5,N'R','0',318,'9553fc57-b940-434a-ac64-f4654222c876','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (488,10,N'L','0',305,'1f7e6f83-8b80-410b-9724-0eab0cf40d1e','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (489,1,N'J','1',612,'facfe28e-6c9f-4a85-8034-2e1e74d3ec00','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (489,6,N'F','9',619,'5583abf0-8fac-4a04-83f5-4f48659b6388','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (489,50,N'N','1',606,'fce97d84-91a8-4f37-a422-6d147c16f2b4','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (490,1,N'J','2',593,'fc3e02e8-8e40-4aeb-ac8a-00acc2a868c8','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (490,6,N'F','2',600,'d567b258-a47d-4784-8ced-36d2471fb9ad','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (490,50,N'N','2',587,'2371ace1-6f18-4ba6-b886-379d4538347f','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (491,1,N'J','3',254,'59adc11b-ca32-44e3-a8c3-743795b10295','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (491,6,N'F','3',420,'ec4cf840-8c82-4ea8-8d50-7fad3088d549','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (491,50,N'N','3',248,'924e73ef-b333-4594-8e99-a0adc10a969c','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (492,3,N'A','3',17,'f3b4712f-44b3-4a53-b245-63c39476bd53','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (492,4,N'A','6',14,'87ac9f46-e5c5-4c75-9d14-43340ed0aa50','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (492,40,N'B','2',16,'a0cf23bf-264d-411d-89f8-edc6fb5dee8f','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (493,3,N'A','2',41,'318e5d8b-83ca-416c-80d7-c77854b0b612','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (493,4,N'A','8',24,'4927f190-22cc-486a-93c8-57a7fd3124be','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (493,40,N'B','1',28,'0ea862e3-72b9-4528-ab80-594183c83d8a','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (494,3,N'A','1',49,'6df644a4-3d8b-4536-b012-7454bc2bb72b','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (494,4,N'A','7',12,'fd0ad7c7-6338-47e2-b682-979cf5c68804','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (494,40,N'B','3',4,'23e5680f-324e-40d9-a7c4-d29c6f78e51f','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (495,3,N'A','5',49,'15894a4c-a7f7-417f-b293-99b75ca3d396','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (495,4,N'A','9',35,'104606e8-072c-4290-a461-17791e14cd1c','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (495,40,N'B','6',25,'025f4f97-0086-4757-8ff2-94617dea03cf','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (496,3,N'A','4',30,'3aab2ea0-bb00-4faa-bec7-751ee97d9f8f','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (496,4,N'A','10',25,'5b66cd4c-aaab-4072-9b1c-2141463606ab','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (496,40,N'B','7',44,'5084d0ce-167f-4c6b-b8f9-ff5df6bfde15','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (497,1,N'E','26',336,'6c02a51d-c18d-407a-869e-a6f092e6d66f','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (497,6,N'M','8',364,'c9ba4c67-b045-4463-bbff-369e0d1ea62e','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (497,50,N'W','6',273,'3d0e1102-8bfd-4b0e-a369-287fe8cb94e4','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (504,1,N'E','15',392,'0b8bee49-6297-4619-947e-2399b68ccff1','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (504,6,N'M','6',372,'2b033bbc-4817-4919-8506-ac92ee8a864e','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (504,50,N'W','4',320,'1cae3640-2c47-46e2-8ac3-84ca3f0d6937','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (505,1,N'E','18',388,'8b147e39-57ec-47b3-a16c-618b7b294d56','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (505,6,N'M','11',299,'f95af4ae-4e74-4e45-9fd7-7356b25dd660','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (505,50,N'W','11',283,'f47d8120-fd77-4dee-8d08-76d462f24142','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (506,1,N'E','13',316,'762e549f-e8bd-44ec-9427-a70853d52129','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (506,6,N'M','7',390,'a1a817d2-e626-4912-843b-6c8b9f844a5e','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (506,50,N'W','5',121,'47363db2-4f53-451a-a14b-e0f869b9827d','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (507,6,N'N','2',673,'c56d7527-ebf2-4ebe-b2f1-cbbd4b18ab42','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (507,50,N'J','1',542,'b9828c8c-1914-4588-a97d-d96ec6532d73','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (508,6,N'N','1',681,'fb6140e9-db0d-4a60-9658-940ca81fbc56','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (508,50,N'J','2',550,'3d43f6b1-73ac-44f8-ab93-b7c19bfb849d','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (509,6,N'N','3',689,'d465f931-320c-4ea4-a3ed-a2f4e24d5837','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (509,50,N'J','7',558,'fd33b300-db87-432e-8d9d-50eb8d620840','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (510,6,N'N','4',406,'d669a00a-6fe2-41c7-b8fb-956afda2061f','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (510,50,N'J','6',316,'ec4deab0-698d-4ad2-80dd-26f9623f55f9','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (511,6,N'N','5',390,'1d636314-2931-470a-9700-85e9e069495f','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (511,50,N'J','5',350,'2f10d142-992f-40d1-9cf6-6dca1723ac48','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (512,6,N'N','5',334,'0077a261-a5a8-44a0-aa20-e3adb9a66409','2014-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (512,50,N'J','4',281,'5e88934c-fecb-4e02-8930-46bfcf17032c','2014-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (513,6,N'N','9',640,'153f32e8-1ed4-41d0-91c1-c32760d36ff8','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (513,50,N'J','3',724,'80c9f5d1-2acb-4ec2-b1a2-f5b10c17d3be','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (514,6,N'D','10',267,'9a46ace3-6e4d-4071-8437-22c0e5405301','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (514,50,N'G','4',318,'b916987e-6171-4c56-a964-3fde5162b2ed','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (514,60,N'F','2',212,'4de1673f-b41a-4ca3-bb14-33c1013dccbb','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (515,6,N'D','2',268,'ee1ecf60-28a9-45cd-9f42-1b4c2468c926','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (515,50,N'G','22',320,'4a7adfe0-5dc6-41a8-80d4-58833cede47b','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (515,60,N'F','1',214,'4fc21929-d18c-4c2d-82ef-174d16ed59cf','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (516,6,N'D','3',270,'7388cac8-66b9-4df3-9ddd-3768dc5ce2b6','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (516,50,N'G','23',321,'4fae00ee-c465-4166-b787-ec749d28a1aa','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (516,60,N'F','3',216,'aac2b0b1-4847-4c59-bfc2-db70fa45e63c','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (517,6,N'D','16',272,'a52f59b5-417d-4d09-aae2-7319cfbe13eb','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (517,50,N'G','5',323,'3f555d79-9725-4925-8e93-d9a3656ae21a','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (517,60,N'F','5',217,'8f7c4499-0ab6-498e-abcc-c522b73f424f','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (518,6,N'D','17',273,'a5d60611-307f-409b-903e-b00c86594fca','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (518,50,N'G','6',324,'f243475d-2304-4a8e-b2cb-f7ab3af7b6b9','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (518,60,N'F','6',219,'0a320658-cba0-498c-bc23-1f754c77ea54','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (519,6,N'D','15',275,'77944f88-c91c-4e7e-a8cd-2fea4e557127','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (519,50,N'G','7',326,'2bb5bd8c-5a1b-4460-a47b-5f7583732e1b','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (519,60,N'F','13',220,'94c47da3-04db-4048-82b5-0c8ed73f3ef1','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (520,6,N'D','14',276,'fe246a1d-593e-4caa-b50b-cf1c9b983e97','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (520,50,N'G','2',328,'8dfffa6d-e753-4f0e-9d35-829d67afa2d4','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (520,60,N'F','14',222,'ad7bb0b1-c102-4226-85e1-2f6735db710e','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (521,6,N'D','11',278,'490b51f2-e8ce-45e5-a073-fc9bb9ebc8c3','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (521,50,N'G','1',329,'b3745b7f-ab41-4cc3-8d71-c754201fec4f','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (521,60,N'F','18',224,'e48cdd7c-79a9-4dfd-85f2-a1203ea32678','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (522,6,N'D','1',280,'62af5c55-3b86-4329-9454-9212ce7b84b9','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (522,50,N'G','3',331,'8b053459-bc75-427d-a872-8ecb02fbf572','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (522,60,N'F','7',225,'55298213-d7c0-4553-bb63-857daf106053','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (523,6,N'K','1',164,'738855d6-4122-48c1-80d0-f65e39631641','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (523,50,N'Y','1',209,'62bfe8f6-83c8-4e77-8172-f4f0bec46ec1','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (523,60,N'L','6',139,'428999ea-a90b-496f-9f4e-59b12a52539c','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (524,6,N'L','1',124,'9ea9ce85-98f3-4a8e-bf1a-c610335aa646','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (524,50,N'Y','2',228,'ca005fd5-9637-426a-b1f8-5f69566dd09b','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (524,60,N'K','1',107,'66aa90f2-e56b-4a4f-ab10-3fcc6581cb9c','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (525,6,N'B','2',644,'8bcb6f5a-6ef2-4b88-a036-6dadffe0c6c3','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (525,50,N'F','1',619,'73b67ace-5e90-4f51-9dc8-6879c5626c25','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (526,6,N'B','3',587,'17ce859e-0359-49c0-bb28-d4f835f060b1','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (526,50,N'F','5',624,'e3fb5bc0-912e-4ba7-a293-b0644815f78e','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (527,6,N'B','4',888,'ffae06c0-6dc1-4d15-b1e9-74a68a33072d','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (527,50,N'F','11',702,'6d440ce3-36a6-4d79-90f9-46b9ab087de6','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (528,6,N'F','5',924,'3bb6b654-0d95-408a-9fd3-e32e133cc9d1','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (528,60,N'E','3',729,'fb6d579d-db41-4224-8c20-63fde29d7e6d','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (529,6,N'F','6',425,'f92e94d4-7b20-48ae-b696-a1e8e290edeb','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (529,60,N'E','4',371,'e9037624-1f9a-4d60-a16d-f5f0072b13ee','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (530,6,N'F','7',336,'f2bec15d-6c84-4725-9f86-c509695bd98a','2014-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (530,60,N'E','5',444,'e8673424-5469-4320-b3a2-f0da3cef7d3e','2014-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (531,6,N'F','8',427,'3ba7883f-cedc-4409-9a26-c610c732db29','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (531,60,N'E','6',374,'c4ac637f-2f18-4ff0-afd1-f817a59f950c','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (532,6,N'F','4',715,'b4b13895-ed08-4dd8-8ea1-9517da10a6bd','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (532,60,N'E','7',542,'af9f8c8e-107d-4d82-ba22-5be5e2d86c06','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (533,6,N'F','1',443,'0cdb5e87-d659-4ef5-8c2d-a94de24babb5','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (533,60,N'E','1',388,'5ab84bec-940f-4f44-86b6-45d9081ddd32','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (534,6,N'L','12',379,'6192b157-0cb7-49cb-98ed-4e2cd3ecb1ac','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (534,50,N'R','12',278,'1b35570e-6092-4502-8618-4cdcc8811121','2008-03-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (535,6,N'L','14',427,'2cc3b5fe-e097-419b-b8e6-e3dbeb0e571f','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (535,50,N'R','14',409,'121faf11-d40d-4235-b606-32c41b39d284','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (679,1,N'E','22',164,'bcdf3dae-8ef7-4282-a01a-18b8aa1b7712','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (679,6,N'M','13',136,'4226e846-89e4-4d4b-b87a-761292a9f5da','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (679,50,N'W','13',121,'80f5c557-3b0e-4eb3-8f3d-ae3174209c1e','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (707,7,N'N/A','0',288,'1b7057e7-9d56-496a-a234-42379f91a836','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (708,7,N'N/A','0',324,'39d263b3-915e-4be2-a972-009b7009759c','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (709,7,N'N/A','0',180,'dbf7dc83-7953-4e1c-8d3a-4dc943b118ca','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (710,7,N'N/A','0',216,'eb067301-2a1a-4bd7-b844-a580bc586803','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (711,7,N'N/A','0',216,'effd3b6e-bee6-4e55-a675-f299765eb0e5','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (712,7,N'N/A','0',288,'9b43245d-a0eb-4513-b88f-12fdaa7078f2','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (713,7,N'N/A','0',144,'764d0206-b3cb-485c-a760-1a3aa239ea9d','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (714,7,N'N/A','0',180,'b6362555-5bef-48b9-8d11-20f7e81caac1','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (715,7,N'N/A','0',216,'721c2947-3c96-417c-94e8-80f6b7c24aa6','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (716,7,N'N/A','0',252,'5f55c7bc-5bc0-4dec-9294-539708913bae','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (747,10,N'N/A','0',121,'1c5d890e-4c6b-4537-abda-a0d80f75872b','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (747,20,N'N/A','0',161,'18b5af98-2293-4776-9d4e-122c009ef28c','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (747,30,N'N/A','0',148,'8e762604-0816-48ad-b289-94c843d9301a','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (747,40,N'N/A','0',107,'972b7c2b-d0e8-4c3d-88f6-416d8e450f36','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (747,50,N'N/A','0',160,'b8999891-844f-4147-9348-423d36400a09','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (747,60,N'N/A','0',137,'6d6ed50b-7e4b-40cd-b617-d93318f3dbf6','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (748,10,N'N/A','0',105,'693c794d-e82f-4d18-a1bb-457e4382f0eb','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (748,20,N'N/A','0',145,'2104148d-c96d-4cd4-9a75-940a70e1a124','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (748,30,N'N/A','0',132,'523153b7-92cc-45d0-9a6f-046995cb498e','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (748,45,N'N/A','0',91,'459634ae-40d9-498a-9d2b-5aab2664ec4d','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (748,50,N'N/A','0',144,'970834e0-d46f-4bda-bce5-fdce013d7fd5','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (748,60,N'N/A','0',121,'5577f565-07e8-4885-aaf4-43de53d51618','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (749,7,N'N/A','0',73,'54558772-09e3-4f0f-a8bd-92c0ca8243c7','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (749,60,N'N/A','0',60,'e7498117-e2cc-4aa5-b6d9-a1d0c9e4eabf','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (750,7,N'N/A','0',102,'36003282-934f-42b8-a728-8c77add3dc78','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (750,60,N'N/A','0',121,'f4f41897-db28-447c-b621-3fdb56671cc5','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (751,7,N'N/A','0',32,'cb2de498-349a-4d8d-ae4c-0f03041575c6','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (751,60,N'N/A','0',108,'fa8cc2ac-b715-43e4-9ab1-ccbe7039f0c2','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (752,7,N'N/A','0',52,'ce5255cc-ac11-4cee-9c7f-f188116c5353','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (752,60,N'N/A','0',76,'5c7e9ae4-97e8-4dd8-a1a9-7018ad17cc5a','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (753,7,N'N/A','0',112,'e3d6ab33-314e-4fbc-9743-b7af3c097d8a','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (753,60,N'N/A','0',51,'1ff999d3-0285-4084-8910-f1985e468675','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (754,7,N'N/A','0',65,'c6c248a6-ecd2-4dcd-8e79-2fcd345f4c39','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (754,60,N'N/A','0',83,'cd60cbbf-d180-44d7-a3f5-d4b75eac6eb3','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (755,7,N'N/A','0',75,'2a8eafcd-850f-4eb1-b205-a3c1a41ddc26','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (755,60,N'N/A','0',62,'f22c63c8-42b5-4f30-b1e8-0c4a74643991','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (756,7,N'N/A','0',30,'3409b5ee-9b07-4300-b05d-82c53862ce93','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (756,60,N'N/A','0',99,'fed4174f-1f1a-432a-b89c-80dafc774ae5','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (757,7,N'N/A','0',56,'8ee50e04-3e61-4d36-b4ad-2b629c22f12d','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (757,60,N'N/A','0',78,'b91bfbc6-8ac0-4a0c-8fd5-162c99c134fb','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (758,7,N'N/A','0',116,'aec6250b-fc25-4731-bb11-ff9eb03bb295','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (758,60,N'N/A','0',49,'52479ac5-f2b0-472e-b183-1a3f0ca39a06','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (759,7,N'N/A','0',112,'82b4cf97-b982-4179-906d-aeb3d06ac137','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (759,60,N'N/A','0',51,'708ee4d0-7ba1-40cd-9762-093d579a8556','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (760,7,N'N/A','0',99,'0db7aefc-297e-450c-9846-07c8c30ada31','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (760,60,N'N/A','0',86,'ca4ff838-8a35-4b8c-a48d-d6b9b5a53ff0','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (761,7,N'N/A','0',67,'873df6e9-8454-41be-867a-904550b5d761','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (761,60,N'N/A','0',81,'81aadcce-a85a-42fe-8a6b-58f21fa39d09','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (762,7,N'N/A','0',75,'3eea520d-614e-420e-9370-073da5ad2528','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (762,60,N'N/A','0',62,'8ce0f44a-7362-4c9a-a529-799892feb5bf','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (763,7,N'N/A','0',102,'a02c8843-0ec2-43dd-adff-d8ea509916e8','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (763,60,N'N/A','0',121,'0be8ab7e-ac8d-479e-b4a0-df8842a2011a','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (764,7,N'N/A','0',32,'668af318-9167-4ed5-9944-a95eb4a2c795','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (764,60,N'N/A','0',108,'8ab29d85-f45f-4913-ac9d-2a6251ef253d','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (765,7,N'N/A','0',56,'c248ad84-9405-4e64-a581-801f9c12d6ff','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (765,60,N'N/A','0',78,'b7161c02-ce9c-4254-9c28-3e4305dd7d43','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (766,7,N'N/A','0',116,'779e2130-5240-461f-96d1-77e3b1c844a2','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (766,60,N'N/A','0',49,'e2a8793f-4f05-4867-9f3d-9843f04c9872','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (767,7,N'N/A','0',100,'bc108f38-ec76-46f4-86a6-8c66e1834b78','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (767,60,N'N/A','0',88,'c1b8fc46-4bde-4e55-bb83-53929dc8f323','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (768,7,N'N/A','0',67,'53535f3e-ffb2-461a-a422-5fa327516dff','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (768,60,N'N/A','0',81,'08e56a6c-0d54-4d5c-bddf-2605ecdb6901','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (769,7,N'N/A','0',73,'3bc1861e-e170-475b-babb-25cf640cc5b6','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (769,60,N'N/A','0',60,'5fa547be-3d45-4a8a-85a5-b1ee8084a670','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (770,7,N'N/A','0',104,'933b7e02-2e78-4c26-91b4-f40c65dae6ad','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (770,60,N'N/A','0',123,'e259c06f-a31c-4e05-8835-fffaa0c4ff50','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (771,7,N'N/A','0',49,'629dc77c-9656-4c22-8c90-8a601305eb94','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (771,60,N'N/A','0',100,'d0012c1b-5e78-4faa-a7f2-ac21b11528c8','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (772,7,N'N/A','0',88,'3a92ad34-7ee5-4427-9e0e-6cd4d56d3d5f','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (772,60,N'N/A','0',65,'d5182806-8b50-4097-9741-bf000764b5e9','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (773,7,N'N/A','0',83,'09d6b98f-9914-461f-9b05-46ac3a78b747','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (773,60,N'N/A','0',75,'5ca5a38f-cb12-4615-bddf-e60109853188','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (774,7,N'N/A','0',62,'bf9de689-1302-4f0a-9bf9-9f535f99ecb5','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (774,60,N'N/A','0',102,'2c38acc2-cde7-4c90-bf15-95ca7426a963','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (775,7,N'N/A','0',99,'f17089a0-e7ed-488f-a3ee-179aa958b1eb','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (775,60,N'N/A','0',56,'4ae132b6-d196-4f81-901a-d533014e057b','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (776,7,N'N/A','0',78,'9c0eeae2-f2a1-44a3-96b7-97f96021dbf9','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (776,60,N'N/A','0',116,'84b419ad-11df-4fe5-bd81-5ded306a4eee','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (777,7,N'N/A','0',49,'dba602be-5412-42ff-916f-c372269c3a2c','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (777,60,N'N/A','0',100,'40775054-5d91-442c-85b2-8730ac71ec6a','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (778,7,N'N/A','0',88,'1fcfc1a8-1119-4cae-87b0-a9e9ff2f8389','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (778,60,N'N/A','0',65,'acb69e4b-c8e6-4eae-8d50-aa957896cd11','2011-05-01 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (779,7,N'N/A','0',75,'73034e05-a2a8-4796-a242-a5b9af26fa41','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (779,60,N'N/A','0',62,'8e60bc44-245e-4520-9c54-94d2302ce45d','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (780,7,N'N/A','0',102,'d6e39b99-b034-4a75-b5ab-2839dd908065','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (780,60,N'N/A','0',121,'0a9cc443-06b5-4b97-a5a7-704e9ad95d1d','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (781,7,N'N/A','0',32,'23c0760f-96dc-493f-b016-1d60b8c0214a','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (781,60,N'N/A','0',108,'b288c485-cbb3-450f-9395-562f28cf9edc','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (782,7,N'N/A','0',100,'f4dec682-9bfc-47c3-ba79-eed46067f317','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (782,60,N'N/A','0',88,'faf6a2ef-e1d5-4387-840c-9cf94c4c15ee','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (783,7,N'N/A','0',65,'a1ac022b-98cd-402b-bbed-62e430d7a712','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (783,60,N'N/A','0',83,'cfd6e018-7a86-4514-bd6a-7df5a579b74e','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (784,7,N'N/A','0',75,'aa64d2cb-1dba-454e-be6e-9126315a2c16','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (784,60,N'N/A','0',62,'9efbb119-da0d-4349-afea-663fca0ef4ee','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (785,7,N'N/A','0',75,'4bdc23ea-e827-4172-bcf7-50c24f7cc7a4','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (785,60,N'N/A','0',62,'ef665f70-ae6c-4e5a-af30-b61b249a47ae','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (786,7,N'N/A','0',102,'68e050e5-0408-41cb-86b8-e2ea4d0ae9dc','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (786,60,N'N/A','0',121,'9c29b402-9af3-4384-a695-0b94b76ef73a','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (787,7,N'N/A','0',32,'fd3f495e-d3aa-455a-89c1-55f27adf3174','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (787,60,N'N/A','0',108,'da83ca89-babc-4d0f-829e-9ebc42ed052f','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (788,7,N'N/A','0',52,'a577b5e6-9f1b-4cb8-bb23-008262f5e599','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (788,60,N'N/A','0',76,'18eef8f9-befc-449f-862d-2893beaa0cd4','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (789,7,N'N/A','0',112,'f6fd070e-7724-43d9-81aa-657631570721','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (789,60,N'N/A','0',51,'c934b5bf-229a-4bef-9a0a-8b60c320deee','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (790,7,N'N/A','0',99,'2361264c-f8b9-4f5a-b062-2d28096c0e59','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (790,60,N'N/A','0',86,'43ce4f80-3bff-423d-9a6d-b5e7c6959dfd','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (791,7,N'N/A','0',67,'a0b76244-7b54-4f7e-8e6b-735ea537800d','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (791,60,N'N/A','0',81,'cc201c04-6240-4469-8711-c52a87cb90bf','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (792,7,N'N/A','0',104,'ca96cf18-792b-4788-bfd5-c77cbed2f6c1','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (792,60,N'N/A','0',123,'532d5a39-04d0-457b-bfa3-ef16457dead9','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (793,7,N'N/A','0',56,'044a0ad7-7ea6-4502-9e21-aa7efb5f60cd','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (793,60,N'N/A','0',78,'dc5cb5ec-14f7-4ec0-8ae8-ad883bdd2ac0','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (794,7,N'N/A','0',116,'9c6c3c66-1b23-4ee5-9be0-1f948001639e','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (794,60,N'N/A','0',49,'f5fc0861-cffe-431c-869f-ff2edeed0442','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (795,7,N'N/A','0',100,'2b0526ed-45e2-4995-ae46-bb20304c51f5','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (795,60,N'N/A','0',88,'018da23f-292e-40d6-b061-dc72d2cd02b3','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (796,7,N'N/A','0',65,'c324a634-15a5-4ceb-a5d5-bd2953d15c2e','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (796,60,N'N/A','0',83,'4f4f7556-65ae-4b76-82fc-a5159dac1d87','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (797,7,N'N/A','0',67,'f9c9bd88-d505-480e-9d44-fff4eacf9fa4','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (797,60,N'N/A','0',81,'3ffe7c97-dd8b-4b38-9afa-5989eb7dbaa7','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (798,7,N'N/A','0',73,'5a7a63cb-b1e5-443f-b494-447972ba5033','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (798,60,N'N/A','0',60,'1637cfb2-cf10-4d1a-b2cf-48f532883b93','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (799,7,N'N/A','0',104,'d4a0556b-a14a-44d0-a4a2-e03c3617a8c9','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (799,60,N'N/A','0',123,'95824768-5d5b-4426-b4f8-f1b2c5403da1','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (800,7,N'N/A','0',30,'eac1040c-3ca5-43d1-aa10-052a3a0d836a','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (800,60,N'N/A','0',99,'71b37a3f-e348-4fa0-86f6-80edd53a0473','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (801,7,N'N/A','0',56,'7ad3bdd5-e96f-40e6-964d-6612b321877c','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (801,60,N'N/A','0',78,'a2a3c882-9aa3-4b1b-8ac9-b2ebcd8031a4','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (802,5,N'J','7',350,'bebd11fc-746c-4b4b-a704-f39b93ead5d1','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (802,10,N'C','8',240,'8bf6d9a4-4d7b-45fd-a242-d46585df745c','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (802,50,N'A','17',273,'12534b74-9386-44db-853c-b19a95946528','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (803,5,N'J','8',356,'b6d8d615-52b7-47a2-b924-b662d82d976e','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (803,10,N'C','9',246,'0840bfc7-6efb-48c4-b830-777220990ba8','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (803,50,N'A','18',280,'c30b36ad-95b5-4ccf-8b59-937216d382d9','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (804,5,N'J','9',363,'27839638-d1fa-424f-bf44-d42d999261d7','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (804,10,N'C','10',252,'e109a831-1014-46cd-9e8c-e0745a52af2a','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (804,50,N'A','19',286,'20992266-54ca-4cf8-b215-47d0d4b45788','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (805,1,N'D','13',284,'fff200bb-1705-4839-aa84-0abaa34e4700','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (805,6,N'R','40',265,'ce55f3f0-e588-44ac-a266-42b2eaf81392','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (805,50,N'E','40',212,'0b26d1cc-6655-4876-ae52-70102f8f3f9d','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (806,1,N'D','14',288,'7b1c2aa3-9e16-454d-8c71-fadf9088378c','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (806,6,N'R','41',268,'aab77a86-054b-4007-8c1d-b567a73f4844','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (806,50,N'E','41',216,'187a6429-2238-431c-9c9b-4a5cf38150cb','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (807,1,N'D','15',291,'c2d4bbc2-8488-429c-8c4f-96184f756d48','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (807,6,N'R','42',272,'5074ce54-a19e-47f3-b082-c08b215a626a','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (807,50,N'E','42',219,'cd57d7f7-eca1-4405-8579-2fcde2e104cb','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (808,10,N'E','4',267,'8e51d869-550a-4912-89dc-a9dd436885f4','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (808,20,N'S','1',276,'2892a90f-0fb6-4747-a1cc-94a872bd06dd','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (808,50,N'F','2',316,'0f9636fc-b190-4461-842e-b91377c26f6a','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (809,10,N'E','5',264,'79c7db57-abdf-40b7-81db-a2245fc853ea','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (809,20,N'S','2',273,'5148c79e-1339-43d0-940d-157dd706f133','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (809,50,N'F','3',313,'1c2ad20e-6e03-4bcf-998a-44d35bd82146','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (810,10,N'E','6',260,'0d9f8dc5-927e-42fa-a4c9-df74194fbc5f','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (810,20,N'S','3',270,'d6249474-d050-4087-9337-9c84e5f4f345','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (810,50,N'F','4',310,'3ac58b40-9d61-42c0-994e-0601e9971059','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (811,10,N'E','7',257,'925b5f59-c5f3-4a1b-87ef-7c085d41ea07','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (811,20,N'S','4',267,'b677190c-1133-4008-a1ab-105684f2ce81','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (811,50,N'F','6',307,'05fda53f-f09c-4838-9e6e-c192347dfb5e','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (812,10,N'E','8',254,'6c8fe7b2-3265-4ff7-b7c5-a5c26f32da68','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (812,20,N'S','5',264,'437307d1-6a1d-4aa5-a244-7d534ba0e9a7','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (812,50,N'F','7',304,'7cfc9beb-f10d-4c89-a6d6-642b25e21ce6','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (813,10,N'E','9',251,'1fe8d8b6-4205-48f6-9583-de8c76066297','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (813,20,N'S','6',260,'dad4bf7f-0646-48e9-80a1-88bee19a14ac','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (813,50,N'F','8',300,'49c20091-5deb-4c75-bbdb-1ec7f7b97dab','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (814,10,N'N/A','0',110,'7f012da0-9fff-462b-90ce-3ded72b2c81f','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (814,20,N'N/A','0',150,'6e66291c-30fe-4b35-9f2b-b58f308d93f3','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (814,30,N'N/A','0',137,'8451be00-88c6-4bc1-925e-da45208a2008','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (814,40,N'N/A','0',96,'9538c094-dedf-4a64-838e-72417e6813b8','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (814,50,N'N/A','0',148,'1e851dbc-0ec5-439c-a12c-c84a3b2268d9','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (814,60,N'N/A','0',126,'750f6c85-88de-425d-a60d-57c06777e71a','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (815,5,N'T','1',265,'bf66a7c6-9bac-4a91-b4a0-93f72d59e20d','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (815,50,N'B','1',457,'cf175595-fb5a-4308-9489-930223773810','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (816,5,N'T','2',406,'fadd51f0-c329-43d8-ab23-214091724421','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (816,50,N'B','2',412,'4a5bd660-248d-473b-b2d7-eac2dcaaf6a7','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (817,5,N'T','3',443,'343f1d69-0606-4569-8228-13defbd7c118','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (817,50,N'B','3',388,'78904199-7c58-4bdf-b2c1-ed0de2034483','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (818,5,N'T','4',428,'b9f6524a-30fe-455f-ace3-d9bab321099c','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (818,50,N'B','4',460,'7f27ab63-be21-48a2-b925-6efa9a0f1a2e','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (819,5,N'T','5',409,'3e8deddb-045b-4a52-bdaa-3b5176323ea9','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (819,50,N'B','5',384,'4fbd565a-f25e-42a5-95b7-1d7d01e2c507','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (820,5,N'T','6',446,'5bacebc0-e5b3-454b-82b7-53d4bf89df88','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (820,50,N'B','6',232,'e815f562-bf7b-4a0a-b743-413aff059aee','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (821,5,N'T','7',432,'fdcd7382-4c5a-4ddb-86cb-6a693661dc02','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (821,50,N'B','7',304,'20ee2603-838d-4781-ad93-83753a432b5f','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (822,10,N'N/A','0',115,'bfb96644-7a7a-44dd-92f5-1937a635ff82','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (822,20,N'N/A','0',155,'e88d26bf-22ef-4a72-acc0-a8020ede7165','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (822,30,N'N/A','0',142,'f439da99-9e74-43f7-b29b-925983a8f25f','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (822,40,N'N/A','0',100,'0834ea74-bd46-4d2e-a44c-aaff90b58b3c','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (822,50,N'N/A','0',153,'de67bdac-048a-4250-8a44-ef5ec2c8e5b9','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (822,60,N'N/A','0',131,'46b5352f-f67e-4dfe-a862-3a476929525d','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (823,6,N'A','10',425,'b1740211-ca5e-4a3a-ba64-ae00b6795435','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (823,50,N'V','1',256,'9e04d5ef-c22b-4010-9f86-3e8d5ba31fe8','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (824,6,N'A','10',411,'f3f884ad-80b4-432b-b1ea-2c914e20e148','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (824,50,N'V','2',401,'e63a0296-6936-44a8-84ba-8aedd7c5714f','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (825,6,N'A','11',396,'8f97b19e-ab98-4869-ae88-88e13f7fb28f','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (825,50,N'V','3',387,'bf43453a-fad1-4fa8-a3da-7a9d46736e01','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (826,6,N'A','11',393,'945250d5-b83c-4977-9249-c537c9eebdf8','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (826,50,N'V','4',406,'f36cbf4c-c7e5-4659-bd54-df0eb1179220','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (827,6,N'A','12',412,'9c55e8c1-9531-4d69-98a6-4d5a6cc15b36','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (827,50,N'V','5',425,'1b9ebbd6-a215-4529-af58-e9a1ecdd2b56','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (828,6,N'A','12',432,'8d7eddf7-70bb-4c8e-936d-39645c50bfa0','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (828,50,N'V','6',284,'c1385a54-7e61-43f8-9b87-3170d0abeba0','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (829,6,N'A','12',265,'eb4d4b77-be2f-41f0-bae1-cfdb4d8db033','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (829,50,N'V','7',476,'331a0a6a-91a6-446b-837e-1368a978b1ee','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (841,7,N'N/A','0',288,'3ba20e3e-9810-4f68-bad2-44ab974ae2a1','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (842,7,N'N/A','0',72,'18545177-6236-4c20-9bf0-7dd2d0648216','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (843,7,N'N/A','0',252,'796d6d14-52e0-44a0-82e2-eebba7db3da3','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (844,7,N'N/A','0',288,'c44196d5-4609-42e9-bd4f-c7cf8361533a','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (845,7,N'N/A','0',324,'c0d46f2e-c084-4f0e-9ea5-225b0ed160d9','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (846,7,N'N/A','0',144,'a2c4f76c-327c-479d-99f9-d40a132ebb94','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (847,7,N'N/A','0',180,'7a0bcd5a-280b-4050-91bb-5b9cf36a1d49','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (848,7,N'N/A','0',216,'fbe6fa36-8953-4814-872e-c88a1c61f201','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (849,7,N'N/A','0',108,'05fe1cfd-9c01-4a2a-a1a6-1d76dd6bfb2f','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (850,7,N'N/A','0',144,'34b5c646-ff21-43f5-acba-3e5729e792bd','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (851,7,N'N/A','0',180,'5b80ec8e-6445-46fe-9779-eda9ab530aab','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (852,7,N'N/A','0',324,'0557ed14-e1c6-4408-b52e-9d19e7827516','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (853,7,N'N/A','0',0,'2961ba75-2083-481c-8a35-6ac8b139dcce','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (854,7,N'N/A','0',36,'2e972e00-9c38-4160-9d0f-0514a075d506','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (855,7,N'N/A','0',72,'dbfcb963-f64a-4cd5-8acb-c1bf19d0f8b0','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (856,7,N'N/A','0',108,'c4fb1c57-c4e6-4730-ac5b-55934bda833f','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (857,7,N'N/A','0',144,'ad62ab75-efc4-4766-9b65-d4308e234a1a','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (858,7,N'N/A','0',324,'37bb613d-eabc-4b4b-b3d6-3f1c433947af','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (859,7,N'N/A','0',0,'911fa74b-0353-4bb9-aa58-82a86e626b17','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (860,7,N'N/A','0',36,'8db84170-087b-4bfc-963b-375ab5fdb647','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (861,7,N'N/A','0',72,'d6cd1c79-2106-472b-8741-481e0fe7ec44','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (862,7,N'N/A','0',108,'43cffbe6-86a1-40bd-90f8-58cae90e0596','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (863,7,N'N/A','0',144,'880e2b88-61c0-46bd-b489-e1d9fef3f114','2012-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (864,7,N'N/A','0',180,'93ebce66-e74b-4134-bca6-33b4b1eaeac8','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (865,7,N'N/A','0',216,'8ff570bb-b9ee-4fe8-9ece-20d33ee99f43','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (866,7,N'N/A','0',252,'838e81a3-3b2a-4cca-9fcb-5f0ec5186957','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (867,7,N'N/A','0',216,'760e44d7-1e76-454f-8f5c-b7b77e33c775','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (868,7,N'N/A','0',252,'674a3b97-695c-4655-89f0-5fb6aaf1a9f6','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (869,7,N'N/A','0',288,'e1a00fc9-e050-4a90-b8d2-e22e37451933','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (870,7,N'N/A','0',252,'1a650732-24b2-4abc-ba37-c866a764045b','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (871,7,N'N/A','0',288,'6f509d6f-09bd-45e0-9ea3-d0a0800b2a08','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (872,7,N'N/A','0',324,'89cf1979-a25d-43b2-b140-6228a79426dc','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (873,7,N'N/A','0',180,'cc99281d-bef4-425f-8532-7f0fe652d8d5','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (874,7,N'N/A','0',252,'78103d2b-69e5-49bb-bd15-212b92bad89d','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (875,7,N'N/A','0',288,'e3f8d6cc-2ddc-4f51-a026-b5a5c7ef7b1d','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (876,7,N'N/A','0',0,'5c965ec8-6fab-42bf-af30-02cad1f2a56e','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (877,7,N'N/A','0',36,'1fe439ee-d5fe-4b52-852b-2e981fe0316e','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (878,7,N'N/A','0',108,'1e526c88-7bd5-405f-83d1-9754d789863b','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (879,7,N'N/A','0',144,'9a96913a-fd02-47df-a55d-ef3590f3adf0','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (880,7,N'N/A','0',108,'324686ac-6e54-4a24-a7ad-31e2754069f8','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (881,7,N'N/A','0',324,'d835d63d-abe1-4b8d-81e7-dc6d1775af43','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (882,7,N'N/A','0',0,'71addba2-e713-4cef-b861-b9c0a71cce1d','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (883,7,N'N/A','0',36,'b57157b7-ff2e-439e-80f5-92467eeb5ad6','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (884,7,N'N/A','0',72,'5d52fd35-aa84-4834-9db6-de793a5d82b3','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (894,1,N'E','23',337,'0740f824-9f6e-4451-b8f9-42c1172a4708','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (894,6,N'M','14',355,'223683c8-3267-454f-840e-bcc57f7a13ac','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (894,50,N'W','14',155,'9f4ff0a0-ad0d-4027-a590-c350595a52d2','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (907,1,N'E','19',337,'b58b5a11-8c36-4318-beec-413930b94176','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (907,6,N'M','12',228,'e3f87834-460d-4c26-b539-f5dc6de6aecf','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (907,50,N'W','12',158,'cfcee763-fcd8-4ee5-b435-cf9fecc5c4b3','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (908,6,N'D','4',400,'ff971875-ea46-48f1-9608-1c1826e1d04c','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (908,50,N'G','8',214,'6ee93012-4dc3-44e3-9792-6b696b250419','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (908,60,N'F','11',195,'5f120c84-6e91-47b2-913f-49a3c47e6f1f','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (909,6,N'D','5',230,'ebcd0818-44e6-4fce-9c54-ab5719529995','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (909,50,N'G','9',72,'9d3b051f-b982-4ab5-b6ac-36885ccdf734','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (909,60,N'F','12',120,'4942e44a-1d06-438c-b502-a9134853b3d2','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (910,6,N'D','7',91,'1b55f0eb-4eae-4240-817b-ceedea5d1736','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (910,50,N'G','19',168,'4700001f-0ac5-44a4-adac-1f9af4968128','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (910,60,N'F','8',96,'e2382b4d-9112-4678-89c3-cbf12027b209','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (911,6,N'D','8',283,'c724266c-9142-4716-a15d-d090f3fd1fd6','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (911,50,N'G','20',321,'7b07be23-cc70-4288-95af-eb07ad438dd6','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (911,60,N'F','9',302,'b771540f-1d3a-4fbf-9c8a-80958ed16527','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (912,6,N'D','9',302,'14f7e517-c58b-4551-88c0-d5d4edf97af6','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (912,50,N'G','21',353,'df81ff78-ba70-4155-a508-a34724e161f9','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (912,60,N'F','10',246,'40d347ba-7c2f-4a46-9277-d81923b0e5fc','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (913,6,N'D','12',169,'67d1996d-01bf-4abf-8ff3-833f547f41df','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (913,50,N'G','24',145,'0b2fe80c-d968-4ac4-8bf9-ea96867d11a6','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (913,60,N'F','15',153,'41bc79aa-d552-41ed-a6e8-2a638118f5b0','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (914,6,N'D','13',248,'554b6058-27f4-4905-842c-9c902c45c647','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (914,50,N'G','25',171,'7ee779f3-0091-4577-9775-d355ee8e99d4','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (914,60,N'F','16',382,'e5d83079-2266-4eda-943a-ed8d33bae8bb','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (915,6,N'D','18',161,'80324910-6353-4732-8d74-b1097f82ef77','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (915,50,N'G','26',83,'08a33af5-82b7-4914-8cc4-21d75077dbf6','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (915,60,N'F','17',158,'50435d87-be80-4151-9cfb-c1b55486bd03','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (916,6,N'D','6',425,'69d30c0d-f2db-480b-b444-f888a18c6b3f','2014-07-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (916,50,N'G','27',288,'f8448077-eb8f-4118-8d9e-5ab68bd60658','2014-07-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (916,60,N'F','4',276,'73fc31f9-6938-464e-9f31-3b251c2433b8','2014-07-31 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (921,6,N'L','16',286,'8bc326c3-1111-4d9b-985a-c2bf2d43f82c','2014-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (921,50,N'R','15',243,'c501de18-2dfc-4a5b-9017-477ab633c146','2014-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (922,6,N'L','17',264,'ac015b09-3fdb-470f-adf2-eb634dfe8af0','2014-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (922,50,N'R','17',241,'69f7778e-8b1f-4acd-a2f3-36c612f57068','2014-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (923,6,N'L','18',262,'8dfb94bc-4a9b-4f41-8fe1-1fe126869875','2014-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (923,50,N'R','18',240,'b0e7d0af-9f2c-42bc-b5da-78d20a10d8cd','2014-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (928,6,N'L','2',240,'ad995530-d123-4f43-b0a0-294f5c5410e9','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (928,50,N'R','1',369,'2ec545ac-000d-49c5-a0e6-737ced96ac9d','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (929,6,N'L','3',385,'d7e5780d-ffd8-4ec3-a5f7-295970e924d9','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (929,50,N'R','3',284,'241dd7b6-bb54-4542-88c6-8856dacb7b88','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (930,6,N'L','5',267,'4b23bab2-70b7-4df6-93cb-49ff3d89afd2','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (930,50,N'R','5',232,'c2100fd0-6a1f-49c7-a2b4-38dccec76e27','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (931,6,N'L','6',236,'415a9ce3-98a3-4fcd-a89c-5ccc6b50d718','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (931,50,N'R','6',252,'b3ae5a9e-b904-4831-a344-3136c2cbaafc','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (932,6,N'L','8',382,'b5b13d29-c771-4384-bda2-16f4da641ed3','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (932,50,N'R','7',192,'5afc19d1-94bc-453d-ab30-62acd71bc74b','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (933,6,N'L','10',299,'69c587fc-04ce-4a4b-a7f8-8b4e9d1d6214','2014-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (933,50,N'R','9',228,'01475150-96a0-4373-8a60-0fdaa4d03ce2','2014-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (934,6,N'L','11',233,'9d782c2c-c778-4657-90d0-41c8c0f31bbd','2014-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (934,50,N'R','11',249,'894d8dc0-3a31-4732-8e98-14bcbc643c2e','2014-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (935,1,N'E','24',174,'f5cdb9cb-dfde-40a1-a996-2cecf8cdf99a','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (935,6,N'M','1',182,'91eb4e12-e61f-4b98-ae80-1a0f000e62a4','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (935,50,N'W','1',156,'dccb77da-5850-4064-a698-c2a80224f654','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (936,1,N'E','25',172,'8ba1fdf6-4da8-44b2-ac67-1a2b68c421f3','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (936,6,N'M','2',180,'e8ab068a-c417-417e-86dc-5f8ffe7098da','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (936,50,N'W','2',155,'575c9376-0762-4ea9-88d9-adf39a72900f','2014-08-10 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (937,1,N'E','20',171,'aa0e5356-4e0c-4558-b159-bf0e0eb5b3c9','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (937,6,N'M','9',179,'d5fff97b-7f58-47b7-a015-7b07abc546ad','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (937,50,N'W','9',153,'a509885a-3619-4d96-950a-d677f885f74f','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (938,1,N'E','21',169,'1ba43a54-1487-43fb-bb22-fea092100e94','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (938,6,N'M','10',177,'ab8ed1ef-7981-45e9-af90-a669816597e2','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (938,50,N'W','10',152,'a51ed6ee-ee8d-4f94-92ac-35c75ae49128','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (939,1,N'E','16',168,'f000a245-bfa0-4393-8c58-2b444cdd9831','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (939,6,N'M','3',176,'2be3a0aa-5267-4573-856c-ad365efde45a','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (939,50,N'W','7',150,'bbfc30c6-0181-4778-b663-54719b5605d1','2014-08-11 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (940,1,N'E','17',316,'2fecb528-c0f2-4cb2-ac74-e48584a77a52','2014-08-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (940,6,N'M','4',267,'77247401-f23f-42fb-b4ac-e55773cd4754','2014-08-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (940,50,N'W','8',323,'36f2fb3f-7478-479e-9e28-baf3eb8a4cf7','2014-08-05 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (941,1,N'E','14',235,'19078460-ccbb-47c1-886d-5c4d34841258','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (941,6,N'M','5',262,'9c8119e4-90f6-4a0b-b7b2-c2691efa1482','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (941,50,N'W','3',388,'426ea11a-ab14-4255-8ea6-1a60be300f4d','2014-08-09 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (942,10,N'N/A','0',120,'13b8f8eb-8402-4c01-93e5-92f8c859f66e','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (942,20,N'N/A','0',160,'4ac770c3-3fba-4218-ac15-2739497e6724','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (942,30,N'N/A','0',147,'7b0cffd1-f81e-4ee6-91aa-f852e3f6ca9b','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (942,45,N'N/A','0',105,'5dece803-133b-4ba7-8a98-5e8b104ffe6d','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (942,50,N'N/A','0',158,'f33264e5-94ff-4874-8c51-df367ed93eb6','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (942,60,N'N/A','0',136,'0f7b3e43-efb5-4c11-ab1f-c508647dea5a','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (943,10,N'N/A','0',102,'48bca16f-6741-44b3-bedb-fe08be2b5784','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (943,20,N'N/A','0',142,'ba293d19-c3f1-4104-8955-4da147b386f0','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (943,30,N'N/A','0',129,'d1a5cb11-24cf-41d5-b5cb-38b3bd5349ef','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (943,40,N'N/A','0',88,'dbb42163-1526-48a0-bac3-2253fc6ff4c6','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (943,50,N'N/A','0',140,'75bd5626-e15b-48f7-9ae1-84d91bc99ff1','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (943,60,N'N/A','0',118,'f50d3932-cd0e-4a14-a314-00f275264296','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (944,10,N'N/A','0',112,'fd1f1796-02ef-4bbc-9254-da8098f1ca53','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (944,20,N'N/A','0',96,'194f5765-79b9-42d3-9914-809f9e9e5f39','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (944,30,N'N/A','0',123,'a0c2a74a-96cb-4e1b-b2b9-8ba94aed0076','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (944,45,N'N/A','0',136,'7269ed3f-85cc-4bf6-9c54-2caf50acf9d4','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (944,50,N'N/A','0',81,'553ceab6-0e77-4053-85ba-872b411829b8','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (944,60,N'N/A','0',134,'cfc1219d-6e27-40d2-bde7-e971775a1701','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (945,5,N'J','4',347,'60b347ed-82c1-405a-b7b4-5e7fe00fec78','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (945,10,N'C','5',236,'fdf0dbf9-e8cb-4349-8bc4-2b86e0b27ba8','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (945,50,N'A','4',270,'22f9f1a2-917e-4781-a431-8177615a153b','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (946,10,N'E','10',248,'a789955b-fec4-4728-9fb2-7b24d2afc8c3','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (946,20,N'S','7',257,'d3207862-a8aa-4961-a65e-7aa0a77edf97','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (946,50,N'F','9',297,'41c646c2-811d-4f07-b960-26379ecc8f1e','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (947,10,N'E','11',244,'3bdc2970-658c-4008-b8c9-33be0a71e485','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (947,20,N'S','8',254,'5584594c-3752-498a-9184-51f4777e68b3','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (947,50,N'F','10',294,'d742bd98-900c-47db-a434-c2cd13d663b4','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (948,5,N'J','1',347,'ffd07590-9f3c-4abf-80c7-353c66bd8429','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (948,50,N'A','1',420,'1cf7ac5d-ec65-4082-981d-5da23dda0e04','2014-08-12 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (949,1,N'E','1',265,'6f19980f-16bc-4831-ba60-aa05d92e1098','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (949,5,N'A','14',336,'a8c7b453-dc9e-43b5-bc18-7fc2720a8b34','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (949,50,N'A','30',284,'a0e6d5d7-10b0-4042-854f-f48938025ded','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (950,1,N'E','2',272,'f279d0ca-e2a6-4123-8c5b-02e56ffdf3c3','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (950,5,N'A','15',342,'c1b83518-0a0b-4cc3-812b-2443fe022046','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (950,50,N'A','31',291,'4efcf527-d62a-4218-9aa4-dc241bd61d15','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (951,1,N'E','3',278,'6416d956-3ad6-4d36-a2b6-521bfc4efaac','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (951,5,N'A','16',348,'9d12924c-919b-4c9f-a8c3-65a5a179096d','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (951,50,N'A','32',297,'31a1b4af-abf3-46ec-ae14-3acebc8e545f','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (952,1,N'C','5',236,'7a254a77-b8a6-40df-8e87-dcfece42d6da','2014-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (952,5,N'A','5',192,'526b82ab-c32f-413e-bd3c-60d2ca192a82','2014-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (952,50,N'A','25',161,'6ad8a954-fe98-4962-a297-53cc416c96c7','2014-08-08 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (953,7,N'N/A','0',116,'cbb9a926-531b-4893-b76c-2379375bd17c','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (953,60,N'N/A','0',49,'c2c28a46-6aa5-40a2-ac8e-8abe502b1fd5','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (954,7,N'N/A','0',65,'38c69cb8-fe9e-4ddd-853e-11d3eda5a9b0','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (954,60,N'N/A','0',83,'1f861fa6-8d78-4b13-afd8-c4d9b1000812','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (955,7,N'N/A','0',75,'04e178d8-fc9a-4fee-a979-a28a17699bec','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (955,60,N'N/A','0',62,'af285249-75db-4e85-87b7-21c973758253','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (956,7,N'N/A','0',35,'1f99b8a6-0cba-47b4-9189-2fd6456362ce','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (956,60,N'N/A','0',40,'d934d8d7-264d-4bd5-9be8-25a9ca566bf4','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (957,7,N'N/A','0',51,'44a051d5-6454-4441-b18c-7df8c305fe6a','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (957,60,N'N/A','0',100,'997b9627-0ac8-4f3c-91a4-d0b121b89b9c','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (958,7,N'N/A','0',128,'5f3e0a21-97fe-40d9-8c40-a739be677fd3','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (958,60,N'N/A','0',35,'bf1249c3-a84b-4f2f-b3c2-3dd6df37850d','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (959,7,N'N/A','0',83,'33b8c62a-89da-48bd-b5ae-7b8f26f7a1dc','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (959,60,N'N/A','0',121,'c5e9f516-5b05-4d8f-a1c3-f4130290a3b8','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (960,7,N'N/A','0',54,'958978c8-df63-4801-9ac2-bc771367d251','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (960,60,N'N/A','0',105,'606a2367-3e56-4e6e-bd34-35ccccf4a9f2','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (961,7,N'N/A','0',88,'f6477c89-0b08-4bc5-ab2c-a3ffe2616a54','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (961,60,N'N/A','0',80,'833d5f4a-9a92-492d-8eaf-e761ce80c3c9','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (962,7,N'N/A','0',67,'1c299d4d-3e04-4de2-bd4f-a1f201cea98f','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (962,60,N'N/A','0',107,'7c03d802-5f43-493f-93cd-a491c86b351e','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (963,7,N'N/A','0',126,'00740703-f4b3-4a25-9ee9-249ddd1f2596','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (963,60,N'N/A','0',36,'56742f4d-adb4-428f-abfb-a75a653f4385','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (964,7,N'N/A','0',81,'e02989ae-2310-409e-a19c-f4c29f5ae1dc','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (964,60,N'N/A','0',116,'4d0b989f-a84b-47ca-ba77-76d4d46272df','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (965,7,N'N/A','0',91,'99fe7e39-bf2d-4afe-9aeb-a3ab6426598c','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (965,60,N'N/A','0',72,'ed288862-97be-495e-9bf8-9df6c63d06b5','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (966,7,N'N/A','0',99,'82a9d933-8bc0-4afe-acb1-98e59b5c9eef','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (966,60,N'N/A','0',86,'58a0d3ed-d403-4edb-ad6a-ce216775144f','2013-04-30 00:00:00.000');
GO -- SQRIBE/GO;341e11
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (967,7,N'N/A','0',67,'8fb8b038-987f-438f-b04a-ace3acfd8931','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (967,60,N'N/A','0',81,'2c760eb2-b1b6-4857-89bd-0a2d3b954439','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (968,7,N'N/A','0',73,'6907efc4-ce55-496e-af71-4ec7a389a49b','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (968,60,N'N/A','0',60,'0d180279-656a-4e41-83a4-b8e29ae6286b','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (969,7,N'N/A','0',30,'3678e2ba-85b5-420d-b1a2-e1a13bfd4835','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (969,60,N'N/A','0',99,'6410cee4-344b-49e9-b9c0-503a4503724c','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (970,7,N'N/A','0',73,'bd522099-9151-4c84-9434-fa2737e20849','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (970,60,N'N/A','0',60,'4b4384a8-4829-466c-b432-296681f309c7','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (971,7,N'N/A','0',104,'3cf518f7-fe6f-4634-8ee5-2be34a540b62','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (971,60,N'N/A','0',123,'8ee95877-9dd3-41d0-9133-7c7c9d230dcc','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (972,7,N'N/A','0',30,'3847fff4-7513-4004-bfda-1d96375626fc','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (972,60,N'N/A','0',99,'20fd8261-60a0-4882-a3a0-4ae1f6d09560','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (973,7,N'N/A','0',99,'8402fb47-3e3d-41e5-8ece-2849b793dbee','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (973,60,N'N/A','0',86,'41c0e74e-4032-4e60-bb16-f10b813cdf62','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (974,7,N'N/A','0',67,'69b40268-0b02-4505-a81e-4dc19487ca0e','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (974,60,N'N/A','0',81,'fa25bafa-9242-4297-80e3-2810fe60bd4a','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (975,7,N'N/A','0',73,'4870ccf2-639b-48d8-8144-00429e756050','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (975,60,N'N/A','0',60,'f45d4d75-30f6-473d-b483-e61f33816143','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (976,7,N'N/A','0',104,'1c8e0fdc-b8c2-4a90-90fa-b86a48955555','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (976,60,N'N/A','0',123,'0dcf7f0a-c9a8-4705-bdd0-ca0330371912','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (977,7,N'N/A','0',88,'ab046689-37dd-4c6e-8d0f-a80098fe0f12','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (977,60,N'N/A','0',65,'4b6782af-87e4-499b-9572-672ff7e89c70','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (978,7,N'N/A','0',91,'b2a9cc4c-f998-42f0-9f55-4cefdb524619','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (978,60,N'N/A','0',72,'49f78f8b-695f-47b8-9c9e-757053503c4c','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (979,7,N'N/A','0',86,'1bcd1193-92d2-40dc-b9c6-c8243fbc06c1','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (979,60,N'N/A','0',78,'5cc17093-c813-4bca-b536-aabb821400bc','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (980,7,N'N/A','0',51,'9ff19e16-dd55-419b-a54e-742a7d1890f8','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (980,60,N'N/A','0',99,'06a56062-e408-49fd-b457-b609a0ec95f2','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (981,7,N'N/A','0',86,'46410334-3741-4c83-af6d-504d4fdb0043','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (981,60,N'N/A','0',67,'0d3979d8-a910-4a0d-9f1d-47c7ce6ae81d','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (982,7,N'N/A','0',81,'01f4a2f8-9c20-4f5f-bcf9-62bff79139ca','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (982,60,N'N/A','0',73,'62d0e6ae-520f-47bb-a990-2e3facc02a68','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (983,7,N'N/A','0',60,'a6ce5ed5-95ce-49c2-9e47-459122570a80','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (983,60,N'N/A','0',104,'0f37d5e1-4711-429d-b6f6-353c040ce0c0','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (984,7,N'N/A','0',81,'26663b83-3218-4f78-b6fd-4ae02923890c','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (984,60,N'N/A','0',73,'e93e4af6-83a5-499e-af4b-a08f300d6fce','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (985,7,N'N/A','0',60,'d2c8a478-0c4c-4063-b805-6cc6cb7e0472','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (985,60,N'N/A','0',104,'051de7a0-fe4e-43ed-8efd-998a358a1922','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (986,7,N'N/A','0',123,'c3bdf972-8c67-436a-a777-120a1611dcd4','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (986,60,N'N/A','0',30,'2d0806ba-aec9-43d3-8c3d-5b63950c4195','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (987,7,N'N/A','0',99,'f6523155-9c22-43b9-8622-5436fa170d76','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (987,60,N'N/A','0',56,'a3677547-272d-42bd-8695-42b62cfac65c','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (988,7,N'N/A','0',78,'9a6dede8-7390-4f0b-be3b-9c6a3077fbe2','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (988,60,N'N/A','0',116,'edd49182-044c-4221-a956-04eab17a4b78','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (989,7,N'N/A','0',51,'b4d7b1e6-f6d0-47a2-a199-1266098b9bd6','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (989,60,N'N/A','0',99,'d4d8248d-61f6-4e20-ba81-89cedfe3c8a7','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (990,7,N'N/A','0',86,'ffacca72-7e76-4aec-af4d-bbe70adb10bb','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (990,60,N'N/A','0',67,'64d1a000-b778-48de-92d9-766870860fdf','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (991,7,N'N/A','0',81,'3538eab5-6729-40d4-951b-12409bce9389','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (991,60,N'N/A','0',73,'5a58368e-e5b5-440f-8202-ef373d9d5767','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (992,7,N'N/A','0',60,'d5ae2682-4443-4a2b-a8f5-f0b7bebb5e95','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (992,60,N'N/A','0',104,'aa4d1028-4706-47d7-9c9c-764d66335d25','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (993,7,N'N/A','0',123,'06eaddb7-34d1-43c4-bd20-181ce355fcab','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (993,60,N'N/A','0',30,'a4d61b97-fc1f-4c57-b19f-1eac3533fd13','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (994,1,N'A','3',244,'86d87365-621e-4ff2-ad66-a7e3b1a2aa79','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (994,6,N'B','6',358,'a1dc8516-3d00-4a9e-a646-8b55227ebdcb','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (994,50,N'A','7',212,'79d0d86b-1d66-411f-a4cf-7004f335011b','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (995,1,N'A','4',230,'35731fe2-c930-4a21-8bd4-d8d1534c01ad','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (995,6,N'B','7',321,'81034bc0-2a9e-4c8e-831d-3f20cfe86b7a','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (995,50,N'A','8',265,'15562e5b-291d-4dfe-aa1d-8c66f98edeba','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (996,1,N'A','5',321,'94e9490e-6677-41b5-87b4-411fbd9fbe1d','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (996,6,N'B','8',475,'9cdedcd7-979c-4ddd-bc2c-67b7176fd808','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (996,50,N'A','9',174,'9988c90a-ff42-4915-89fd-b8d848699e9c','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (997,7,N'N/A','0',123,'540b82be-09e5-4e99-9b7b-835ffab06950','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (997,60,N'N/A','0',30,'731e624a-bd0d-447c-9fe1-472f73917897','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (998,7,N'N/A','0',99,'b859a235-a1cc-48d7-92bb-10d0c2886e4e','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (998,60,N'N/A','0',56,'5021e7ea-ce96-433c-860a-b9e57a45ef03','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (999,7,N'N/A','0',78,'61a26db0-bd17-442b-b119-8e5227811b82','2013-04-30 00:00:00.000');
-- SQRIBE/INSERT;341e11
INSERT INTO [Production].[ProductInventory] ([ProductID],[LocationID],[Shelf],[Bin],[Quantity],[rowguid],[ModifiedDate]) VALUES (999,60,N'N/A','0',116,'aff43c54-af78-4635-8f8a-733a1fc2d085','2013-04-30 00:00:00.000');

COMMIT TRANSACTION

