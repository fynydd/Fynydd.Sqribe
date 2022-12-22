SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [dbo].[ErrorLog]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [dbo].[ErrorLog]
(
    [ErrorLogID] [int] IDENTITY(1,1) NOT NULL,
    [ErrorTime] [datetime] NOT NULL,
    [UserName] [nvarchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [ErrorNumber] [int] NOT NULL,
    [ErrorSeverity] [int] NULL,
    [ErrorState] [int] NULL,
    [ErrorProcedure] [nvarchar](126) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [ErrorLine] [int] NULL,
    [ErrorMessage] [nvarchar](4000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [dbo].[AWBuildVersion]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [dbo].[AWBuildVersion]
(
    [SystemInformationID] [tinyint] IDENTITY(1,1) NOT NULL,
    [Database Version] [nvarchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [VersionDate] [datetime] NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [HumanResources].[Shift]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [HumanResources].[Shift]
(
    [ShiftID] [tinyint] IDENTITY(1,1) NOT NULL,
    [Name] [dbo].[Name] NOT NULL,
    [StartTime] [time](7) NOT NULL,
    [EndTime] [time](7) NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Person].[PhoneNumberType]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Person].[PhoneNumberType]
(
    [PhoneNumberTypeID] [int] IDENTITY(1,1) NOT NULL,
    [Name] [dbo].[Name] NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Sales].[ShoppingCartItem]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Sales].[ShoppingCartItem]
(
    [ShoppingCartItemID] [int] IDENTITY(1,1) NOT NULL,
    [ShoppingCartID] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [Quantity] [int] NOT NULL,
    [ProductID] [int] NOT NULL,
    [DateCreated] [datetime] NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Production].[ProductReview]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Production].[ProductReview]
(
    [ProductReviewID] [int] IDENTITY(1,1) NOT NULL,
    [ProductID] [int] NOT NULL,
    [ReviewerName] [dbo].[Name] NOT NULL,
    [ReviewDate] [datetime] NOT NULL,
    [EmailAddress] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [Rating] [int] NOT NULL,
    [Comments] [nvarchar](3850) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Production].[ProductCategory]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Production].[ProductCategory]
(
    [ProductCategoryID] [int] IDENTITY(1,1) NOT NULL,
    [Name] [dbo].[Name] NOT NULL,
    [rowguid] [uniqueidentifier] ROWGUIDCOL NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Production].[Illustration]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Production].[Illustration]
(
    [IllustrationID] [int] IDENTITY(1,1) NOT NULL,
    [Diagram] xml NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Purchasing].[ShipMethod]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Purchasing].[ShipMethod]
(
    [ShipMethodID] [int] IDENTITY(1,1) NOT NULL,
    [Name] [dbo].[Name] NOT NULL,
    [ShipBase] [money] NOT NULL,
    [ShipRate] [money] NOT NULL,
    [rowguid] [uniqueidentifier] ROWGUIDCOL NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Person].[AddressType]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Person].[AddressType]
(
    [AddressTypeID] [int] IDENTITY(1,1) NOT NULL,
    [Name] [dbo].[Name] NOT NULL,
    [rowguid] [uniqueidentifier] ROWGUIDCOL NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Production].[ProductModelIllustration]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Production].[ProductModelIllustration]
(
    [ProductModelID] [int] NOT NULL,
    [IllustrationID] [int] NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Production].[Culture]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Production].[Culture]
(
    [CultureID] [nchar](6) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [Name] [dbo].[Name] NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Sales].[SalesReason]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Sales].[SalesReason]
(
    [SalesReasonID] [int] IDENTITY(1,1) NOT NULL,
    [Name] [dbo].[Name] NOT NULL,
    [ReasonType] [dbo].[Name] NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Sales].[SalesTerritory]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Sales].[SalesTerritory]
(
    [TerritoryID] [int] IDENTITY(1,1) NOT NULL,
    [Name] [dbo].[Name] NOT NULL,
    [CountryRegionCode] [nvarchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [Group] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [SalesYTD] [money] NOT NULL,
    [SalesLastYear] [money] NOT NULL,
    [CostYTD] [money] NOT NULL,
    [CostLastYear] [money] NOT NULL,
    [rowguid] [uniqueidentifier] ROWGUIDCOL NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Production].[Document]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Production].[Document]
(
    [DocumentNode] [hierarchyid] NOT NULL,
    [DocumentLevel] AS (''),
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

PRINT N'CREATE TABLE [HumanResources].[JobCandidate]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [HumanResources].[JobCandidate]
(
    [JobCandidateID] [int] IDENTITY(1,1) NOT NULL,
    [BusinessEntityID] [int] NULL,
    [Resume] [xml](CONTENT [HumanResources].[HRResumeSchemaCollection]) NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Production].[Location]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Production].[Location]
(
    [LocationID] [smallint] IDENTITY(1,1) NOT NULL,
    [Name] [dbo].[Name] NOT NULL,
    [CostRate] [smallmoney] NOT NULL,
    [Availability] [decimal](8,2) NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [HumanResources].[Department]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [HumanResources].[Department]
(
    [DepartmentID] [smallint] IDENTITY(1,1) NOT NULL,
    [Name] [dbo].[Name] NOT NULL,
    [GroupName] [dbo].[Name] NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Sales].[SpecialOffer]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Sales].[SpecialOffer]
(
    [SpecialOfferID] [int] IDENTITY(1,1) NOT NULL,
    [Description] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [DiscountPct] [smallmoney] NOT NULL,
    [Type] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [Category] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [StartDate] [datetime] NOT NULL,
    [EndDate] [datetime] NOT NULL,
    [MinQty] [int] NOT NULL,
    [MaxQty] [int] NULL,
    [rowguid] [uniqueidentifier] ROWGUIDCOL NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Production].[ScrapReason]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Production].[ScrapReason]
(
    [ScrapReasonID] [smallint] IDENTITY(1,1) NOT NULL,
    [Name] [dbo].[Name] NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Sales].[SalesTerritoryHistory]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Sales].[SalesTerritoryHistory]
(
    [BusinessEntityID] [int] NOT NULL,
    [TerritoryID] [int] NOT NULL,
    [StartDate] [datetime] NOT NULL,
    [EndDate] [datetime] NULL,
    [rowguid] [uniqueidentifier] ROWGUIDCOL NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Sales].[SalesPerson]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Sales].[SalesPerson]
(
    [BusinessEntityID] [int] NOT NULL,
    [TerritoryID] [int] NULL,
    [SalesQuota] [money] NULL,
    [Bonus] [money] NOT NULL,
    [CommissionPct] [smallmoney] NOT NULL,
    [SalesYTD] [money] NOT NULL,
    [SalesLastYear] [money] NOT NULL,
    [rowguid] [uniqueidentifier] ROWGUIDCOL NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Person].[ContactType]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Person].[ContactType]
(
    [ContactTypeID] [int] IDENTITY(1,1) NOT NULL,
    [Name] [dbo].[Name] NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Sales].[SalesTaxRate]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Sales].[SalesTaxRate]
(
    [SalesTaxRateID] [int] IDENTITY(1,1) NOT NULL,
    [StateProvinceID] [int] NOT NULL,
    [TaxType] [tinyint] NOT NULL,
    [TaxRate] [smallmoney] NOT NULL,
    [Name] [dbo].[Name] NOT NULL,
    [rowguid] [uniqueidentifier] ROWGUIDCOL NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Production].[ProductDocument]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Production].[ProductDocument]
(
    [ProductID] [int] NOT NULL,
    [DocumentNode] [hierarchyid] NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Production].[ProductSubcategory]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Production].[ProductSubcategory]
(
    [ProductSubcategoryID] [int] IDENTITY(1,1) NOT NULL,
    [ProductCategoryID] [int] NOT NULL,
    [Name] [dbo].[Name] NOT NULL,
    [rowguid] [uniqueidentifier] ROWGUIDCOL NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Production].[UnitMeasure]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Production].[UnitMeasure]
(
    [UnitMeasureCode] [nchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [Name] [dbo].[Name] NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Production].[ProductPhoto]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Production].[ProductPhoto]
(
    [ProductPhotoID] [int] IDENTITY(1,1) NOT NULL,
    [ThumbNailPhoto] [varbinary](max) NULL,
    [ThumbnailPhotoFileName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [LargePhoto] [varbinary](max) NULL,
    [LargePhotoFileName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Purchasing].[Vendor]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Purchasing].[Vendor]
(
    [BusinessEntityID] [int] NOT NULL,
    [AccountNumber] [dbo].[AccountNumber] NOT NULL,
    [Name] [dbo].[Name] NOT NULL,
    [CreditRating] [tinyint] NOT NULL,
    [PreferredVendorStatus] [dbo].[Flag] NOT NULL,
    [ActiveFlag] [dbo].[Flag] NOT NULL,
    [PurchasingWebServiceURL] [nvarchar](1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Sales].[Currency]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Sales].[Currency]
(
    [CurrencyCode] [nchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [Name] [dbo].[Name] NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Sales].[CountryRegionCurrency]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Sales].[CountryRegionCurrency]
(
    [CountryRegionCode] [nvarchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [CurrencyCode] [nchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Production].[ProductModel]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Production].[ProductModel]
(
    [ProductModelID] [int] IDENTITY(1,1) NOT NULL,
    [Name] [dbo].[Name] NOT NULL,
    [CatalogDescription] [xml](CONTENT [Production].[ProductDescriptionSchemaCollection]) NULL,
    [Instructions] [xml](CONTENT [Production].[ManuInstructionsSchemaCollection]) NULL,
    [rowguid] [uniqueidentifier] ROWGUIDCOL NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Sales].[SalesPersonQuotaHistory]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Sales].[SalesPersonQuotaHistory]
(
    [BusinessEntityID] [int] NOT NULL,
    [QuotaDate] [datetime] NOT NULL,
    [SalesQuota] [money] NOT NULL,
    [rowguid] [uniqueidentifier] ROWGUIDCOL NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Person].[StateProvince]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Person].[StateProvince]
(
    [StateProvinceID] [int] IDENTITY(1,1) NOT NULL,
    [StateProvinceCode] [nchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [CountryRegionCode] [nvarchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [IsOnlyStateProvinceFlag] [dbo].[Flag] NOT NULL,
    [Name] [dbo].[Name] NOT NULL,
    [TerritoryID] [int] NOT NULL,
    [rowguid] [uniqueidentifier] ROWGUIDCOL NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Person].[CountryRegion]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Person].[CountryRegion]
(
    [CountryRegionCode] [nvarchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [Name] [dbo].[Name] NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
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
    [OrganizationLevel] AS (''),
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

PRINT N'CREATE TABLE [HumanResources].[EmployeeDepartmentHistory]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [HumanResources].[EmployeeDepartmentHistory]
(
    [BusinessEntityID] [int] NOT NULL,
    [DepartmentID] [smallint] NOT NULL,
    [ShiftID] [tinyint] NOT NULL,
    [StartDate] [date] NOT NULL,
    [EndDate] [date] NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [HumanResources].[EmployeePayHistory]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [HumanResources].[EmployeePayHistory]
(
    [BusinessEntityID] [int] NOT NULL,
    [RateChangeDate] [datetime] NOT NULL,
    [Rate] [money] NOT NULL,
    [PayFrequency] [tinyint] NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Production].[ProductCostHistory]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Production].[ProductCostHistory]
(
    [ProductID] [int] NOT NULL,
    [StartDate] [datetime] NOT NULL,
    [EndDate] [datetime] NULL,
    [StandardCost] [money] NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Production].[ProductListPriceHistory]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Production].[ProductListPriceHistory]
(
    [ProductID] [int] NOT NULL,
    [StartDate] [datetime] NOT NULL,
    [EndDate] [datetime] NULL,
    [ListPrice] [money] NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Purchasing].[ProductVendor]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Purchasing].[ProductVendor]
(
    [ProductID] [int] NOT NULL,
    [BusinessEntityID] [int] NOT NULL,
    [AverageLeadTime] [int] NOT NULL,
    [StandardPrice] [money] NOT NULL,
    [LastReceiptCost] [money] NULL,
    [LastReceiptDate] [datetime] NULL,
    [MinOrderQty] [int] NOT NULL,
    [MaxOrderQty] [int] NOT NULL,
    [OnOrderQty] [int] NULL,
    [UnitMeasureCode] [nchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Production].[ProductProductPhoto]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Production].[ProductProductPhoto]
(
    [ProductID] [int] NOT NULL,
    [ProductPhotoID] [int] NOT NULL,
    [Primary] [dbo].[Flag] NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Production].[Product]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Production].[Product]
(
    [ProductID] [int] IDENTITY(1,1) NOT NULL,
    [Name] [dbo].[Name] NOT NULL,
    [ProductNumber] [nvarchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [MakeFlag] [dbo].[Flag] NOT NULL,
    [FinishedGoodsFlag] [dbo].[Flag] NOT NULL,
    [Color] [nvarchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [SafetyStockLevel] [smallint] NOT NULL,
    [ReorderPoint] [smallint] NOT NULL,
    [StandardCost] [money] NOT NULL,
    [ListPrice] [money] NOT NULL,
    [Size] [nvarchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [SizeUnitMeasureCode] [nchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [WeightUnitMeasureCode] [nchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [Weight] [decimal](8,2) NULL,
    [DaysToManufacture] [int] NOT NULL,
    [ProductLine] [nchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [Class] [nchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [Style] [nchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [ProductSubcategoryID] [int] NULL,
    [ProductModelID] [int] NULL,
    [SellStartDate] [datetime] NOT NULL,
    [SellEndDate] [datetime] NULL,
    [DiscontinuedDate] [datetime] NULL,
    [rowguid] [uniqueidentifier] ROWGUIDCOL NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Sales].[SpecialOfferProduct]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Sales].[SpecialOfferProduct]
(
    [SpecialOfferID] [int] NOT NULL,
    [ProductID] [int] NOT NULL,
    [rowguid] [uniqueidentifier] ROWGUIDCOL NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Sales].[Store]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Sales].[Store]
(
    [BusinessEntityID] [int] NOT NULL,
    [Name] [dbo].[Name] NOT NULL,
    [SalesPersonID] [int] NULL,
    [Demographics] [xml](CONTENT [Sales].[StoreSurveySchemaCollection]) NULL,
    [rowguid] [uniqueidentifier] ROWGUIDCOL NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Production].[ProductDescription]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Production].[ProductDescription]
(
    [ProductDescriptionID] [int] IDENTITY(1,1) NOT NULL,
    [Description] [nvarchar](400) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [rowguid] [uniqueidentifier] ROWGUIDCOL NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Production].[ProductModelProductDescriptionCulture]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Production].[ProductModelProductDescriptionCulture]
(
    [ProductModelID] [int] NOT NULL,
    [ProductDescriptionID] [int] NOT NULL,
    [CultureID] [nchar](6) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Person].[BusinessEntityContact]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Person].[BusinessEntityContact]
(
    [BusinessEntityID] [int] NOT NULL,
    [PersonID] [int] NOT NULL,
    [ContactTypeID] [int] NOT NULL,
    [rowguid] [uniqueidentifier] ROWGUIDCOL NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Production].[ProductInventory]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Production].[ProductInventory]
(
    [ProductID] [int] NOT NULL,
    [LocationID] [smallint] NOT NULL,
    [Shelf] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [Bin] [tinyint] NOT NULL,
    [Quantity] [smallint] NOT NULL,
    [rowguid] [uniqueidentifier] ROWGUIDCOL NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [dbo].[DatabaseLog]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [dbo].[DatabaseLog]
(
    [DatabaseLogID] [int] IDENTITY(1,1) NOT NULL,
    [PostTime] [datetime] NOT NULL,
    [DatabaseUser] [nvarchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [Event] [nvarchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [Schema] [nvarchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [Object] [nvarchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [TSQL] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [XmlEvent] xml NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Production].[BillOfMaterials]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Production].[BillOfMaterials]
(
    [BillOfMaterialsID] [int] IDENTITY(1,1) NOT NULL,
    [ProductAssemblyID] [int] NULL,
    [ComponentID] [int] NOT NULL,
    [StartDate] [datetime] NOT NULL,
    [EndDate] [datetime] NULL,
    [UnitMeasureCode] [nchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [BOMLevel] [smallint] NOT NULL,
    [PerAssemblyQty] [decimal](8,2) NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
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
    [TotalDue] AS (''),
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
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
    [LineTotal] AS (''),
    [ReceivedQty] [decimal](8,2) NOT NULL,
    [RejectedQty] [decimal](8,2) NOT NULL,
    [StockedQty] AS (''),
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Sales].[CurrencyRate]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Sales].[CurrencyRate]
(
    [CurrencyRateID] [int] IDENTITY(1,1) NOT NULL,
    [CurrencyRateDate] [datetime] NOT NULL,
    [FromCurrencyCode] [nchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [ToCurrencyCode] [nchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [AverageRate] [money] NOT NULL,
    [EndOfDayRate] [money] NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Sales].[PersonCreditCard]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Sales].[PersonCreditCard]
(
    [BusinessEntityID] [int] NOT NULL,
    [CreditCardID] [int] NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Sales].[CreditCard]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Sales].[CreditCard]
(
    [CreditCardID] [int] IDENTITY(1,1) NOT NULL,
    [CardType] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [CardNumber] [nvarchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [ExpMonth] [tinyint] NOT NULL,
    [ExpYear] [smallint] NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Person].[Address]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Person].[Address]
(
    [AddressID] [int] IDENTITY(1,1) NOT NULL,
    [AddressLine1] [nvarchar](60) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [AddressLine2] [nvarchar](60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [City] [nvarchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [StateProvinceID] [int] NOT NULL,
    [PostalCode] [nvarchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [SpatialLocation] [geography] NULL,
    [rowguid] [uniqueidentifier] ROWGUIDCOL NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Person].[BusinessEntityAddress]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Person].[BusinessEntityAddress]
(
    [BusinessEntityID] [int] NOT NULL,
    [AddressID] [int] NOT NULL,
    [AddressTypeID] [int] NOT NULL,
    [rowguid] [uniqueidentifier] ROWGUIDCOL NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
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
    [AccountNumber] AS (''),
    [rowguid] [uniqueidentifier] ROWGUIDCOL NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Person].[EmailAddress]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Person].[EmailAddress]
(
    [BusinessEntityID] [int] NOT NULL,
    [EmailAddressID] [int] IDENTITY(1,1) NOT NULL,
    [EmailAddress] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [rowguid] [uniqueidentifier] ROWGUIDCOL NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Person].[Password]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Person].[Password]
(
    [BusinessEntityID] [int] NOT NULL,
    [PasswordHash] [varchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [PasswordSalt] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [rowguid] [uniqueidentifier] ROWGUIDCOL NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Person].[Person]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Person].[Person]
(
    [BusinessEntityID] [int] NOT NULL,
    [PersonType] [nchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [NameStyle] [dbo].[NameStyle] NOT NULL,
    [Title] [nvarchar](8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [FirstName] [dbo].[Name] NOT NULL,
    [MiddleName] [dbo].[Name] NULL,
    [LastName] [dbo].[Name] NOT NULL,
    [Suffix] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [EmailPromotion] [int] NOT NULL,
    [AdditionalContactInfo] [xml](CONTENT [Person].[AdditionalContactInfoSchemaCollection]) NULL,
    [Demographics] [xml](CONTENT [Person].[IndividualSurveySchemaCollection]) NULL,
    [rowguid] [uniqueidentifier] ROWGUIDCOL NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Person].[PersonPhone]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Person].[PersonPhone]
(
    [BusinessEntityID] [int] NOT NULL,
    [PhoneNumber] [dbo].[Phone] NOT NULL,
    [PhoneNumberTypeID] [int] NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Person].[BusinessEntity]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Person].[BusinessEntity]
(
    [BusinessEntityID] [int] IDENTITY(1,1) NOT NULL,
    [rowguid] [uniqueidentifier] ROWGUIDCOL NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Sales].[SalesOrderHeaderSalesReason]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Sales].[SalesOrderHeaderSalesReason]
(
    [SalesOrderID] [int] NOT NULL,
    [SalesReasonID] [int] NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
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
    [SalesOrderNumber] AS (''),
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
    [TotalDue] AS (''),
    [Comment] [nvarchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [rowguid] [uniqueidentifier] ROWGUIDCOL NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Production].[WorkOrderRouting]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Production].[WorkOrderRouting]
(
    [WorkOrderID] [int] NOT NULL,
    [ProductID] [int] NOT NULL,
    [OperationSequence] [smallint] NOT NULL,
    [LocationID] [smallint] NOT NULL,
    [ScheduledStartDate] [datetime] NOT NULL,
    [ScheduledEndDate] [datetime] NOT NULL,
    [ActualStartDate] [datetime] NULL,
    [ActualEndDate] [datetime] NULL,
    [ActualResourceHrs] [decimal](9,4) NULL,
    [PlannedCost] [money] NOT NULL,
    [ActualCost] [money] NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Production].[WorkOrder]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Production].[WorkOrder]
(
    [WorkOrderID] [int] IDENTITY(1,1) NOT NULL,
    [ProductID] [int] NOT NULL,
    [OrderQty] [int] NOT NULL,
    [StockedQty] AS (''),
    [ScrappedQty] [smallint] NOT NULL,
    [StartDate] [datetime] NOT NULL,
    [EndDate] [datetime] NULL,
    [DueDate] [datetime] NOT NULL,
    [ScrapReasonID] [smallint] NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Production].[TransactionHistoryArchive]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Production].[TransactionHistoryArchive]
(
    [TransactionID] [int] NOT NULL,
    [ProductID] [int] NOT NULL,
    [ReferenceOrderID] [int] NOT NULL,
    [ReferenceOrderLineID] [int] NOT NULL,
    [TransactionDate] [datetime] NOT NULL,
    [TransactionType] [nchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [Quantity] [int] NOT NULL,
    [ActualCost] [money] NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11

PRINT N'CREATE TABLE [Production].[TransactionHistory]'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TABLE [Production].[TransactionHistory]
(
    [TransactionID] [int] IDENTITY(100000,1) NOT NULL,
    [ProductID] [int] NOT NULL,
    [ReferenceOrderID] [int] NOT NULL,
    [ReferenceOrderLineID] [int] NOT NULL,
    [TransactionDate] [datetime] NOT NULL,
    [TransactionType] [nchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [Quantity] [int] NOT NULL,
    [ActualCost] [money] NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
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
    [LineTotal] AS (''),
    [rowguid] [uniqueidentifier] ROWGUIDCOL NOT NULL,
    [ModifiedDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;341e11
