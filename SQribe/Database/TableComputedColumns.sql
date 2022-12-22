SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;341e11

DROP TABLE [Production].[Document];
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Production].[Document]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Production].[Document]
(
    [DocumentNode] [hierarchyid] NOT NULL,
    [DocumentLevel] AS ([DocumentNode].[GetLevel]()),
    [Title] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [Owner] [int] NOT NULL,
    [FolderFlag] [bit] NOT NULL,
    [FileName] [nvarchar](400) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [FileExtension] [nvarchar](8) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [Revision] [nchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [ChangeNumber] [int] NOT NULL,
    [Status] [tinyint] NOT NULL,
    [DocumentSummary] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [Document] [varbinary](max) NULL,
    [rowguid] [uniqueidentifier] ROWGUIDCOL NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

DROP TABLE [HumanResources].[Employee];
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [HumanResources].[Employee]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [HumanResources].[Employee]
(
    [BusinessEntityID] [int] NOT NULL,
    [NationalIDNumber] [nvarchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [LoginID] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [OrganizationNode] [hierarchyid] NULL,
    [OrganizationLevel] AS ([OrganizationNode].[GetLevel]()),
    [JobTitle] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [BirthDate] [date] NOT NULL,
    [MaritalStatus] [nchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [Gender] [nchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [HireDate] [date] NOT NULL,
    [SalariedFlag] [dbo].[Flag] NOT NULL,
    [VacationHours] [smallint] NOT NULL,
    [SickLeaveHours] [smallint] NOT NULL,
    [CurrentFlag] [dbo].[Flag] NOT NULL,
    [rowguid] [uniqueidentifier] ROWGUIDCOL NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

DROP TABLE [Purchasing].[PurchaseOrderHeader];
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Purchasing].[PurchaseOrderHeader]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Purchasing].[PurchaseOrderHeader]
(
    [PurchaseOrderID] [int] IDENTITY(1,1) NOT NULL,
    [RevisionNumber] [tinyint] NOT NULL,
    [Status] [tinyint] NOT NULL,
    [EmployeeID] [int] NOT NULL,
    [VendorID] [int] NOT NULL,
    [ShipMethodID] [int] NOT NULL,
    [OrderDate] [datetime] NOT NULL,
    [ShipDate] [datetime] NULL,
    [SubTotal] [money] NOT NULL,
    [TaxAmt] [money] NOT NULL,
    [Freight] [money] NOT NULL,
    [TotalDue] AS (isnull(([SubTotal]+[TaxAmt])+[Freight],(0))) PERSISTED,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

DROP TABLE [Purchasing].[PurchaseOrderDetail];
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Purchasing].[PurchaseOrderDetail]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Purchasing].[PurchaseOrderDetail]
(
    [PurchaseOrderID] [int] NOT NULL,
    [PurchaseOrderDetailID] [int] IDENTITY(1,1) NOT NULL,
    [DueDate] [datetime] NOT NULL,
    [OrderQty] [smallint] NOT NULL,
    [ProductID] [int] NOT NULL,
    [UnitPrice] [money] NOT NULL,
    [LineTotal] AS (isnull([OrderQty]*[UnitPrice],(0.00))),
    [ReceivedQty] [decimal](8,2) NOT NULL,
    [RejectedQty] [decimal](8,2) NOT NULL,
    [StockedQty] AS (isnull([ReceivedQty]-[RejectedQty],(0.00))),
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

DROP TABLE [Sales].[Customer];
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Sales].[Customer]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Sales].[Customer]
(
    [CustomerID] [int] IDENTITY(1,1) NOT NULL,
    [PersonID] [int] NULL,
    [StoreID] [int] NULL,
    [TerritoryID] [int] NULL,
    [AccountNumber] AS (isnull('AW'+[dbo].[ufnLeadingZeros]([CustomerID]),'')),
    [rowguid] [uniqueidentifier] ROWGUIDCOL NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

DROP TABLE [Sales].[SalesOrderHeader];
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Sales].[SalesOrderHeader]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Sales].[SalesOrderHeader]
(
    [SalesOrderID] [int] IDENTITY(1,1) NOT NULL,
    [RevisionNumber] [tinyint] NOT NULL,
    [OrderDate] [datetime] NOT NULL,
    [DueDate] [datetime] NOT NULL,
    [ShipDate] [datetime] NULL,
    [Status] [tinyint] NOT NULL,
    [OnlineOrderFlag] [dbo].[Flag] NOT NULL,
    [SalesOrderNumber] AS (isnull(N'SO'+CONVERT([nvarchar](23),[SalesOrderID]),N'*** ERROR ***')),
    [PurchaseOrderNumber] [dbo].[OrderNumber] NULL,
    [AccountNumber] [dbo].[AccountNumber] NULL,
    [CustomerID] [int] NOT NULL,
    [SalesPersonID] [int] NULL,
    [TerritoryID] [int] NULL,
    [BillToAddressID] [int] NOT NULL,
    [ShipToAddressID] [int] NOT NULL,
    [ShipMethodID] [int] NOT NULL,
    [CreditCardID] [int] NULL,
    [CreditCardApprovalCode] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [CurrencyRateID] [int] NULL,
    [SubTotal] [money] NOT NULL,
    [TaxAmt] [money] NOT NULL,
    [Freight] [money] NOT NULL,
    [TotalDue] AS (isnull(([SubTotal]+[TaxAmt])+[Freight],(0))),
    [Comment] [nvarchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [rowguid] [uniqueidentifier] ROWGUIDCOL NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

DROP TABLE [Production].[WorkOrder];
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Production].[WorkOrder]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Production].[WorkOrder]
(
    [WorkOrderID] [int] IDENTITY(1,1) NOT NULL,
    [ProductID] [int] NOT NULL,
    [OrderQty] [int] NOT NULL,
    [StockedQty] AS (isnull([OrderQty]-[ScrappedQty],(0))),
    [ScrappedQty] [smallint] NOT NULL,
    [StartDate] [datetime] NOT NULL,
    [EndDate] [datetime] NULL,
    [DueDate] [datetime] NOT NULL,
    [ScrapReasonID] [smallint] NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

DROP TABLE [Sales].[SalesOrderDetail];
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Sales].[SalesOrderDetail]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Sales].[SalesOrderDetail]
(
    [SalesOrderID] [int] NOT NULL,
    [SalesOrderDetailID] [int] IDENTITY(1,1) NOT NULL,
    [CarrierTrackingNumber] [nvarchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [OrderQty] [smallint] NOT NULL,
    [ProductID] [int] NOT NULL,
    [SpecialOfferID] [int] NOT NULL,
    [UnitPrice] [money] NOT NULL,
    [UnitPriceDiscount] [money] NOT NULL,
    [LineTotal] AS (isnull(([UnitPrice]*((1.0)-[UnitPriceDiscount]))*[OrderQty],(0.0))),
    [rowguid] [uniqueidentifier] ROWGUIDCOL NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11
