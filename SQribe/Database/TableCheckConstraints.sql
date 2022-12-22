SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;341e11
PRINT N'CREATE table check constraints'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[ShoppingCartItem] ADD CONSTRAINT [CK_ShoppingCartItem_Quantity] CHECK (([Quantity]>=(1)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[ProductReview] ADD CONSTRAINT [CK_ProductReview_Rating] CHECK (([Rating]>=(1) AND [Rating]<=(5)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Purchasing].[ShipMethod] ADD CONSTRAINT [CK_ShipMethod_ShipBase] CHECK (([ShipBase]>(0.00)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Purchasing].[ShipMethod] ADD CONSTRAINT [CK_ShipMethod_ShipRate] CHECK (([ShipRate]>(0.00)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesTerritory] ADD CONSTRAINT [CK_SalesTerritory_SalesYTD] CHECK (([SalesYTD]>=(0.00)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesTerritory] ADD CONSTRAINT [CK_SalesTerritory_SalesLastYear] CHECK (([SalesLastYear]>=(0.00)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesTerritory] ADD CONSTRAINT [CK_SalesTerritory_CostYTD] CHECK (([CostYTD]>=(0.00)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesTerritory] ADD CONSTRAINT [CK_SalesTerritory_CostLastYear] CHECK (([CostLastYear]>=(0.00)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[Document] ADD CONSTRAINT [CK_Document_Status] CHECK (([Status]>=(1) AND [Status]<=(3)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[Location] ADD CONSTRAINT [CK_Location_CostRate] CHECK (([CostRate]>=(0.00)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[Location] ADD CONSTRAINT [CK_Location_Availability] CHECK (([Availability]>=(0.00)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SpecialOffer] ADD CONSTRAINT [CK_SpecialOffer_EndDate] CHECK (([EndDate]>=[StartDate]))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SpecialOffer] ADD CONSTRAINT [CK_SpecialOffer_DiscountPct] CHECK (([DiscountPct]>=(0.00)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SpecialOffer] ADD CONSTRAINT [CK_SpecialOffer_MinQty] CHECK (([MinQty]>=(0)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SpecialOffer] ADD CONSTRAINT [CK_SpecialOffer_MaxQty] CHECK (([MaxQty]>=(0)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesTerritoryHistory] ADD CONSTRAINT [CK_SalesTerritoryHistory_EndDate] CHECK (([EndDate]>=[StartDate] OR [EndDate] IS NULL))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesPerson] ADD CONSTRAINT [CK_SalesPerson_SalesQuota] CHECK (([SalesQuota]>(0.00)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesPerson] ADD CONSTRAINT [CK_SalesPerson_Bonus] CHECK (([Bonus]>=(0.00)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesPerson] ADD CONSTRAINT [CK_SalesPerson_CommissionPct] CHECK (([CommissionPct]>=(0.00)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesPerson] ADD CONSTRAINT [CK_SalesPerson_SalesYTD] CHECK (([SalesYTD]>=(0.00)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesPerson] ADD CONSTRAINT [CK_SalesPerson_SalesLastYear] CHECK (([SalesLastYear]>=(0.00)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesTaxRate] ADD CONSTRAINT [CK_SalesTaxRate_TaxType] CHECK (([TaxType]>=(1) AND [TaxType]<=(3)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Purchasing].[Vendor] ADD CONSTRAINT [CK_Vendor_CreditRating] CHECK (([CreditRating]>=(1) AND [CreditRating]<=(5)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesPersonQuotaHistory] ADD CONSTRAINT [CK_SalesPersonQuotaHistory_SalesQuota] CHECK (([SalesQuota]>(0.00)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [CK_Employee_BirthDate] CHECK (([BirthDate]>='1930-01-01' AND [BirthDate]<=dateadd(year,(-18),getdate())))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [CK_Employee_MaritalStatus] CHECK ((upper([MaritalStatus])='S' OR upper([MaritalStatus])='M'))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [CK_Employee_HireDate] CHECK (([HireDate]>='1996-07-01' AND [HireDate]<=dateadd(day,(1),getdate())))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [CK_Employee_Gender] CHECK ((upper([Gender])='F' OR upper([Gender])='M'))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [CK_Employee_VacationHours] CHECK (([VacationHours]>=(-40) AND [VacationHours]<=(240)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [CK_Employee_SickLeaveHours] CHECK (([SickLeaveHours]>=(0) AND [SickLeaveHours]<=(120)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [HumanResources].[EmployeeDepartmentHistory] ADD CONSTRAINT [CK_EmployeeDepartmentHistory_EndDate] CHECK (([EndDate]>=[StartDate] OR [EndDate] IS NULL))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [HumanResources].[EmployeePayHistory] ADD CONSTRAINT [CK_EmployeePayHistory_PayFrequency] CHECK (([PayFrequency]=(2) OR [PayFrequency]=(1)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [HumanResources].[EmployeePayHistory] ADD CONSTRAINT [CK_EmployeePayHistory_Rate] CHECK (([Rate]>=(6.50) AND [Rate]<=(200.00)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[ProductCostHistory] ADD CONSTRAINT [CK_ProductCostHistory_EndDate] CHECK (([EndDate]>=[StartDate] OR [EndDate] IS NULL))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[ProductCostHistory] ADD CONSTRAINT [CK_ProductCostHistory_StandardCost] CHECK (([StandardCost]>=(0.00)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[ProductListPriceHistory] ADD CONSTRAINT [CK_ProductListPriceHistory_EndDate] CHECK (([EndDate]>=[StartDate] OR [EndDate] IS NULL))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[ProductListPriceHistory] ADD CONSTRAINT [CK_ProductListPriceHistory_ListPrice] CHECK (([ListPrice]>(0.00)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Purchasing].[ProductVendor] ADD CONSTRAINT [CK_ProductVendor_AverageLeadTime] CHECK (([AverageLeadTime]>=(1)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Purchasing].[ProductVendor] ADD CONSTRAINT [CK_ProductVendor_StandardPrice] CHECK (([StandardPrice]>(0.00)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Purchasing].[ProductVendor] ADD CONSTRAINT [CK_ProductVendor_LastReceiptCost] CHECK (([LastReceiptCost]>(0.00)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Purchasing].[ProductVendor] ADD CONSTRAINT [CK_ProductVendor_MinOrderQty] CHECK (([MinOrderQty]>=(1)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Purchasing].[ProductVendor] ADD CONSTRAINT [CK_ProductVendor_MaxOrderQty] CHECK (([MaxOrderQty]>=(1)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Purchasing].[ProductVendor] ADD CONSTRAINT [CK_ProductVendor_OnOrderQty] CHECK (([OnOrderQty]>=(0)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[Product] ADD CONSTRAINT [CK_Product_SafetyStockLevel] CHECK (([SafetyStockLevel]>(0)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[Product] ADD CONSTRAINT [CK_Product_ReorderPoint] CHECK (([ReorderPoint]>(0)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[Product] ADD CONSTRAINT [CK_Product_StandardCost] CHECK (([StandardCost]>=(0.00)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[Product] ADD CONSTRAINT [CK_Product_ListPrice] CHECK (([ListPrice]>=(0.00)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[Product] ADD CONSTRAINT [CK_Product_Weight] CHECK (([Weight]>(0.00)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[Product] ADD CONSTRAINT [CK_Product_DaysToManufacture] CHECK (([DaysToManufacture]>=(0)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[Product] ADD CONSTRAINT [CK_Product_ProductLine] CHECK ((upper([ProductLine])='R' OR upper([ProductLine])='M' OR upper([ProductLine])='T' OR upper([ProductLine])='S' OR [ProductLine] IS NULL))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[Product] ADD CONSTRAINT [CK_Product_Class] CHECK ((upper([Class])='H' OR upper([Class])='M' OR upper([Class])='L' OR [Class] IS NULL))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[Product] ADD CONSTRAINT [CK_Product_Style] CHECK ((upper([Style])='U' OR upper([Style])='M' OR upper([Style])='W' OR [Style] IS NULL))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[Product] ADD CONSTRAINT [CK_Product_SellEndDate] CHECK (([SellEndDate]>=[SellStartDate] OR [SellEndDate] IS NULL))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[ProductInventory] ADD CONSTRAINT [CK_ProductInventory_Shelf] CHECK (([Shelf] like '[A-Za-z]' OR [Shelf]='N/A'))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[ProductInventory] ADD CONSTRAINT [CK_ProductInventory_Bin] CHECK (([Bin]>=(0) AND [Bin]<=(100)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[BillOfMaterials] ADD CONSTRAINT [CK_BillOfMaterials_EndDate] CHECK (([EndDate]>[StartDate] OR [EndDate] IS NULL))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[BillOfMaterials] ADD CONSTRAINT [CK_BillOfMaterials_ProductAssemblyID] CHECK (([ProductAssemblyID]<>[ComponentID]))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[BillOfMaterials] ADD CONSTRAINT [CK_BillOfMaterials_BOMLevel] CHECK (([ProductAssemblyID] IS NULL AND [BOMLevel]=(0) AND [PerAssemblyQty]=(1.00) OR [ProductAssemblyID] IS NOT NULL AND [BOMLevel]>=(1)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[BillOfMaterials] ADD CONSTRAINT [CK_BillOfMaterials_PerAssemblyQty] CHECK (([PerAssemblyQty]>=(1.00)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Purchasing].[PurchaseOrderHeader] ADD CONSTRAINT [CK_PurchaseOrderHeader_Status] CHECK (([Status]>=(1) AND [Status]<=(4)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Purchasing].[PurchaseOrderHeader] ADD CONSTRAINT [CK_PurchaseOrderHeader_ShipDate] CHECK (([ShipDate]>=[OrderDate] OR [ShipDate] IS NULL))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Purchasing].[PurchaseOrderHeader] ADD CONSTRAINT [CK_PurchaseOrderHeader_SubTotal] CHECK (([SubTotal]>=(0.00)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Purchasing].[PurchaseOrderHeader] ADD CONSTRAINT [CK_PurchaseOrderHeader_TaxAmt] CHECK (([TaxAmt]>=(0.00)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Purchasing].[PurchaseOrderHeader] ADD CONSTRAINT [CK_PurchaseOrderHeader_Freight] CHECK (([Freight]>=(0.00)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Purchasing].[PurchaseOrderDetail] ADD CONSTRAINT [CK_PurchaseOrderDetail_OrderQty] CHECK (([OrderQty]>(0)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Purchasing].[PurchaseOrderDetail] ADD CONSTRAINT [CK_PurchaseOrderDetail_UnitPrice] CHECK (([UnitPrice]>=(0.00)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Purchasing].[PurchaseOrderDetail] ADD CONSTRAINT [CK_PurchaseOrderDetail_ReceivedQty] CHECK (([ReceivedQty]>=(0.00)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Purchasing].[PurchaseOrderDetail] ADD CONSTRAINT [CK_PurchaseOrderDetail_RejectedQty] CHECK (([RejectedQty]>=(0.00)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Person].[Person] ADD CONSTRAINT [CK_Person_EmailPromotion] CHECK (([EmailPromotion]>=(0) AND [EmailPromotion]<=(2)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Person].[Person] ADD CONSTRAINT [CK_Person_PersonType] CHECK (([PersonType] IS NULL OR (upper([PersonType])='GC' OR upper([PersonType])='SP' OR upper([PersonType])='EM' OR upper([PersonType])='IN' OR upper([PersonType])='VC' OR upper([PersonType])='SC')))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesOrderHeader] ADD CONSTRAINT [CK_SalesOrderHeader_Freight] CHECK (([Freight]>=(0.00)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesOrderHeader] ADD CONSTRAINT [CK_SalesOrderHeader_Status] CHECK (([Status]>=(0) AND [Status]<=(8)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesOrderHeader] ADD CONSTRAINT [CK_SalesOrderHeader_DueDate] CHECK (([DueDate]>=[OrderDate]))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesOrderHeader] ADD CONSTRAINT [CK_SalesOrderHeader_ShipDate] CHECK (([ShipDate]>=[OrderDate] OR [ShipDate] IS NULL))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesOrderHeader] ADD CONSTRAINT [CK_SalesOrderHeader_SubTotal] CHECK (([SubTotal]>=(0.00)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesOrderHeader] ADD CONSTRAINT [CK_SalesOrderHeader_TaxAmt] CHECK (([TaxAmt]>=(0.00)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[WorkOrderRouting] ADD CONSTRAINT [CK_WorkOrderRouting_ScheduledEndDate] CHECK (([ScheduledEndDate]>=[ScheduledStartDate]))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[WorkOrderRouting] ADD CONSTRAINT [CK_WorkOrderRouting_ActualEndDate] CHECK (([ActualEndDate]>=[ActualStartDate] OR [ActualEndDate] IS NULL OR [ActualStartDate] IS NULL))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[WorkOrderRouting] ADD CONSTRAINT [CK_WorkOrderRouting_ActualResourceHrs] CHECK (([ActualResourceHrs]>=(0.0000)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[WorkOrderRouting] ADD CONSTRAINT [CK_WorkOrderRouting_PlannedCost] CHECK (([PlannedCost]>(0.00)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[WorkOrderRouting] ADD CONSTRAINT [CK_WorkOrderRouting_ActualCost] CHECK (([ActualCost]>(0.00)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[WorkOrder] ADD CONSTRAINT [CK_WorkOrder_OrderQty] CHECK (([OrderQty]>(0)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[WorkOrder] ADD CONSTRAINT [CK_WorkOrder_ScrappedQty] CHECK (([ScrappedQty]>=(0)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[WorkOrder] ADD CONSTRAINT [CK_WorkOrder_EndDate] CHECK (([EndDate]>=[StartDate] OR [EndDate] IS NULL))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[TransactionHistoryArchive] ADD CONSTRAINT [CK_TransactionHistoryArchive_TransactionType] CHECK ((upper([TransactionType])='P' OR upper([TransactionType])='S' OR upper([TransactionType])='W'))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Production].[TransactionHistory] ADD CONSTRAINT [CK_TransactionHistory_TransactionType] CHECK ((upper([TransactionType])='P' OR upper([TransactionType])='S' OR upper([TransactionType])='W'))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesOrderDetail] ADD CONSTRAINT [CK_SalesOrderDetail_OrderQty] CHECK (([OrderQty]>(0)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesOrderDetail] ADD CONSTRAINT [CK_SalesOrderDetail_UnitPrice] CHECK (([UnitPrice]>=(0.00)))
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
ALTER TABLE [Sales].[SalesOrderDetail] ADD CONSTRAINT [CK_SalesOrderDetail_UnitPriceDiscount] CHECK (([UnitPriceDiscount]>=(0.00)))
GO -- SQRIBE/GO;341e11
