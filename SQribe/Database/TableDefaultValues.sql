SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [dbo].[ErrorLog] ADD CONSTRAINT [df_ErrorLog_ErrorTime] DEFAULT (getdate()) FOR [ErrorTime]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [dbo].[AWBuildVersion] ADD CONSTRAINT [df_AWBuildVersion_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [HumanResources].[Shift] ADD CONSTRAINT [df_Shift_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Person].[PhoneNumberType] ADD CONSTRAINT [df_PhoneNumberType_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[ShoppingCartItem] ADD CONSTRAINT [df_ShoppingCartItem_Quantity] DEFAULT ((1)) FOR [Quantity]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[ShoppingCartItem] ADD CONSTRAINT [df_ShoppingCartItem_DateCreated] DEFAULT (getdate()) FOR [DateCreated]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[ShoppingCartItem] ADD CONSTRAINT [df_ShoppingCartItem_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[ProductReview] ADD CONSTRAINT [df_ProductReview_ReviewDate] DEFAULT (getdate()) FOR [ReviewDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[ProductReview] ADD CONSTRAINT [df_ProductReview_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[ProductCategory] ADD CONSTRAINT [df_ProductCategory_rowguid] DEFAULT (newid()) FOR [rowguid]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[ProductCategory] ADD CONSTRAINT [df_ProductCategory_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[Illustration] ADD CONSTRAINT [df_Illustration_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Purchasing].[ShipMethod] ADD CONSTRAINT [df_ShipMethod_ShipBase] DEFAULT ((0.00)) FOR [ShipBase]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Purchasing].[ShipMethod] ADD CONSTRAINT [df_ShipMethod_ShipRate] DEFAULT ((0.00)) FOR [ShipRate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Purchasing].[ShipMethod] ADD CONSTRAINT [df_ShipMethod_rowguid] DEFAULT (newid()) FOR [rowguid]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Purchasing].[ShipMethod] ADD CONSTRAINT [df_ShipMethod_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Person].[AddressType] ADD CONSTRAINT [df_AddressType_rowguid] DEFAULT (newid()) FOR [rowguid]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Person].[AddressType] ADD CONSTRAINT [df_AddressType_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[ProductModelIllustration] ADD CONSTRAINT [df_ProductModelIllustration_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[Culture] ADD CONSTRAINT [df_Culture_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesReason] ADD CONSTRAINT [df_SalesReason_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesTerritory] ADD CONSTRAINT [df_SalesTerritory_SalesYTD] DEFAULT ((0.00)) FOR [SalesYTD]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesTerritory] ADD CONSTRAINT [df_SalesTerritory_SalesLastYear] DEFAULT ((0.00)) FOR [SalesLastYear]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesTerritory] ADD CONSTRAINT [df_SalesTerritory_CostYTD] DEFAULT ((0.00)) FOR [CostYTD]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesTerritory] ADD CONSTRAINT [df_SalesTerritory_CostLastYear] DEFAULT ((0.00)) FOR [CostLastYear]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesTerritory] ADD CONSTRAINT [df_SalesTerritory_rowguid] DEFAULT (newid()) FOR [rowguid]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesTerritory] ADD CONSTRAINT [df_SalesTerritory_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[Document] ADD CONSTRAINT [df_Document_FolderFlag] DEFAULT ((0)) FOR [FolderFlag]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[Document] ADD CONSTRAINT [df_Document_ChangeNumber] DEFAULT ((0)) FOR [ChangeNumber]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[Document] ADD CONSTRAINT [df_Document_rowguid] DEFAULT (newid()) FOR [rowguid]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[Document] ADD CONSTRAINT [df_Document_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [HumanResources].[JobCandidate] ADD CONSTRAINT [df_JobCandidate_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[Location] ADD CONSTRAINT [df_Location_CostRate] DEFAULT ((0.00)) FOR [CostRate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[Location] ADD CONSTRAINT [df_Location_Availability] DEFAULT ((0.00)) FOR [Availability]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[Location] ADD CONSTRAINT [df_Location_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [HumanResources].[Department] ADD CONSTRAINT [df_Department_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SpecialOffer] ADD CONSTRAINT [df_SpecialOffer_DiscountPct] DEFAULT ((0.00)) FOR [DiscountPct]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SpecialOffer] ADD CONSTRAINT [df_SpecialOffer_MinQty] DEFAULT ((0)) FOR [MinQty]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SpecialOffer] ADD CONSTRAINT [df_SpecialOffer_rowguid] DEFAULT (newid()) FOR [rowguid]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SpecialOffer] ADD CONSTRAINT [df_SpecialOffer_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[ScrapReason] ADD CONSTRAINT [df_ScrapReason_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesTerritoryHistory] ADD CONSTRAINT [df_SalesTerritoryHistory_rowguid] DEFAULT (newid()) FOR [rowguid]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesTerritoryHistory] ADD CONSTRAINT [df_SalesTerritoryHistory_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesPerson] ADD CONSTRAINT [df_SalesPerson_Bonus] DEFAULT ((0.00)) FOR [Bonus]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesPerson] ADD CONSTRAINT [df_SalesPerson_CommissionPct] DEFAULT ((0.00)) FOR [CommissionPct]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesPerson] ADD CONSTRAINT [df_SalesPerson_SalesYTD] DEFAULT ((0.00)) FOR [SalesYTD]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesPerson] ADD CONSTRAINT [df_SalesPerson_SalesLastYear] DEFAULT ((0.00)) FOR [SalesLastYear]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesPerson] ADD CONSTRAINT [df_SalesPerson_rowguid] DEFAULT (newid()) FOR [rowguid]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesPerson] ADD CONSTRAINT [df_SalesPerson_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Person].[ContactType] ADD CONSTRAINT [df_ContactType_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesTaxRate] ADD CONSTRAINT [df_SalesTaxRate_TaxRate] DEFAULT ((0.00)) FOR [TaxRate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesTaxRate] ADD CONSTRAINT [df_SalesTaxRate_rowguid] DEFAULT (newid()) FOR [rowguid]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesTaxRate] ADD CONSTRAINT [df_SalesTaxRate_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[ProductDocument] ADD CONSTRAINT [df_ProductDocument_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[ProductSubcategory] ADD CONSTRAINT [df_ProductSubcategory_rowguid] DEFAULT (newid()) FOR [rowguid]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[ProductSubcategory] ADD CONSTRAINT [df_ProductSubcategory_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[UnitMeasure] ADD CONSTRAINT [df_UnitMeasure_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[ProductPhoto] ADD CONSTRAINT [df_ProductPhoto_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Purchasing].[Vendor] ADD CONSTRAINT [df_Vendor_PreferredVendorStatus] DEFAULT ((1)) FOR [PreferredVendorStatus]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Purchasing].[Vendor] ADD CONSTRAINT [df_Vendor_ActiveFlag] DEFAULT ((1)) FOR [ActiveFlag]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Purchasing].[Vendor] ADD CONSTRAINT [df_Vendor_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[Currency] ADD CONSTRAINT [df_Currency_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[CountryRegionCurrency] ADD CONSTRAINT [df_CountryRegionCurrency_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[ProductModel] ADD CONSTRAINT [df_ProductModel_rowguid] DEFAULT (newid()) FOR [rowguid]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[ProductModel] ADD CONSTRAINT [df_ProductModel_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesPersonQuotaHistory] ADD CONSTRAINT [df_SalesPersonQuotaHistory_rowguid] DEFAULT (newid()) FOR [rowguid]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesPersonQuotaHistory] ADD CONSTRAINT [df_SalesPersonQuotaHistory_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Person].[StateProvince] ADD CONSTRAINT [df_StateProvince_IsOnlyStateProvinceFlag] DEFAULT ((1)) FOR [IsOnlyStateProvinceFlag]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Person].[StateProvince] ADD CONSTRAINT [df_StateProvince_rowguid] DEFAULT (newid()) FOR [rowguid]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Person].[StateProvince] ADD CONSTRAINT [df_StateProvince_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Person].[CountryRegion] ADD CONSTRAINT [df_CountryRegion_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [df_Employee_SalariedFlag] DEFAULT ((1)) FOR [SalariedFlag]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [df_Employee_VacationHours] DEFAULT ((0)) FOR [VacationHours]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [df_Employee_SickLeaveHours] DEFAULT ((0)) FOR [SickLeaveHours]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [df_Employee_CurrentFlag] DEFAULT ((1)) FOR [CurrentFlag]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [df_Employee_rowguid] DEFAULT (newid()) FOR [rowguid]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [df_Employee_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [HumanResources].[EmployeeDepartmentHistory] ADD CONSTRAINT [df_EmployeeDepartmentHistory_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [HumanResources].[EmployeePayHistory] ADD CONSTRAINT [df_EmployeePayHistory_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[ProductCostHistory] ADD CONSTRAINT [df_ProductCostHistory_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[ProductListPriceHistory] ADD CONSTRAINT [df_ProductListPriceHistory_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Purchasing].[ProductVendor] ADD CONSTRAINT [df_ProductVendor_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[ProductProductPhoto] ADD CONSTRAINT [df_ProductProductPhoto_Primary] DEFAULT ((0)) FOR [Primary]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[ProductProductPhoto] ADD CONSTRAINT [df_ProductProductPhoto_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[Product] ADD CONSTRAINT [df_Product_MakeFlag] DEFAULT ((1)) FOR [MakeFlag]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[Product] ADD CONSTRAINT [df_Product_FinishedGoodsFlag] DEFAULT ((1)) FOR [FinishedGoodsFlag]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[Product] ADD CONSTRAINT [df_Product_rowguid] DEFAULT (newid()) FOR [rowguid]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[Product] ADD CONSTRAINT [df_Product_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SpecialOfferProduct] ADD CONSTRAINT [df_SpecialOfferProduct_rowguid] DEFAULT (newid()) FOR [rowguid]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SpecialOfferProduct] ADD CONSTRAINT [df_SpecialOfferProduct_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[Store] ADD CONSTRAINT [df_Store_rowguid] DEFAULT (newid()) FOR [rowguid]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[Store] ADD CONSTRAINT [df_Store_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[ProductDescription] ADD CONSTRAINT [df_ProductDescription_rowguid] DEFAULT (newid()) FOR [rowguid]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[ProductDescription] ADD CONSTRAINT [df_ProductDescription_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[ProductModelProductDescriptionCulture] ADD CONSTRAINT [df_ProductModelProductDescriptionCulture_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Person].[BusinessEntityContact] ADD CONSTRAINT [df_BusinessEntityContact_rowguid] DEFAULT (newid()) FOR [rowguid]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Person].[BusinessEntityContact] ADD CONSTRAINT [df_BusinessEntityContact_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[ProductInventory] ADD CONSTRAINT [df_ProductInventory_Quantity] DEFAULT ((0)) FOR [Quantity]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[ProductInventory] ADD CONSTRAINT [df_ProductInventory_rowguid] DEFAULT (newid()) FOR [rowguid]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[ProductInventory] ADD CONSTRAINT [df_ProductInventory_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[BillOfMaterials] ADD CONSTRAINT [df_BillOfMaterials_StartDate] DEFAULT (getdate()) FOR [StartDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[BillOfMaterials] ADD CONSTRAINT [df_BillOfMaterials_PerAssemblyQty] DEFAULT ((1.00)) FOR [PerAssemblyQty]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[BillOfMaterials] ADD CONSTRAINT [df_BillOfMaterials_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Purchasing].[PurchaseOrderHeader] ADD CONSTRAINT [df_PurchaseOrderHeader_RevisionNumber] DEFAULT ((0)) FOR [RevisionNumber]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Purchasing].[PurchaseOrderHeader] ADD CONSTRAINT [df_PurchaseOrderHeader_Status] DEFAULT ((1)) FOR [Status]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Purchasing].[PurchaseOrderHeader] ADD CONSTRAINT [df_PurchaseOrderHeader_OrderDate] DEFAULT (getdate()) FOR [OrderDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Purchasing].[PurchaseOrderHeader] ADD CONSTRAINT [df_PurchaseOrderHeader_SubTotal] DEFAULT ((0.00)) FOR [SubTotal]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Purchasing].[PurchaseOrderHeader] ADD CONSTRAINT [df_PurchaseOrderHeader_TaxAmt] DEFAULT ((0.00)) FOR [TaxAmt]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Purchasing].[PurchaseOrderHeader] ADD CONSTRAINT [df_PurchaseOrderHeader_Freight] DEFAULT ((0.00)) FOR [Freight]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Purchasing].[PurchaseOrderHeader] ADD CONSTRAINT [df_PurchaseOrderHeader_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Purchasing].[PurchaseOrderDetail] ADD CONSTRAINT [df_PurchaseOrderDetail_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[CurrencyRate] ADD CONSTRAINT [df_CurrencyRate_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[PersonCreditCard] ADD CONSTRAINT [df_PersonCreditCard_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[CreditCard] ADD CONSTRAINT [df_CreditCard_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Person].[Address] ADD CONSTRAINT [df_Address_rowguid] DEFAULT (newid()) FOR [rowguid]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Person].[Address] ADD CONSTRAINT [df_Address_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Person].[BusinessEntityAddress] ADD CONSTRAINT [df_BusinessEntityAddress_rowguid] DEFAULT (newid()) FOR [rowguid]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Person].[BusinessEntityAddress] ADD CONSTRAINT [df_BusinessEntityAddress_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[Customer] ADD CONSTRAINT [df_Customer_rowguid] DEFAULT (newid()) FOR [rowguid]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[Customer] ADD CONSTRAINT [df_Customer_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Person].[EmailAddress] ADD CONSTRAINT [df_EmailAddress_rowguid] DEFAULT (newid()) FOR [rowguid]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Person].[EmailAddress] ADD CONSTRAINT [df_EmailAddress_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Person].[Password] ADD CONSTRAINT [df_Password_rowguid] DEFAULT (newid()) FOR [rowguid]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Person].[Password] ADD CONSTRAINT [df_Password_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Person].[Person] ADD CONSTRAINT [df_Person_NameStyle] DEFAULT ((0)) FOR [NameStyle]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Person].[Person] ADD CONSTRAINT [df_Person_EmailPromotion] DEFAULT ((0)) FOR [EmailPromotion]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Person].[Person] ADD CONSTRAINT [df_Person_rowguid] DEFAULT (newid()) FOR [rowguid]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Person].[Person] ADD CONSTRAINT [df_Person_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Person].[PersonPhone] ADD CONSTRAINT [df_PersonPhone_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Person].[BusinessEntity] ADD CONSTRAINT [df_BusinessEntity_rowguid] DEFAULT (newid()) FOR [rowguid]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Person].[BusinessEntity] ADD CONSTRAINT [df_BusinessEntity_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesOrderHeaderSalesReason] ADD CONSTRAINT [df_SalesOrderHeaderSalesReason_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesOrderHeader] ADD CONSTRAINT [df_SalesOrderHeader_RevisionNumber] DEFAULT ((0)) FOR [RevisionNumber]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesOrderHeader] ADD CONSTRAINT [df_SalesOrderHeader_OrderDate] DEFAULT (getdate()) FOR [OrderDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesOrderHeader] ADD CONSTRAINT [df_SalesOrderHeader_Status] DEFAULT ((1)) FOR [Status]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesOrderHeader] ADD CONSTRAINT [df_SalesOrderHeader_OnlineOrderFlag] DEFAULT ((1)) FOR [OnlineOrderFlag]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesOrderHeader] ADD CONSTRAINT [df_SalesOrderHeader_SubTotal] DEFAULT ((0.00)) FOR [SubTotal]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesOrderHeader] ADD CONSTRAINT [df_SalesOrderHeader_TaxAmt] DEFAULT ((0.00)) FOR [TaxAmt]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesOrderHeader] ADD CONSTRAINT [df_SalesOrderHeader_Freight] DEFAULT ((0.00)) FOR [Freight]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesOrderHeader] ADD CONSTRAINT [df_SalesOrderHeader_rowguid] DEFAULT (newid()) FOR [rowguid]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesOrderHeader] ADD CONSTRAINT [df_SalesOrderHeader_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[WorkOrderRouting] ADD CONSTRAINT [df_WorkOrderRouting_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[WorkOrder] ADD CONSTRAINT [df_WorkOrder_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[TransactionHistoryArchive] ADD CONSTRAINT [df_TransactionHistoryArchive_ReferenceOrderLineID] DEFAULT ((0)) FOR [ReferenceOrderLineID]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[TransactionHistoryArchive] ADD CONSTRAINT [df_TransactionHistoryArchive_TransactionDate] DEFAULT (getdate()) FOR [TransactionDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[TransactionHistoryArchive] ADD CONSTRAINT [df_TransactionHistoryArchive_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[TransactionHistory] ADD CONSTRAINT [df_TransactionHistory_ReferenceOrderLineID] DEFAULT ((0)) FOR [ReferenceOrderLineID]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[TransactionHistory] ADD CONSTRAINT [df_TransactionHistory_TransactionDate] DEFAULT (getdate()) FOR [TransactionDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[TransactionHistory] ADD CONSTRAINT [df_TransactionHistory_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesOrderDetail] ADD CONSTRAINT [df_SalesOrderDetail_UnitPriceDiscount] DEFAULT ((0.0)) FOR [UnitPriceDiscount]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesOrderDetail] ADD CONSTRAINT [df_SalesOrderDetail_rowguid] DEFAULT (newid()) FOR [rowguid]
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesOrderDetail] ADD CONSTRAINT [df_SalesOrderDetail_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO -- SQRIBE/GO;341e11
