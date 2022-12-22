SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;341e11
PRINT N'CREATE foreign key constraints'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesTerritoryHistory] WITH CHECK ADD CONSTRAINT [FK_SalesTerritoryHistory_SalesPerson_BusinessEntityID] FOREIGN KEY([BusinessEntityID]) 
REFERENCES [Sales].[SalesPerson] ([BusinessEntityID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesTerritoryHistory] WITH CHECK ADD CONSTRAINT [FK_SalesTerritoryHistory_SalesTerritory_TerritoryID] FOREIGN KEY([TerritoryID]) 
REFERENCES [Sales].[SalesTerritory] ([TerritoryID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[ShoppingCartItem] WITH CHECK ADD CONSTRAINT [FK_ShoppingCartItem_Product_ProductID] FOREIGN KEY([ProductID]) 
REFERENCES [Production].[Product] ([ProductID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SpecialOfferProduct] WITH CHECK ADD CONSTRAINT [FK_SpecialOfferProduct_Product_ProductID] FOREIGN KEY([ProductID]) 
REFERENCES [Production].[Product] ([ProductID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SpecialOfferProduct] WITH CHECK ADD CONSTRAINT [FK_SpecialOfferProduct_SpecialOffer_SpecialOfferID] FOREIGN KEY([SpecialOfferID]) 
REFERENCES [Sales].[SpecialOffer] ([SpecialOfferID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Person].[StateProvince] WITH CHECK ADD CONSTRAINT [FK_StateProvince_CountryRegion_CountryRegionCode] FOREIGN KEY([CountryRegionCode]) 
REFERENCES [Person].[CountryRegion] ([CountryRegionCode]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Person].[StateProvince] WITH CHECK ADD CONSTRAINT [FK_StateProvince_SalesTerritory_TerritoryID] FOREIGN KEY([TerritoryID]) 
REFERENCES [Sales].[SalesTerritory] ([TerritoryID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[Store] WITH CHECK ADD CONSTRAINT [FK_Store_BusinessEntity_BusinessEntityID] FOREIGN KEY([BusinessEntityID]) 
REFERENCES [Person].[BusinessEntity] ([BusinessEntityID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[Store] WITH CHECK ADD CONSTRAINT [FK_Store_SalesPerson_SalesPersonID] FOREIGN KEY([SalesPersonID]) 
REFERENCES [Sales].[SalesPerson] ([BusinessEntityID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[TransactionHistory] WITH CHECK ADD CONSTRAINT [FK_TransactionHistory_Product_ProductID] FOREIGN KEY([ProductID]) 
REFERENCES [Production].[Product] ([ProductID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Purchasing].[Vendor] WITH CHECK ADD CONSTRAINT [FK_Vendor_BusinessEntity_BusinessEntityID] FOREIGN KEY([BusinessEntityID]) 
REFERENCES [Person].[BusinessEntity] ([BusinessEntityID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[WorkOrder] WITH CHECK ADD CONSTRAINT [FK_WorkOrder_Product_ProductID] FOREIGN KEY([ProductID]) 
REFERENCES [Production].[Product] ([ProductID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[WorkOrder] WITH CHECK ADD CONSTRAINT [FK_WorkOrder_ScrapReason_ScrapReasonID] FOREIGN KEY([ScrapReasonID]) 
REFERENCES [Production].[ScrapReason] ([ScrapReasonID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[WorkOrderRouting] WITH CHECK ADD CONSTRAINT [FK_WorkOrderRouting_Location_LocationID] FOREIGN KEY([LocationID]) 
REFERENCES [Production].[Location] ([LocationID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[WorkOrderRouting] WITH CHECK ADD CONSTRAINT [FK_WorkOrderRouting_WorkOrder_WorkOrderID] FOREIGN KEY([WorkOrderID]) 
REFERENCES [Production].[WorkOrder] ([WorkOrderID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Person].[Address] WITH CHECK ADD CONSTRAINT [FK_Address_StateProvince_StateProvinceID] FOREIGN KEY([StateProvinceID]) 
REFERENCES [Person].[StateProvince] ([StateProvinceID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[BillOfMaterials] WITH CHECK ADD CONSTRAINT [FK_BillOfMaterials_Product_ProductAssemblyID] FOREIGN KEY([ProductAssemblyID]) 
REFERENCES [Production].[Product] ([ProductID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[BillOfMaterials] WITH CHECK ADD CONSTRAINT [FK_BillOfMaterials_Product_ComponentID] FOREIGN KEY([ComponentID]) 
REFERENCES [Production].[Product] ([ProductID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[BillOfMaterials] WITH CHECK ADD CONSTRAINT [FK_BillOfMaterials_UnitMeasure_UnitMeasureCode] FOREIGN KEY([UnitMeasureCode]) 
REFERENCES [Production].[UnitMeasure] ([UnitMeasureCode]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Person].[BusinessEntityAddress] WITH CHECK ADD CONSTRAINT [FK_BusinessEntityAddress_Address_AddressID] FOREIGN KEY([AddressID]) 
REFERENCES [Person].[Address] ([AddressID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Person].[BusinessEntityAddress] WITH CHECK ADD CONSTRAINT [FK_BusinessEntityAddress_AddressType_AddressTypeID] FOREIGN KEY([AddressTypeID]) 
REFERENCES [Person].[AddressType] ([AddressTypeID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Person].[BusinessEntityAddress] WITH CHECK ADD CONSTRAINT [FK_BusinessEntityAddress_BusinessEntity_BusinessEntityID] FOREIGN KEY([BusinessEntityID]) 
REFERENCES [Person].[BusinessEntity] ([BusinessEntityID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Person].[BusinessEntityContact] WITH CHECK ADD CONSTRAINT [FK_BusinessEntityContact_Person_PersonID] FOREIGN KEY([PersonID]) 
REFERENCES [Person].[Person] ([BusinessEntityID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Person].[BusinessEntityContact] WITH CHECK ADD CONSTRAINT [FK_BusinessEntityContact_ContactType_ContactTypeID] FOREIGN KEY([ContactTypeID]) 
REFERENCES [Person].[ContactType] ([ContactTypeID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Person].[BusinessEntityContact] WITH CHECK ADD CONSTRAINT [FK_BusinessEntityContact_BusinessEntity_BusinessEntityID] FOREIGN KEY([BusinessEntityID]) 
REFERENCES [Person].[BusinessEntity] ([BusinessEntityID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[CountryRegionCurrency] WITH CHECK ADD CONSTRAINT [FK_CountryRegionCurrency_CountryRegion_CountryRegionCode] FOREIGN KEY([CountryRegionCode]) 
REFERENCES [Person].[CountryRegion] ([CountryRegionCode]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[CountryRegionCurrency] WITH CHECK ADD CONSTRAINT [FK_CountryRegionCurrency_Currency_CurrencyCode] FOREIGN KEY([CurrencyCode]) 
REFERENCES [Sales].[Currency] ([CurrencyCode]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[CurrencyRate] WITH CHECK ADD CONSTRAINT [FK_CurrencyRate_Currency_FromCurrencyCode] FOREIGN KEY([FromCurrencyCode]) 
REFERENCES [Sales].[Currency] ([CurrencyCode]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[CurrencyRate] WITH CHECK ADD CONSTRAINT [FK_CurrencyRate_Currency_ToCurrencyCode] FOREIGN KEY([ToCurrencyCode]) 
REFERENCES [Sales].[Currency] ([CurrencyCode]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[Customer] WITH CHECK ADD CONSTRAINT [FK_Customer_Person_PersonID] FOREIGN KEY([PersonID]) 
REFERENCES [Person].[Person] ([BusinessEntityID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[Customer] WITH CHECK ADD CONSTRAINT [FK_Customer_Store_StoreID] FOREIGN KEY([StoreID]) 
REFERENCES [Sales].[Store] ([BusinessEntityID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[Customer] WITH CHECK ADD CONSTRAINT [FK_Customer_SalesTerritory_TerritoryID] FOREIGN KEY([TerritoryID]) 
REFERENCES [Sales].[SalesTerritory] ([TerritoryID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[Document] WITH CHECK ADD CONSTRAINT [FK_Document_Employee_Owner] FOREIGN KEY([Owner]) 
REFERENCES [HumanResources].[Employee] ([BusinessEntityID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Person].[EmailAddress] WITH CHECK ADD CONSTRAINT [FK_EmailAddress_Person_BusinessEntityID] FOREIGN KEY([BusinessEntityID]) 
REFERENCES [Person].[Person] ([BusinessEntityID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [HumanResources].[Employee] WITH CHECK ADD CONSTRAINT [FK_Employee_Person_BusinessEntityID] FOREIGN KEY([BusinessEntityID]) 
REFERENCES [Person].[Person] ([BusinessEntityID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [HumanResources].[EmployeeDepartmentHistory] WITH CHECK ADD CONSTRAINT [FK_EmployeeDepartmentHistory_Department_DepartmentID] FOREIGN KEY([DepartmentID]) 
REFERENCES [HumanResources].[Department] ([DepartmentID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [HumanResources].[EmployeeDepartmentHistory] WITH CHECK ADD CONSTRAINT [FK_EmployeeDepartmentHistory_Employee_BusinessEntityID] FOREIGN KEY([BusinessEntityID]) 
REFERENCES [HumanResources].[Employee] ([BusinessEntityID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [HumanResources].[EmployeeDepartmentHistory] WITH CHECK ADD CONSTRAINT [FK_EmployeeDepartmentHistory_Shift_ShiftID] FOREIGN KEY([ShiftID]) 
REFERENCES [HumanResources].[Shift] ([ShiftID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [HumanResources].[EmployeePayHistory] WITH CHECK ADD CONSTRAINT [FK_EmployeePayHistory_Employee_BusinessEntityID] FOREIGN KEY([BusinessEntityID]) 
REFERENCES [HumanResources].[Employee] ([BusinessEntityID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [HumanResources].[JobCandidate] WITH CHECK ADD CONSTRAINT [FK_JobCandidate_Employee_BusinessEntityID] FOREIGN KEY([BusinessEntityID]) 
REFERENCES [HumanResources].[Employee] ([BusinessEntityID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Person].[Password] WITH CHECK ADD CONSTRAINT [FK_Password_Person_BusinessEntityID] FOREIGN KEY([BusinessEntityID]) 
REFERENCES [Person].[Person] ([BusinessEntityID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Person].[Person] WITH CHECK ADD CONSTRAINT [FK_Person_BusinessEntity_BusinessEntityID] FOREIGN KEY([BusinessEntityID]) 
REFERENCES [Person].[BusinessEntity] ([BusinessEntityID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[PersonCreditCard] WITH CHECK ADD CONSTRAINT [FK_PersonCreditCard_Person_BusinessEntityID] FOREIGN KEY([BusinessEntityID]) 
REFERENCES [Person].[Person] ([BusinessEntityID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[PersonCreditCard] WITH CHECK ADD CONSTRAINT [FK_PersonCreditCard_CreditCard_CreditCardID] FOREIGN KEY([CreditCardID]) 
REFERENCES [Sales].[CreditCard] ([CreditCardID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Person].[PersonPhone] WITH CHECK ADD CONSTRAINT [FK_PersonPhone_Person_BusinessEntityID] FOREIGN KEY([BusinessEntityID]) 
REFERENCES [Person].[Person] ([BusinessEntityID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Person].[PersonPhone] WITH CHECK ADD CONSTRAINT [FK_PersonPhone_PhoneNumberType_PhoneNumberTypeID] FOREIGN KEY([PhoneNumberTypeID]) 
REFERENCES [Person].[PhoneNumberType] ([PhoneNumberTypeID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[Product] WITH CHECK ADD CONSTRAINT [FK_Product_UnitMeasure_SizeUnitMeasureCode] FOREIGN KEY([SizeUnitMeasureCode]) 
REFERENCES [Production].[UnitMeasure] ([UnitMeasureCode]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[Product] WITH CHECK ADD CONSTRAINT [FK_Product_UnitMeasure_WeightUnitMeasureCode] FOREIGN KEY([WeightUnitMeasureCode]) 
REFERENCES [Production].[UnitMeasure] ([UnitMeasureCode]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[Product] WITH CHECK ADD CONSTRAINT [FK_Product_ProductModel_ProductModelID] FOREIGN KEY([ProductModelID]) 
REFERENCES [Production].[ProductModel] ([ProductModelID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[Product] WITH CHECK ADD CONSTRAINT [FK_Product_ProductSubcategory_ProductSubcategoryID] FOREIGN KEY([ProductSubcategoryID]) 
REFERENCES [Production].[ProductSubcategory] ([ProductSubcategoryID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[ProductCostHistory] WITH CHECK ADD CONSTRAINT [FK_ProductCostHistory_Product_ProductID] FOREIGN KEY([ProductID]) 
REFERENCES [Production].[Product] ([ProductID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[ProductDocument] WITH CHECK ADD CONSTRAINT [FK_ProductDocument_Product_ProductID] FOREIGN KEY([ProductID]) 
REFERENCES [Production].[Product] ([ProductID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[ProductDocument] WITH CHECK ADD CONSTRAINT [FK_ProductDocument_Document_DocumentNode] FOREIGN KEY([DocumentNode]) 
REFERENCES [Production].[Document] ([DocumentNode]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[ProductInventory] WITH CHECK ADD CONSTRAINT [FK_ProductInventory_Location_LocationID] FOREIGN KEY([LocationID]) 
REFERENCES [Production].[Location] ([LocationID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[ProductInventory] WITH CHECK ADD CONSTRAINT [FK_ProductInventory_Product_ProductID] FOREIGN KEY([ProductID]) 
REFERENCES [Production].[Product] ([ProductID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[ProductListPriceHistory] WITH CHECK ADD CONSTRAINT [FK_ProductListPriceHistory_Product_ProductID] FOREIGN KEY([ProductID]) 
REFERENCES [Production].[Product] ([ProductID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[ProductModelIllustration] WITH CHECK ADD CONSTRAINT [FK_ProductModelIllustration_ProductModel_ProductModelID] FOREIGN KEY([ProductModelID]) 
REFERENCES [Production].[ProductModel] ([ProductModelID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[ProductModelIllustration] WITH CHECK ADD CONSTRAINT [FK_ProductModelIllustration_Illustration_IllustrationID] FOREIGN KEY([IllustrationID]) 
REFERENCES [Production].[Illustration] ([IllustrationID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[ProductModelProductDescriptionCulture] WITH CHECK ADD CONSTRAINT [FK_ProductModelProductDescriptionCulture_ProductDescription_ProductDescriptionID] FOREIGN KEY([ProductDescriptionID]) 
REFERENCES [Production].[ProductDescription] ([ProductDescriptionID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[ProductModelProductDescriptionCulture] WITH CHECK ADD CONSTRAINT [FK_ProductModelProductDescriptionCulture_Culture_CultureID] FOREIGN KEY([CultureID]) 
REFERENCES [Production].[Culture] ([CultureID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[ProductModelProductDescriptionCulture] WITH CHECK ADD CONSTRAINT [FK_ProductModelProductDescriptionCulture_ProductModel_ProductModelID] FOREIGN KEY([ProductModelID]) 
REFERENCES [Production].[ProductModel] ([ProductModelID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[ProductProductPhoto] WITH CHECK ADD CONSTRAINT [FK_ProductProductPhoto_Product_ProductID] FOREIGN KEY([ProductID]) 
REFERENCES [Production].[Product] ([ProductID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[ProductProductPhoto] WITH CHECK ADD CONSTRAINT [FK_ProductProductPhoto_ProductPhoto_ProductPhotoID] FOREIGN KEY([ProductPhotoID]) 
REFERENCES [Production].[ProductPhoto] ([ProductPhotoID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[ProductReview] WITH CHECK ADD CONSTRAINT [FK_ProductReview_Product_ProductID] FOREIGN KEY([ProductID]) 
REFERENCES [Production].[Product] ([ProductID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[ProductSubcategory] WITH CHECK ADD CONSTRAINT [FK_ProductSubcategory_ProductCategory_ProductCategoryID] FOREIGN KEY([ProductCategoryID]) 
REFERENCES [Production].[ProductCategory] ([ProductCategoryID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Purchasing].[ProductVendor] WITH CHECK ADD CONSTRAINT [FK_ProductVendor_Product_ProductID] FOREIGN KEY([ProductID]) 
REFERENCES [Production].[Product] ([ProductID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Purchasing].[ProductVendor] WITH CHECK ADD CONSTRAINT [FK_ProductVendor_UnitMeasure_UnitMeasureCode] FOREIGN KEY([UnitMeasureCode]) 
REFERENCES [Production].[UnitMeasure] ([UnitMeasureCode]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Purchasing].[ProductVendor] WITH CHECK ADD CONSTRAINT [FK_ProductVendor_Vendor_BusinessEntityID] FOREIGN KEY([BusinessEntityID]) 
REFERENCES [Purchasing].[Vendor] ([BusinessEntityID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Purchasing].[PurchaseOrderDetail] WITH CHECK ADD CONSTRAINT [FK_PurchaseOrderDetail_Product_ProductID] FOREIGN KEY([ProductID]) 
REFERENCES [Production].[Product] ([ProductID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Purchasing].[PurchaseOrderDetail] WITH CHECK ADD CONSTRAINT [FK_PurchaseOrderDetail_PurchaseOrderHeader_PurchaseOrderID] FOREIGN KEY([PurchaseOrderID]) 
REFERENCES [Purchasing].[PurchaseOrderHeader] ([PurchaseOrderID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Purchasing].[PurchaseOrderHeader] WITH CHECK ADD CONSTRAINT [FK_PurchaseOrderHeader_Employee_EmployeeID] FOREIGN KEY([EmployeeID]) 
REFERENCES [HumanResources].[Employee] ([BusinessEntityID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Purchasing].[PurchaseOrderHeader] WITH CHECK ADD CONSTRAINT [FK_PurchaseOrderHeader_Vendor_VendorID] FOREIGN KEY([VendorID]) 
REFERENCES [Purchasing].[Vendor] ([BusinessEntityID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Purchasing].[PurchaseOrderHeader] WITH CHECK ADD CONSTRAINT [FK_PurchaseOrderHeader_ShipMethod_ShipMethodID] FOREIGN KEY([ShipMethodID]) 
REFERENCES [Purchasing].[ShipMethod] ([ShipMethodID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesOrderDetail] WITH CHECK ADD CONSTRAINT [FK_SalesOrderDetail_SalesOrderHeader_SalesOrderID] FOREIGN KEY([SalesOrderID]) 
REFERENCES [Sales].[SalesOrderHeader] ([SalesOrderID]) ON DELETE CASCADE
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesOrderDetail] WITH CHECK ADD CONSTRAINT [FK_SalesOrderDetail_SpecialOfferProduct_SpecialOfferIDProductID] FOREIGN KEY([SpecialOfferID], [ProductID]) 
REFERENCES [Sales].[SpecialOfferProduct] ([SpecialOfferID], [ProductID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesOrderHeader] WITH CHECK ADD CONSTRAINT [FK_SalesOrderHeader_Address_BillToAddressID] FOREIGN KEY([BillToAddressID]) 
REFERENCES [Person].[Address] ([AddressID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesOrderHeader] WITH CHECK ADD CONSTRAINT [FK_SalesOrderHeader_Address_ShipToAddressID] FOREIGN KEY([ShipToAddressID]) 
REFERENCES [Person].[Address] ([AddressID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesOrderHeader] WITH CHECK ADD CONSTRAINT [FK_SalesOrderHeader_CreditCard_CreditCardID] FOREIGN KEY([CreditCardID]) 
REFERENCES [Sales].[CreditCard] ([CreditCardID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesOrderHeader] WITH CHECK ADD CONSTRAINT [FK_SalesOrderHeader_CurrencyRate_CurrencyRateID] FOREIGN KEY([CurrencyRateID]) 
REFERENCES [Sales].[CurrencyRate] ([CurrencyRateID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesOrderHeader] WITH CHECK ADD CONSTRAINT [FK_SalesOrderHeader_Customer_CustomerID] FOREIGN KEY([CustomerID]) 
REFERENCES [Sales].[Customer] ([CustomerID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesOrderHeader] WITH CHECK ADD CONSTRAINT [FK_SalesOrderHeader_SalesPerson_SalesPersonID] FOREIGN KEY([SalesPersonID]) 
REFERENCES [Sales].[SalesPerson] ([BusinessEntityID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesOrderHeader] WITH CHECK ADD CONSTRAINT [FK_SalesOrderHeader_ShipMethod_ShipMethodID] FOREIGN KEY([ShipMethodID]) 
REFERENCES [Purchasing].[ShipMethod] ([ShipMethodID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesOrderHeader] WITH CHECK ADD CONSTRAINT [FK_SalesOrderHeader_SalesTerritory_TerritoryID] FOREIGN KEY([TerritoryID]) 
REFERENCES [Sales].[SalesTerritory] ([TerritoryID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesOrderHeaderSalesReason] WITH CHECK ADD CONSTRAINT [FK_SalesOrderHeaderSalesReason_SalesReason_SalesReasonID] FOREIGN KEY([SalesReasonID]) 
REFERENCES [Sales].[SalesReason] ([SalesReasonID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesOrderHeaderSalesReason] WITH CHECK ADD CONSTRAINT [FK_SalesOrderHeaderSalesReason_SalesOrderHeader_SalesOrderID] FOREIGN KEY([SalesOrderID]) 
REFERENCES [Sales].[SalesOrderHeader] ([SalesOrderID]) ON DELETE CASCADE
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesPerson] WITH CHECK ADD CONSTRAINT [FK_SalesPerson_Employee_BusinessEntityID] FOREIGN KEY([BusinessEntityID]) 
REFERENCES [HumanResources].[Employee] ([BusinessEntityID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesPerson] WITH CHECK ADD CONSTRAINT [FK_SalesPerson_SalesTerritory_TerritoryID] FOREIGN KEY([TerritoryID]) 
REFERENCES [Sales].[SalesTerritory] ([TerritoryID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesPersonQuotaHistory] WITH CHECK ADD CONSTRAINT [FK_SalesPersonQuotaHistory_SalesPerson_BusinessEntityID] FOREIGN KEY([BusinessEntityID]) 
REFERENCES [Sales].[SalesPerson] ([BusinessEntityID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesTaxRate] WITH CHECK ADD CONSTRAINT [FK_SalesTaxRate_StateProvince_StateProvinceID] FOREIGN KEY([StateProvinceID]) 
REFERENCES [Person].[StateProvince] ([StateProvinceID]) 
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesTerritory] WITH CHECK ADD CONSTRAINT [FK_SalesTerritory_CountryRegion_CountryRegionCode] FOREIGN KEY([CountryRegionCode]) 
REFERENCES [Person].[CountryRegion] ([CountryRegionCode]) 
GO -- SQRIBE/GO;341e11
