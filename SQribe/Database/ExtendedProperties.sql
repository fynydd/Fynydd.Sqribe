SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;341e11
PRINT N'CREATE extended properties'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'AdventureWorks 2016 Sample OLTP Database';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Database trigger to audit all of the DDL changes made to the AdventureWorks 2016 database.', @level0type = N'TRIGGER', @level0name = N'ddlDatabaseTriggerLog';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Contains objects related to employees and departments.', @level0type = N'Schema', @level0name = N'HumanResources';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Contains objects related to names and addresses of customers, vendors, and employees', @level0type = N'Schema', @level0name = N'Person';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Contains objects related to products, inventory, and manufacturing.', @level0type = N'Schema', @level0name = N'Production';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Contains objects related to vendors and purchase orders.', @level0type = N'Schema', @level0name = N'Purchasing';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Contains objects related to customers, sales orders, and sales territories.', @level0type = N'Schema', @level0name = N'Sales';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Collection of XML schemas for the AdditionalContactInfo column in the Person.Contact table.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'XML SCHEMA COLLECTION', @level1name = N'AdditionalContactInfoSchemaCollection';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Collection of XML schemas for the Demographics column in the Person.Person table.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'XML SCHEMA COLLECTION', @level1name = N'IndividualSurveySchemaCollection';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Collection of XML schemas for the Resume column in the HumanResources.JobCandidate table.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'XML SCHEMA COLLECTION', @level1name = N'HRResumeSchemaCollection';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Collection of XML schemas for the CatalogDescription column in the Production.ProductModel table.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'XML SCHEMA COLLECTION', @level1name = N'ProductDescriptionSchemaCollection';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Collection of XML schemas for the Instructions column in the Production.ProductModel table.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'XML SCHEMA COLLECTION', @level1name = N'ManuInstructionsSchemaCollection';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Collection of XML schemas for the Demographics column in the Sales.Store table.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'XML SCHEMA COLLECTION', @level1name = N'StoreSurveySchemaCollection';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Nonclustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DatabaseLog', @level2type = N'INDEX', @level2name = N'PK_DatabaseLog_DatabaseLogID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ErrorLog', @level2type = N'INDEX', @level2name = N'PK_ErrorLog_ErrorLogID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AWBuildVersion', @level2type = N'INDEX', @level2name = N'PK_AWBuildVersion_SystemInformationID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Output parameter for the stored procedure uspLogError. Contains the ErrorLogID value corresponding to the row inserted by uspLogError in the ErrorLog table.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'PROCEDURE', @level1name = N'uspLogError', @level2type = N'PARAMETER', @level2name = N'@ErrorLogID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Input parameter for the scalar function ufnLeadingZeros. Enter a valid integer.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'FUNCTION', @level1name = N'ufnLeadingZeros', @level2type = N'PARAMETER', @level2name = N'@Value';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Input parameter for the table value function ufnGetContactInformation. Enter a valid PersonID from the Person.Contact table.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'FUNCTION', @level1name = N'ufnGetContactInformation', @level2type = N'PARAMETER', @level2name = N'@PersonID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Input parameter for the scalar function ufnGetProductDealerPrice. Enter a valid ProductID from the Production.Product table.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'FUNCTION', @level1name = N'ufnGetProductDealerPrice', @level2type = N'PARAMETER', @level2name = N'@ProductID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Input parameter for the scalar function ufnGetProductDealerPrice. Enter a valid order date.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'FUNCTION', @level1name = N'ufnGetProductDealerPrice', @level2type = N'PARAMETER', @level2name = N'@OrderDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Input parameter for the scalar function ufnGetProductListPrice. Enter a valid ProductID from the Production.Product table.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'FUNCTION', @level1name = N'ufnGetProductListPrice', @level2type = N'PARAMETER', @level2name = N'@ProductID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Input parameter for the scalar function ufnGetProductListPrice. Enter a valid order date.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'FUNCTION', @level1name = N'ufnGetProductListPrice', @level2type = N'PARAMETER', @level2name = N'@OrderDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Input parameter for the scalar function ufnGetProductStandardCost. Enter a valid ProductID from the Production.Product table.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'FUNCTION', @level1name = N'ufnGetProductStandardCost', @level2type = N'PARAMETER', @level2name = N'@ProductID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Input parameter for the scalar function ufnGetProductStandardCost. Enter a valid order date.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'FUNCTION', @level1name = N'ufnGetProductStandardCost', @level2type = N'PARAMETER', @level2name = N'@OrderDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Input parameter for the scalar function ufnGetStock. Enter a valid ProductID from the Production.ProductInventory table.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'FUNCTION', @level1name = N'ufnGetStock', @level2type = N'PARAMETER', @level2name = N'@ProductID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Input parameter for the scalar function ufnGetDocumentStatusText. Enter a valid integer.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'FUNCTION', @level1name = N'ufnGetDocumentStatusText', @level2type = N'PARAMETER', @level2name = N'@Status';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Input parameter for the scalar function ufnGetPurchaseOrdertStatusText. Enter a valid integer.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'FUNCTION', @level1name = N'ufnGetPurchaseOrderStatusText', @level2type = N'PARAMETER', @level2name = N'@Status';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Input parameter for the scalar function ufnGetSalesOrderStatusText. Enter a valid integer.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'FUNCTION', @level1name = N'ufnGetSalesOrderStatusText', @level2type = N'PARAMETER', @level2name = N'@Status';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Input parameter for the stored procedure uspGetBillOfMaterials. Enter a valid ProductID from the Production.Product table.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'PROCEDURE', @level1name = N'uspGetBillOfMaterials', @level2type = N'PARAMETER', @level2name = N'@StartProductID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Input parameter for the stored procedure uspGetBillOfMaterials used to eliminate components not used after that date. Enter a valid date.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'PROCEDURE', @level1name = N'uspGetBillOfMaterials', @level2type = N'PARAMETER', @level2name = N'@CheckDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Input parameter for the stored procedure uspGetEmployeeManagers. Enter a valid BusinessEntityID from the HumanResources.Employee table.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'PROCEDURE', @level1name = N'uspGetEmployeeManagers', @level2type = N'PARAMETER', @level2name = N'@BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Input parameter for the stored procedure uspGetManagerEmployees. Enter a valid BusinessEntityID of the manager from the HumanResources.Employee table.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'PROCEDURE', @level1name = N'uspGetManagerEmployees', @level2type = N'PARAMETER', @level2name = N'@BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Input parameter for the stored procedure uspGetWhereUsedProductID. Enter a valid ProductID from the Production.Product table.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'PROCEDURE', @level1name = N'uspGetWhereUsedProductID', @level2type = N'PARAMETER', @level2name = N'@StartProductID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Input parameter for the stored procedure uspGetWhereUsedProductID used to eliminate components not used after that date. Enter a valid date.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'PROCEDURE', @level1name = N'uspGetWhereUsedProductID', @level2type = N'PARAMETER', @level2name = N'@CheckDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AWBuildVersion', @level2type = N'CONSTRAINT', @level2name = N'PK_AWBuildVersion_SystemInformationID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (nonclustered) constraint', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DatabaseLog', @level2type = N'CONSTRAINT', @level2name = N'PK_DatabaseLog_DatabaseLogID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Stored procedure using a recursive query to return the direct and indirect employees of the specified manager.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'PROCEDURE', @level1name = N'uspGetManagerEmployees';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Audit table tracking errors in the the AdventureWorks database that are caught by the CATCH block of a TRY...CATCH construct. Data is inserted by stored procedure dbo.uspLogError when it is executed from inside the CATCH block of a TRY...CATCH construct.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ErrorLog';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for ErrorLog records.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ErrorLog', @level2type = N'COLUMN', @level2name = N'ErrorLogID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'The date and time at which the error occurred.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ErrorLog', @level2type = N'COLUMN', @level2name = N'ErrorTime';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'The user who executed the batch in which the error occurred.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ErrorLog', @level2type = N'COLUMN', @level2name = N'UserName';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'The error number of the error that occurred.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ErrorLog', @level2type = N'COLUMN', @level2name = N'ErrorNumber';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'The severity of the error that occurred.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ErrorLog', @level2type = N'COLUMN', @level2name = N'ErrorSeverity';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'The state number of the error that occurred.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ErrorLog', @level2type = N'COLUMN', @level2name = N'ErrorState';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'The name of the stored procedure or trigger where the error occurred.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ErrorLog', @level2type = N'COLUMN', @level2name = N'ErrorProcedure';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'The line number at which the error occurred.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ErrorLog', @level2type = N'COLUMN', @level2name = N'ErrorLine';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'The message text of the error that occurred.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ErrorLog', @level2type = N'COLUMN', @level2name = N'ErrorMessage';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Stored procedure using a recursive query to return all components or assemblies that directly or indirectly use the specified ProductID.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'PROCEDURE', @level1name = N'uspGetWhereUsedProductID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ErrorLog', @level2type = N'CONSTRAINT', @level2name = N'DF_ErrorLog_ErrorTime';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ErrorLog', @level2type = N'CONSTRAINT', @level2name = N'PK_ErrorLog_ErrorLogID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Prints error information about the error that caused execution to jump to the CATCH block of a TRY...CATCH construct. Should be executed from within the scope of a CATCH block otherwise it will return without printing any error information.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'PROCEDURE', @level1name = N'uspPrintError';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Logs error information in the ErrorLog table about the error that caused execution to jump to the CATCH block of a TRY...CATCH construct. Should be executed from within the scope of a CATCH block otherwise it will return without inserting error information.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'PROCEDURE', @level1name = N'uspLogError';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Scalar function used by the Sales.Customer table to help set the account number.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'FUNCTION', @level1name = N'ufnLeadingZeros';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Scalar function used in the uSalesOrderHeader trigger to set the ending account date.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'FUNCTION', @level1name = N'ufnGetAccountingStartDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Scalar function used in the uSalesOrderHeader trigger to set the starting account date.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'FUNCTION', @level1name = N'ufnGetAccountingEndDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Table value function returning the first name, last name, job title and contact type for a given contact.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'FUNCTION', @level1name = N'ufnGetContactInformation';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Scalar function returning the dealer price for a given product on a particular order date.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'FUNCTION', @level1name = N'ufnGetProductDealerPrice';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Scalar function returning the list price for a given product on a particular order date.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'FUNCTION', @level1name = N'ufnGetProductListPrice';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Scalar function returning the standard cost for a given product on a particular order date.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'FUNCTION', @level1name = N'ufnGetProductStandardCost';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Scalar function returning the quantity of inventory in LocationID 6 (Miscellaneous Storage)for a specified ProductID.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'FUNCTION', @level1name = N'ufnGetStock';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Scalar function returning the text representation of the Status column in the Document table.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'FUNCTION', @level1name = N'ufnGetDocumentStatusText';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Scalar function returning the text representation of the Status column in the PurchaseOrderHeader table.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'FUNCTION', @level1name = N'ufnGetPurchaseOrderStatusText';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Scalar function returning the text representation of the Status column in the SalesOrderHeader table.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'FUNCTION', @level1name = N'ufnGetSalesOrderStatusText';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Stored procedure using a recursive query to return a multi-level bill of material for the specified ProductID.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'PROCEDURE', @level1name = N'uspGetBillOfMaterials';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Audit table tracking all DDL changes made to the AdventureWorks database. Data is captured by the database trigger ddlDatabaseTriggerLog.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DatabaseLog';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for DatabaseLog records.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DatabaseLog', @level2type = N'COLUMN', @level2name = N'DatabaseLogID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'The date and time the DDL change occurred.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DatabaseLog', @level2type = N'COLUMN', @level2name = N'PostTime';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'The user who implemented the DDL change.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DatabaseLog', @level2type = N'COLUMN', @level2name = N'DatabaseUser';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'The type of DDL statement that was executed.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DatabaseLog', @level2type = N'COLUMN', @level2name = N'Event';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'The schema to which the changed object belongs.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DatabaseLog', @level2type = N'COLUMN', @level2name = N'Schema';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'The object that was changed by the DDL statment.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DatabaseLog', @level2type = N'COLUMN', @level2name = N'Object';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'The exact Transact-SQL statement that was executed.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DatabaseLog', @level2type = N'COLUMN', @level2name = N'TSQL';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'The raw XML data generated by database trigger.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DatabaseLog', @level2type = N'COLUMN', @level2name = N'XmlEvent';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Stored procedure using a recursive query to return the direct and indirect managers of the specified employee.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'PROCEDURE', @level1name = N'uspGetEmployeeManagers';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Current version number of the AdventureWorks 2016 sample database. ', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AWBuildVersion';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for AWBuildVersion records.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AWBuildVersion', @level2type = N'COLUMN', @level2name = N'SystemInformationID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Version number of the database in 9.yy.mm.dd.00 format.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AWBuildVersion', @level2type = N'COLUMN', @level2name = N'Database Version';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AWBuildVersion', @level2type = N'COLUMN', @level2name = N'VersionDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AWBuildVersion', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AWBuildVersion', @level2type = N'CONSTRAINT', @level2name = N'DF_AWBuildVersion_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Person.BusinessEntityID.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'CONSTRAINT', @level2name = N'FK_Employee_Person_BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Department.DepartmentID.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'EmployeeDepartmentHistory', @level2type = N'CONSTRAINT', @level2name = N'FK_EmployeeDepartmentHistory_Department_DepartmentID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Employee.EmployeeID.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'EmployeeDepartmentHistory', @level2type = N'CONSTRAINT', @level2name = N'FK_EmployeeDepartmentHistory_Employee_BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Shift.ShiftID', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'EmployeeDepartmentHistory', @level2type = N'CONSTRAINT', @level2name = N'FK_EmployeeDepartmentHistory_Shift_ShiftID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Employee.EmployeeID.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'EmployeePayHistory', @level2type = N'CONSTRAINT', @level2name = N'FK_EmployeePayHistory_Employee_BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Employee.EmployeeID.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'JobCandidate', @level2type = N'CONSTRAINT', @level2name = N'FK_JobCandidate_Employee_BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Updates the Employee table with the values specified in the input parameters for the given EmployeeID.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'PROCEDURE', @level1name = N'uspUpdateEmployeePersonalInfo';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Updates the Employee table with the values specified in the input parameters for the given BusinessEntityID.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'PROCEDURE', @level1name = N'uspUpdateEmployeeLogin';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Updates the Employee table and inserts a new row in the EmployeePayHistory table with the values specified in the input parameters.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'PROCEDURE', @level1name = N'uspUpdateEmployeeHireInfo';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Employee pay history.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'EmployeePayHistory';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Employee identification number. Foreign key to Employee.BusinessEntityID.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'EmployeePayHistory', @level2type = N'COLUMN', @level2name = N'BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date the change in pay is effective', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'EmployeePayHistory', @level2type = N'COLUMN', @level2name = N'RateChangeDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Salary hourly rate.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'EmployeePayHistory', @level2type = N'COLUMN', @level2name = N'Rate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'1 = Salary received monthly, 2 = Salary received biweekly', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'EmployeePayHistory', @level2type = N'COLUMN', @level2name = N'PayFrequency';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'EmployeePayHistory', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'EmployeePayHistory', @level2type = N'CONSTRAINT', @level2name = N'DF_EmployeePayHistory_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [PayFrequency]=(3) OR [PayFrequency]=(2) OR [PayFrequency]=(1)', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'EmployeePayHistory', @level2type = N'CONSTRAINT', @level2name = N'CK_EmployeePayHistory_PayFrequency';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Résumés submitted to Human Resources by job applicants.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'JobCandidate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for JobCandidate records.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'JobCandidate', @level2type = N'COLUMN', @level2name = N'JobCandidateID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Employee identification number if applicant was hired. Foreign key to Employee.BusinessEntityID.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'JobCandidate', @level2type = N'COLUMN', @level2name = N'BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Résumé in XML format.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'JobCandidate', @level2type = N'COLUMN', @level2name = N'Resume';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'JobCandidate', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [Rate] >= (6.50) AND [Rate] <= (200.00)', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'EmployeePayHistory', @level2type = N'CONSTRAINT', @level2name = N'CK_EmployeePayHistory_Rate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'JobCandidate', @level2type = N'CONSTRAINT', @level2name = N'DF_JobCandidate_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'INSTEAD OF DELETE trigger which keeps Employees from being deleted.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'TRIGGER', @level2name = N'dEmployee';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Employee names and addresses.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'VIEW', @level1name = N'vEmployee';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Returns employee name, title, and current department.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'VIEW', @level1name = N'vEmployeeDepartment';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Returns employee name and current and previous departments.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'VIEW', @level1name = N'vEmployeeDepartmentHistory';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Shift', @level2type = N'CONSTRAINT', @level2name = N'PK_Shift_ShiftID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Job candidate names and resumes.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'VIEW', @level1name = N'vJobCandidate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Displays the content from each employement history related element in the xml column Resume in the HumanResources.JobCandidate table. The content has been localized into French, Simplified Chinese and Thai. Some data may not display correctly unless supplemental language support is installed.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'VIEW', @level1name = N'vJobCandidateEmployment';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Displays the content from each education related element in the xml column Resume in the HumanResources.JobCandidate table. The content has been localized into French, Simplified Chinese and Thai. Some data may not display correctly unless supplemental language support is installed.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'VIEW', @level1name = N'vJobCandidateEducation';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Work shift lookup table.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Shift';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for Shift records.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Shift', @level2type = N'COLUMN', @level2name = N'ShiftID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Shift description.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Shift', @level2type = N'COLUMN', @level2name = N'Name';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Shift start time.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Shift', @level2type = N'COLUMN', @level2name = N'StartTime';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Shift end time.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Shift', @level2type = N'COLUMN', @level2name = N'EndTime';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Shift', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Shift', @level2type = N'CONSTRAINT', @level2name = N'DF_Shift_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 0', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'CONSTRAINT', @level2name = N'DF_Employee_VacationHours';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 0', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'CONSTRAINT', @level2name = N'DF_Employee_SickLeaveHours';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Department', @level2type = N'CONSTRAINT', @level2name = N'PK_Department_DepartmentID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 1 (TRUE)', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'CONSTRAINT', @level2name = N'DF_Employee_SalariedFlag';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Employee information such as salary, department, and title.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for Employee records.  Foreign key to BusinessEntity.BusinessEntityID.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'COLUMN', @level2name = N'BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique national identification number such as a social security number.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'COLUMN', @level2name = N'NationalIDNumber';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Network login.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'COLUMN', @level2name = N'LoginID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Where the employee is located in corporate hierarchy.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'COLUMN', @level2name = N'OrganizationNode';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'The depth of the employee in the corporate hierarchy.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'COLUMN', @level2name = N'OrganizationLevel';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Work title such as Buyer or Sales Representative.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'COLUMN', @level2name = N'JobTitle';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date of birth.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'COLUMN', @level2name = N'BirthDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'M = Married, S = Single', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'COLUMN', @level2name = N'MaritalStatus';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'M = Male, F = Female', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'COLUMN', @level2name = N'Gender';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Employee hired on this date.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'COLUMN', @level2name = N'HireDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Job classification. 0 = Hourly, not exempt from collective bargaining. 1 = Salaried, exempt from collective bargaining.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'COLUMN', @level2name = N'SalariedFlag';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Number of available vacation hours.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'COLUMN', @level2name = N'VacationHours';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Number of available sick leave hours.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'COLUMN', @level2name = N'SickLeaveHours';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'0 = Inactive, 1 = Active', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'COLUMN', @level2name = N'CurrentFlag';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'COLUMN', @level2name = N'rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Department', @level2type = N'CONSTRAINT', @level2name = N'DF_Department_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Lookup table containing the departments within the Adventure Works Cycles company.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Department';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for Department records.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Department', @level2type = N'COLUMN', @level2name = N'DepartmentID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Name of the department.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Department', @level2type = N'COLUMN', @level2name = N'Name';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Name of the group to which the department belongs.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Department', @level2type = N'COLUMN', @level2name = N'GroupName';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Department', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Input parameter for the stored procedure uspUpdateEmployeeHireInfo. Enter a valid BusinessEntityID from the Employee table.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'PROCEDURE', @level1name = N'uspUpdateEmployeeHireInfo', @level2type = N'PARAMETER', @level2name = N'@BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Input parameter for the stored procedure uspUpdateEmployeeHireInfo. Enter a title for the employee.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'PROCEDURE', @level1name = N'uspUpdateEmployeeHireInfo', @level2type = N'PARAMETER', @level2name = N'@JobTitle';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Input parameter for the stored procedure uspUpdateEmployeeHireInfo. Enter a hire date for the employee.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'PROCEDURE', @level1name = N'uspUpdateEmployeeHireInfo', @level2type = N'PARAMETER', @level2name = N'@HireDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Input parameter for the stored procedure uspUpdateEmployeeHireInfo. Enter the date the rate changed for the employee.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'PROCEDURE', @level1name = N'uspUpdateEmployeeHireInfo', @level2type = N'PARAMETER', @level2name = N'@RateChangeDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Input parameter for the stored procedure uspUpdateEmployeeHireInfo. Enter the new rate for the employee.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'PROCEDURE', @level1name = N'uspUpdateEmployeeHireInfo', @level2type = N'PARAMETER', @level2name = N'@Rate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Input parameter for the stored procedure uspUpdateEmployeeHireInfo. Enter the pay frequency for the employee.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'PROCEDURE', @level1name = N'uspUpdateEmployeeHireInfo', @level2type = N'PARAMETER', @level2name = N'@PayFrequency';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Input parameter for the stored procedure uspUpdateEmployeeHireInfo. Enter the current flag for the employee.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'PROCEDURE', @level1name = N'uspUpdateEmployeeHireInfo', @level2type = N'PARAMETER', @level2name = N'@CurrentFlag';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Input parameter for the stored procedure uspUpdateEmployeeLogin. Enter a valid EmployeeID from the Employee table.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'PROCEDURE', @level1name = N'uspUpdateEmployeeLogin', @level2type = N'PARAMETER', @level2name = N'@BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Input parameter for the stored procedure uspUpdateEmployeeHireInfo. Enter a valid ManagerID for the employee.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'PROCEDURE', @level1name = N'uspUpdateEmployeeLogin', @level2type = N'PARAMETER', @level2name = N'@OrganizationNode';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Input parameter for the stored procedure uspUpdateEmployeeHireInfo. Enter a valid login for the employee.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'PROCEDURE', @level1name = N'uspUpdateEmployeeLogin', @level2type = N'PARAMETER', @level2name = N'@LoginID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Input parameter for the stored procedure uspUpdateEmployeeHireInfo. Enter a title for the employee.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'PROCEDURE', @level1name = N'uspUpdateEmployeeLogin', @level2type = N'PARAMETER', @level2name = N'@JobTitle';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Input parameter for the stored procedure uspUpdateEmployeeHireInfo. Enter a hire date for the employee.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'PROCEDURE', @level1name = N'uspUpdateEmployeeLogin', @level2type = N'PARAMETER', @level2name = N'@HireDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Input parameter for the stored procedure uspUpdateEmployeeHireInfo. Enter the current flag for the employee.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'PROCEDURE', @level1name = N'uspUpdateEmployeeLogin', @level2type = N'PARAMETER', @level2name = N'@CurrentFlag';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Input parameter for the stored procedure uspUpdateEmployeePersonalInfo. Enter a valid BusinessEntityID from the HumanResources.Employee table.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'PROCEDURE', @level1name = N'uspUpdateEmployeePersonalInfo', @level2type = N'PARAMETER', @level2name = N'@BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Input parameter for the stored procedure uspUpdateEmployeeHireInfo. Enter a national ID for the employee.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'PROCEDURE', @level1name = N'uspUpdateEmployeePersonalInfo', @level2type = N'PARAMETER', @level2name = N'@NationalIDNumber';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Input parameter for the stored procedure uspUpdateEmployeeHireInfo. Enter a birth date for the employee.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'PROCEDURE', @level1name = N'uspUpdateEmployeePersonalInfo', @level2type = N'PARAMETER', @level2name = N'@BirthDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Input parameter for the stored procedure uspUpdateEmployeeHireInfo. Enter a marital status for the employee.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'PROCEDURE', @level1name = N'uspUpdateEmployeePersonalInfo', @level2type = N'PARAMETER', @level2name = N'@MaritalStatus';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Input parameter for the stored procedure uspUpdateEmployeeHireInfo. Enter a gender for the employee.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'PROCEDURE', @level1name = N'uspUpdateEmployeePersonalInfo', @level2type = N'PARAMETER', @level2name = N'@Gender';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 1', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'CONSTRAINT', @level2name = N'DF_Employee_CurrentFlag';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of NEWID()', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'CONSTRAINT', @level2name = N'DF_Employee_rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'CONSTRAINT', @level2name = N'DF_Employee_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'CONSTRAINT', @level2name = N'PK_Employee_BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [BirthDate] >= ''1930-01-01'' AND [BirthDate] <= dateadd(year,(-18),GETDATE())', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'CONSTRAINT', @level2name = N'CK_Employee_BirthDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'EmployeeDepartmentHistory', @level2type = N'CONSTRAINT', @level2name = N'PK_EmployeeDepartmentHistory_BusinessEntityID_StartDate_DepartmentID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [MaritalStatus]=''s'' OR [MaritalStatus]=''m'' OR [MaritalStatus]=''S'' OR [MaritalStatus]=''M''', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'CONSTRAINT', @level2name = N'CK_Employee_MaritalStatus';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'EmployeePayHistory', @level2type = N'CONSTRAINT', @level2name = N'PK_EmployeePayHistory_BusinessEntityID_RateChangeDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [HireDate] >= ''1996-07-01'' AND [HireDate] <= dateadd(day,(1),GETDATE())', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'CONSTRAINT', @level2name = N'CK_Employee_HireDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [Gender]=''f'' OR [Gender]=''m'' OR [Gender]=''F'' OR [Gender]=''M''', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'CONSTRAINT', @level2name = N'CK_Employee_Gender';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'JobCandidate', @level2type = N'CONSTRAINT', @level2name = N'PK_JobCandidate_JobCandidateID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [VacationHours] >= (-40) AND [VacationHours] <= (240)', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'CONSTRAINT', @level2name = N'CK_Employee_VacationHours';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [EndDate] >= [StartDate] OR [EndDate] IS NUL', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'EmployeeDepartmentHistory', @level2type = N'CONSTRAINT', @level2name = N'CK_EmployeeDepartmentHistory_EndDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'EmployeePayHistory', @level2type = N'INDEX', @level2name = N'PK_EmployeePayHistory_BusinessEntityID_RateChangeDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Employee department transfers.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'EmployeeDepartmentHistory';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Employee identification number. Foreign key to Employee.BusinessEntityID.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'EmployeeDepartmentHistory', @level2type = N'COLUMN', @level2name = N'BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Department in which the employee worked including currently. Foreign key to Department.DepartmentID.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'EmployeeDepartmentHistory', @level2type = N'COLUMN', @level2name = N'DepartmentID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Identifies which 8-hour shift the employee works. Foreign key to Shift.Shift.ID.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'EmployeeDepartmentHistory', @level2type = N'COLUMN', @level2name = N'ShiftID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date the employee started work in the department.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'EmployeeDepartmentHistory', @level2type = N'COLUMN', @level2name = N'StartDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date the employee left the department. NULL = Current department.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'EmployeeDepartmentHistory', @level2type = N'COLUMN', @level2name = N'EndDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'EmployeeDepartmentHistory', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [SickLeaveHours] >= (0) AND [SickLeaveHours] <= (120)', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'CONSTRAINT', @level2name = N'CK_Employee_SickLeaveHours';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'EmployeeDepartmentHistory', @level2type = N'CONSTRAINT', @level2name = N'DF_EmployeeDepartmentHistory_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'JobCandidate', @level2type = N'INDEX', @level2name = N'PK_JobCandidate_JobCandidateID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Nonclustered index.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'JobCandidate', @level2type = N'INDEX', @level2name = N'IX_JobCandidate_BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Shift', @level2type = N'INDEX', @level2name = N'PK_Shift_ShiftID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Shift', @level2type = N'INDEX', @level2name = N'AK_Shift_Name';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Shift', @level2type = N'INDEX', @level2name = N'AK_Shift_StartTime_EndTime';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'EmployeeDepartmentHistory', @level2type = N'INDEX', @level2name = N'PK_EmployeeDepartmentHistory_BusinessEntityID_StartDate_DepartmentID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Nonclustered index.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'EmployeeDepartmentHistory', @level2type = N'INDEX', @level2name = N'IX_EmployeeDepartmentHistory_DepartmentID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Nonclustered index.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'EmployeeDepartmentHistory', @level2type = N'INDEX', @level2name = N'IX_EmployeeDepartmentHistory_ShiftID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'INDEX', @level2name = N'PK_Employee_BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'INDEX', @level2name = N'IX_Employee_OrganizationNode';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'INDEX', @level2name = N'IX_Employee_OrganizationLevel_OrganizationNode';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'INDEX', @level2name = N'AK_Employee_LoginID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'INDEX', @level2name = N'AK_Employee_NationalIDNumber';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index. Used to support replication samples.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'INDEX', @level2name = N'AK_Employee_rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Department', @level2type = N'INDEX', @level2name = N'PK_Department_DepartmentID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index.', @level0type = N'Schema', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Department', @level2type = N'INDEX', @level2name = N'AK_Department_Name';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'CountryRegion', @level2type = N'INDEX', @level2name = N'PK_CountryRegion_CountryRegionCode';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'CountryRegion', @level2type = N'INDEX', @level2name = N'AK_CountryRegion_Name';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'ContactType', @level2type = N'INDEX', @level2name = N'PK_ContactType_ContactTypeID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'ContactType', @level2type = N'INDEX', @level2name = N'AK_ContactType_Name';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'EmailAddress', @level2type = N'INDEX', @level2name = N'PK_EmailAddress_BusinessEntityID_EmailAddressID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Nonclustered index.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'EmailAddress', @level2type = N'INDEX', @level2name = N'IX_EmailAddress_EmailAddress';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'BusinessEntity', @level2type = N'INDEX', @level2name = N'PK_BusinessEntity_BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index. Used to support replication samples.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'BusinessEntity', @level2type = N'INDEX', @level2name = N'AK_BusinessEntity_rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'BusinessEntityAddress', @level2type = N'INDEX', @level2name = N'PK_BusinessEntityAddress_BusinessEntityID_AddressID_AddressTypeID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index. Used to support replication samples.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'BusinessEntityAddress', @level2type = N'INDEX', @level2name = N'AK_BusinessEntityAddress_rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Nonclustered index.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'BusinessEntityAddress', @level2type = N'INDEX', @level2name = N'IX_BusinessEntityAddress_AddressID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Nonclustered index.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'BusinessEntityAddress', @level2type = N'INDEX', @level2name = N'IX_BusinessEntityAddress_AddressTypeID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'BusinessEntityContact', @level2type = N'INDEX', @level2name = N'PK_BusinessEntityContact_BusinessEntityID_PersonID_ContactTypeID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index. Used to support replication samples.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'BusinessEntityContact', @level2type = N'INDEX', @level2name = N'AK_BusinessEntityContact_rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Nonclustered index.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'BusinessEntityContact', @level2type = N'INDEX', @level2name = N'IX_BusinessEntityContact_PersonID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Nonclustered index.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'BusinessEntityContact', @level2type = N'INDEX', @level2name = N'IX_BusinessEntityContact_ContactTypeID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Password', @level2type = N'INDEX', @level2name = N'PK_Password_BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index on the view vStateProvinceCountryRegion.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'VIEW', @level1name = N'vStateProvinceCountryRegion', @level2type = N'INDEX', @level2name = N'IX_vStateProvinceCountryRegion';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Address', @level2type = N'INDEX', @level2name = N'PK_Address_AddressID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index. Used to support replication samples.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Address', @level2type = N'INDEX', @level2name = N'AK_Address_rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Nonclustered index.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Address', @level2type = N'INDEX', @level2name = N'IX_Address_AddressLine1_AddressLine2_City_StateProvinceID_PostalCode';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Nonclustered index.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Address', @level2type = N'INDEX', @level2name = N'IX_Address_StateProvinceID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'AddressType', @level2type = N'INDEX', @level2name = N'PK_AddressType_AddressTypeID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index. Used to support replication samples.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'AddressType', @level2type = N'INDEX', @level2name = N'AK_AddressType_rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'AddressType', @level2type = N'INDEX', @level2name = N'AK_AddressType_Name';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'StateProvince', @level2type = N'INDEX', @level2name = N'PK_StateProvince_StateProvinceID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'StateProvince', @level2type = N'INDEX', @level2name = N'AK_StateProvince_Name';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'StateProvince', @level2type = N'INDEX', @level2name = N'AK_StateProvince_StateProvinceCode_CountryRegionCode';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index. Used to support replication samples.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'StateProvince', @level2type = N'INDEX', @level2name = N'AK_StateProvince_rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'PhoneNumberType', @level2type = N'INDEX', @level2name = N'PK_PhoneNumberType_PhoneNumberTypeID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'PersonPhone', @level2type = N'INDEX', @level2name = N'PK_PersonPhone_BusinessEntityID_PhoneNumber_PhoneNumberTypeID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Nonclustered index.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'PersonPhone', @level2type = N'INDEX', @level2name = N'IX_PersonPhone_PhoneNumber';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person', @level2type = N'INDEX', @level2name = N'PK_Person_BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index. Used to support replication samples.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person', @level2type = N'INDEX', @level2name = N'AK_Person_rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary XML index.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person', @level2type = N'INDEX', @level2name = N'PXML_Person_AddContact';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary XML index.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person', @level2type = N'INDEX', @level2name = N'PXML_Person_Demographics';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Secondary XML index for path.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person', @level2type = N'INDEX', @level2name = N'XMLPATH_Person_Demographics';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Secondary XML index for property.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person', @level2type = N'INDEX', @level2name = N'XMLPROPERTY_Person_Demographics';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Secondary XML index for value.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person', @level2type = N'INDEX', @level2name = N'XMLVALUE_Person_Demographics';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Password', @level2type = N'CONSTRAINT', @level2name = N'PK_Password_BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person', @level2type = N'CONSTRAINT', @level2name = N'PK_Person_BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'PersonPhone', @level2type = N'CONSTRAINT', @level2name = N'PK_PersonPhone_BusinessEntityID_PhoneNumber_PhoneNumberTypeID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'EmailAddress', @level2type = N'CONSTRAINT', @level2name = N'PK_EmailAddress_BusinessEntityID_EmailAddressID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'BusinessEntity', @level2type = N'CONSTRAINT', @level2name = N'DF_BusinessEntity_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Address', @level2type = N'CONSTRAINT', @level2name = N'PK_Address_AddressID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'AddressType', @level2type = N'CONSTRAINT', @level2name = N'PK_AddressType_AddressTypeID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'BusinessEntity', @level2type = N'CONSTRAINT', @level2name = N'PK_BusinessEntity_BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'BusinessEntityAddress', @level2type = N'CONSTRAINT', @level2name = N'PK_BusinessEntityAddress_BusinessEntityID_AddressID_AddressTypeID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'BusinessEntityContact', @level2type = N'CONSTRAINT', @level2name = N'PK_BusinessEntityContact_BusinessEntityID_PersonID_ContactTypeID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'ContactType', @level2type = N'CONSTRAINT', @level2name = N'PK_ContactType_ContactTypeID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'CountryRegion', @level2type = N'CONSTRAINT', @level2name = N'PK_CountryRegion_CountryRegionCode';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Where to send a person email.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'EmailAddress';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key. Person associated with this email address.  Foreign key to Person.BusinessEntityID', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'EmailAddress', @level2type = N'COLUMN', @level2name = N'BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key. ID of this email address.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'EmailAddress', @level2type = N'COLUMN', @level2name = N'EmailAddressID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'E-mail address for the person.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'EmailAddress', @level2type = N'COLUMN', @level2name = N'EmailAddress';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'EmailAddress', @level2type = N'COLUMN', @level2name = N'rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'EmailAddress', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of NEWID()', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'EmailAddress', @level2type = N'CONSTRAINT', @level2name = N'DF_EmailAddress_rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'EmailAddress', @level2type = N'CONSTRAINT', @level2name = N'DF_EmailAddress_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'BusinessEntityAddress', @level2type = N'CONSTRAINT', @level2name = N'DF_BusinessEntityAddress_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing BusinessEntity.BusinessEntityID.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person', @level2type = N'CONSTRAINT', @level2name = N'FK_Person_BusinessEntity_BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of NEWID()', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'BusinessEntityAddress', @level2type = N'CONSTRAINT', @level2name = N'DF_BusinessEntityAddress_rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Person.BusinessEntityID.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Password', @level2type = N'CONSTRAINT', @level2name = N'FK_Password_Person_BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Cross-reference table mapping stores, vendors, and employees to people', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'BusinessEntityContact';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key. Foreign key to BusinessEntity.BusinessEntityID.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'BusinessEntityContact', @level2type = N'COLUMN', @level2name = N'BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key. Foreign key to Person.BusinessEntityID.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'BusinessEntityContact', @level2type = N'COLUMN', @level2name = N'PersonID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key.  Foreign key to ContactType.ContactTypeID.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'BusinessEntityContact', @level2type = N'COLUMN', @level2name = N'ContactTypeID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'BusinessEntityContact', @level2type = N'COLUMN', @level2name = N'rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'BusinessEntityContact', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of NEWID()', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'BusinessEntityContact', @level2type = N'CONSTRAINT', @level2name = N'DF_BusinessEntityContact_rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'BusinessEntityContact', @level2type = N'CONSTRAINT', @level2name = N'DF_BusinessEntityContact_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Person.BusinessEntityID.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'PersonPhone', @level2type = N'CONSTRAINT', @level2name = N'FK_PersonPhone_Person_BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'ContactType', @level2type = N'CONSTRAINT', @level2name = N'DF_ContactType_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Lookup table containing the types of business entity contacts.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'ContactType';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for ContactType records.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'ContactType', @level2type = N'COLUMN', @level2name = N'ContactTypeID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Contact type description.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'ContactType', @level2type = N'COLUMN', @level2name = N'Name';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'ContactType', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing PhoneNumberType.PhoneNumberTypeID.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'PersonPhone', @level2type = N'CONSTRAINT', @level2name = N'FK_PersonPhone_PhoneNumberType_PhoneNumberTypeID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Lookup table containing the ISO standard codes for countries and regions.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'CountryRegion';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'ISO standard code for countries and regions.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'CountryRegion', @level2type = N'COLUMN', @level2name = N'CountryRegionCode';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Country or region name.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'CountryRegion', @level2type = N'COLUMN', @level2name = N'Name';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'CountryRegion', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'CountryRegion', @level2type = N'CONSTRAINT', @level2name = N'DF_CountryRegion_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'StateProvince', @level2type = N'CONSTRAINT', @level2name = N'PK_StateProvince_StateProvinceID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Joins StateProvince table with CountryRegion table.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'VIEW', @level1name = N'vStateProvinceCountryRegion';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'PersonPhone', @level2type = N'CONSTRAINT', @level2name = N'DF_PersonPhone_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'PhoneNumberType', @level2type = N'CONSTRAINT', @level2name = N'DF_PhoneNumberType_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Type of phone number of a person.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'PhoneNumberType';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for telephone number type records.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'PhoneNumberType', @level2type = N'COLUMN', @level2name = N'PhoneNumberTypeID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Name of the telephone number type', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'PhoneNumberType', @level2type = N'COLUMN', @level2name = N'Name';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'PhoneNumberType', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person', @level2type = N'CONSTRAINT', @level2name = N'DF_Person_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [PersonType] is one of SC, VC, IN, EM or SP.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person', @level2type = N'CONSTRAINT', @level2name = N'CK_Person_PersonType';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [EmailPromotion] >= (0) AND [EmailPromotion] <= (2)', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person', @level2type = N'CONSTRAINT', @level2name = N'CK_Person_EmailPromotion';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of NEWID()', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Password', @level2type = N'CONSTRAINT', @level2name = N'DF_Password_rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Displays the contact name and content from each element in the xml column AdditionalContactInfo for that person.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'VIEW', @level1name = N'vAdditionalContactInfo';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Telephone number and type of a person.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'PersonPhone';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Business entity identification number. Foreign key to Person.BusinessEntityID.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'PersonPhone', @level2type = N'COLUMN', @level2name = N'BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Telephone number identification number.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'PersonPhone', @level2type = N'COLUMN', @level2name = N'PhoneNumber';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Kind of phone number. Foreign key to PhoneNumberType.PhoneNumberTypeID.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'PersonPhone', @level2type = N'COLUMN', @level2name = N'PhoneNumberTypeID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'PersonPhone', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Password', @level2type = N'CONSTRAINT', @level2name = N'DF_Password_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'AFTER INSERT, UPDATE trigger inserting Individual only if the Customer does not exist in the Store table and setting the ModifiedDate column in the Person table to the current date.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person', @level2type = N'TRIGGER', @level2name = N'iuPerson';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'One way hashed authentication information', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Password';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Password for the e-mail account.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Password', @level2type = N'COLUMN', @level2name = N'PasswordHash';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Random value concatenated with the password string before the password is hashed.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Password', @level2type = N'COLUMN', @level2name = N'PasswordSalt';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Password', @level2type = N'COLUMN', @level2name = N'rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Password', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Human beings involved with AdventureWorks: employees, customer contacts, and vendor contacts.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for Person records.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person', @level2type = N'COLUMN', @level2name = N'BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary type of person: SC = Store Contact, IN = Individual (retail) customer, SP = Sales person, EM = Employee (non-sales), VC = Vendor contact, GC = General contact', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person', @level2type = N'COLUMN', @level2name = N'PersonType';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'0 = The data in FirstName and LastName are stored in western style (first name, last name) order.  1 = Eastern style (last name, first name) order.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person', @level2type = N'COLUMN', @level2name = N'NameStyle';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'A courtesy title. For example, Mr. or Ms.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person', @level2type = N'COLUMN', @level2name = N'Title';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'First name of the person.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person', @level2type = N'COLUMN', @level2name = N'FirstName';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Middle name or middle initial of the person.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person', @level2type = N'COLUMN', @level2name = N'MiddleName';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Last name of the person.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person', @level2type = N'COLUMN', @level2name = N'LastName';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Surname suffix. For example, Sr. or Jr.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person', @level2type = N'COLUMN', @level2name = N'Suffix';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'0 = Contact does not wish to receive e-mail promotions, 1 = Contact does wish to receive e-mail promotions from AdventureWorks, 2 = Contact does wish to receive e-mail promotions from AdventureWorks and selected partners. ', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person', @level2type = N'COLUMN', @level2name = N'EmailPromotion';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Additional contact information about the person stored in xml format. ', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person', @level2type = N'COLUMN', @level2name = N'AdditionalContactInfo';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Personal information such as hobbies, and income collected from online shoppers. Used for sales analysis.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person', @level2type = N'COLUMN', @level2name = N'Demographics';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person', @level2type = N'COLUMN', @level2name = N'rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 0', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person', @level2type = N'CONSTRAINT', @level2name = N'DF_Person_EmailPromotion';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 0', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person', @level2type = N'CONSTRAINT', @level2name = N'DF_Person_NameStyle';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of NEWID()', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person', @level2type = N'CONSTRAINT', @level2name = N'DF_Person_rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing CountryRegion.CountryRegionCode.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'StateProvince', @level2type = N'CONSTRAINT', @level2name = N'FK_StateProvince_CountryRegion_CountryRegionCode';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing SalesTerritory.TerritoryID.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'StateProvince', @level2type = N'CONSTRAINT', @level2name = N'FK_StateProvince_SalesTerritory_TerritoryID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'PhoneNumberType', @level2type = N'CONSTRAINT', @level2name = N'PK_PhoneNumberType_PhoneNumberTypeID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing StateProvince.StateProvinceID.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Address', @level2type = N'CONSTRAINT', @level2name = N'FK_Address_StateProvince_StateProvinceID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Address.AddressID.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'BusinessEntityAddress', @level2type = N'CONSTRAINT', @level2name = N'FK_BusinessEntityAddress_Address_AddressID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Address', @level2type = N'CONSTRAINT', @level2name = N'DF_Address_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Person.BusinessEntityID.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'BusinessEntityContact', @level2type = N'CONSTRAINT', @level2name = N'FK_BusinessEntityContact_Person_PersonID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Street address information for customers, employees, and vendors.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Address';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for Address records.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Address', @level2type = N'COLUMN', @level2name = N'AddressID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'First street address line.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Address', @level2type = N'COLUMN', @level2name = N'AddressLine1';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Second street address line.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Address', @level2type = N'COLUMN', @level2name = N'AddressLine2';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Name of the city.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Address', @level2type = N'COLUMN', @level2name = N'City';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique identification number for the state or province. Foreign key to StateProvince table.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Address', @level2type = N'COLUMN', @level2name = N'StateProvinceID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Postal code for the street address.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Address', @level2type = N'COLUMN', @level2name = N'PostalCode';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Latitude and longitude of this address.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Address', @level2type = N'COLUMN', @level2name = N'SpatialLocation';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Address', @level2type = N'COLUMN', @level2name = N'rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Address', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing AddressType.AddressTypeID.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'BusinessEntityAddress', @level2type = N'CONSTRAINT', @level2name = N'FK_BusinessEntityAddress_AddressType_AddressTypeID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of NEWID()', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'BusinessEntity', @level2type = N'CONSTRAINT', @level2name = N'DF_BusinessEntity_rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Cross-reference table mapping customers, vendors, and employees to their addresses.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'BusinessEntityAddress';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key. Foreign key to BusinessEntity.BusinessEntityID.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'BusinessEntityAddress', @level2type = N'COLUMN', @level2name = N'BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key. Foreign key to Address.AddressID.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'BusinessEntityAddress', @level2type = N'COLUMN', @level2name = N'AddressID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key. Foreign key to AddressType.AddressTypeID.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'BusinessEntityAddress', @level2type = N'COLUMN', @level2name = N'AddressTypeID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'BusinessEntityAddress', @level2type = N'COLUMN', @level2name = N'rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'BusinessEntityAddress', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Source of the ID that connects vendors, customers, and employees with address and contact information.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'BusinessEntity';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for all customers, vendors, and employees.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'BusinessEntity', @level2type = N'COLUMN', @level2name = N'BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'BusinessEntity', @level2type = N'COLUMN', @level2name = N'rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'BusinessEntity', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Person.BusinessEntityID.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'EmailAddress', @level2type = N'CONSTRAINT', @level2name = N'FK_EmailAddress_Person_BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 1 (TRUE)', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'StateProvince', @level2type = N'CONSTRAINT', @level2name = N'DF_StateProvince_IsOnlyStateProvinceFlag';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'State and province lookup table.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'StateProvince';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for StateProvince records.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'StateProvince', @level2type = N'COLUMN', @level2name = N'StateProvinceID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'ISO standard state or province code.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'StateProvince', @level2type = N'COLUMN', @level2name = N'StateProvinceCode';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'ISO standard country or region code. Foreign key to CountryRegion.CountryRegionCode. ', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'StateProvince', @level2type = N'COLUMN', @level2name = N'CountryRegionCode';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'0 = StateProvinceCode exists. 1 = StateProvinceCode unavailable, using CountryRegionCode.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'StateProvince', @level2type = N'COLUMN', @level2name = N'IsOnlyStateProvinceFlag';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'State or province description.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'StateProvince', @level2type = N'COLUMN', @level2name = N'Name';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'ID of the territory in which the state or province is located. Foreign key to SalesTerritory.SalesTerritoryID.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'StateProvince', @level2type = N'COLUMN', @level2name = N'TerritoryID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'StateProvince', @level2type = N'COLUMN', @level2name = N'rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'StateProvince', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Types of addresses stored in the Address table. ', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'AddressType';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for AddressType records.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'AddressType', @level2type = N'COLUMN', @level2name = N'AddressTypeID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Address type description. For example, Billing, Home, or Shipping.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'AddressType', @level2type = N'COLUMN', @level2name = N'Name';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'AddressType', @level2type = N'COLUMN', @level2name = N'rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'AddressType', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing ContactType.ContactTypeID.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'BusinessEntityContact', @level2type = N'CONSTRAINT', @level2name = N'FK_BusinessEntityContact_ContactType_ContactTypeID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of NEWID()', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Address', @level2type = N'CONSTRAINT', @level2name = N'DF_Address_rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing BusinessEntity.BusinessEntityID.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'BusinessEntityAddress', @level2type = N'CONSTRAINT', @level2name = N'FK_BusinessEntityAddress_BusinessEntity_BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of NEWID()', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'AddressType', @level2type = N'CONSTRAINT', @level2name = N'DF_AddressType_rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing BusinessEntity.BusinessEntityID.', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'BusinessEntityContact', @level2type = N'CONSTRAINT', @level2name = N'FK_BusinessEntityContact_BusinessEntity_BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'AddressType', @level2type = N'CONSTRAINT', @level2name = N'DF_AddressType_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of NEWID()', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'StateProvince', @level2type = N'CONSTRAINT', @level2name = N'DF_StateProvince_rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'StateProvince', @level2type = N'CONSTRAINT', @level2name = N'DF_StateProvince_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductModelProductDescriptionCulture', @level2type = N'CONSTRAINT', @level2name = N'DF_ProductModelProductDescriptionCulture_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'BillOfMaterials', @level2type = N'CONSTRAINT', @level2name = N'DF_BillOfMaterials_StartDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Product images.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductPhoto';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for ProductPhoto records.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductPhoto', @level2type = N'COLUMN', @level2name = N'ProductPhotoID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Small image of the product.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductPhoto', @level2type = N'COLUMN', @level2name = N'ThumbNailPhoto';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Small image file name.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductPhoto', @level2type = N'COLUMN', @level2name = N'ThumbnailPhotoFileName';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Large image of the product.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductPhoto', @level2type = N'COLUMN', @level2name = N'LargePhoto';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Large image file name.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductPhoto', @level2type = N'COLUMN', @level2name = N'LargePhotoFileName';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductPhoto', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 1.0', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'BillOfMaterials', @level2type = N'CONSTRAINT', @level2name = N'DF_BillOfMaterials_PerAssemblyQty';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Cross-reference table mapping product descriptions and the language the description is written in.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductModelProductDescriptionCulture';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key. Foreign key to ProductModel.ProductModelID.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductModelProductDescriptionCulture', @level2type = N'COLUMN', @level2name = N'ProductModelID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key. Foreign key to ProductDescription.ProductDescriptionID.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductModelProductDescriptionCulture', @level2type = N'COLUMN', @level2name = N'ProductDescriptionID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Culture identification number. Foreign key to Culture.CultureID.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductModelProductDescriptionCulture', @level2type = N'COLUMN', @level2name = N'CultureID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductModelProductDescriptionCulture', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Items required to make bicycles and bicycle subassemblies. It identifies the heirarchical relationship between a parent product and its components.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'BillOfMaterials';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for BillOfMaterials records.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'BillOfMaterials', @level2type = N'COLUMN', @level2name = N'BillOfMaterialsID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Parent product identification number. Foreign key to Product.ProductID.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'BillOfMaterials', @level2type = N'COLUMN', @level2name = N'ProductAssemblyID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Component identification number. Foreign key to Product.ProductID.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'BillOfMaterials', @level2type = N'COLUMN', @level2name = N'ComponentID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date the component started being used in the assembly item.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'BillOfMaterials', @level2type = N'COLUMN', @level2name = N'StartDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date the component stopped being used in the assembly item.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'BillOfMaterials', @level2type = N'COLUMN', @level2name = N'EndDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Standard code identifying the unit of measure for the quantity.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'BillOfMaterials', @level2type = N'COLUMN', @level2name = N'UnitMeasureCode';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Indicates the depth the component is from its parent (AssemblyID).', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'BillOfMaterials', @level2type = N'COLUMN', @level2name = N'BOMLevel';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Quantity of the component needed to create the assembly.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'BillOfMaterials', @level2type = N'COLUMN', @level2name = N'PerAssemblyQty';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'BillOfMaterials', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [ListPrice] > (0.00)', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductListPriceHistory', @level2type = N'CONSTRAINT', @level2name = N'CK_ProductListPriceHistory_ListPrice';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of NEWID()', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductModel', @level2type = N'CONSTRAINT', @level2name = N'DF_ProductModel_rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Product model classification.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductModel';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for ProductModel records.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductModel', @level2type = N'COLUMN', @level2name = N'ProductModelID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Product model description.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductModel', @level2type = N'COLUMN', @level2name = N'Name';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Detailed product catalog information in xml format.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductModel', @level2type = N'COLUMN', @level2name = N'CatalogDescription';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Manufacturing instructions in xml format.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductModel', @level2type = N'COLUMN', @level2name = N'Instructions';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductModel', @level2type = N'COLUMN', @level2name = N'rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductModel', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Cross-reference table mapping product models and illustrations.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductModelIllustration';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key. Foreign key to ProductModel.ProductModelID.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductModelIllustration', @level2type = N'COLUMN', @level2name = N'ProductModelID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key. Foreign key to Illustration.IllustrationID.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductModelIllustration', @level2type = N'COLUMN', @level2name = N'IllustrationID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductModelIllustration', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductModelIllustration', @level2type = N'CONSTRAINT', @level2name = N'DF_ProductModelIllustration_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 0', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'TransactionHistory', @level2type = N'CONSTRAINT', @level2name = N'DF_TransactionHistory_ReferenceOrderLineID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductProductPhoto', @level2type = N'CONSTRAINT', @level2name = N'DF_ProductProductPhoto_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [ProductAssemblyID] IS NULL AND [BOMLevel] = (0) AND [PerAssemblyQty] = (1) OR [ProductAssemblyID] IS NOT NULL AND [BOMLevel] >= (1)', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'BillOfMaterials', @level2type = N'CONSTRAINT', @level2name = N'CK_BillOfMaterials_BOMLevel';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductPhoto', @level2type = N'CONSTRAINT', @level2name = N'DF_ProductPhoto_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'BillOfMaterials', @level2type = N'CONSTRAINT', @level2name = N'DF_BillOfMaterials_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'TransactionHistory', @level2type = N'CONSTRAINT', @level2name = N'DF_TransactionHistory_TransactionDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Customer reviews of products they have purchased.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductReview';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for ProductReview records.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductReview', @level2type = N'COLUMN', @level2name = N'ProductReviewID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Product identification number. Foreign key to Product.ProductID.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductReview', @level2type = N'COLUMN', @level2name = N'ProductID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Name of the reviewer.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductReview', @level2type = N'COLUMN', @level2name = N'ReviewerName';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date review was submitted.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductReview', @level2type = N'COLUMN', @level2name = N'ReviewDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Reviewer''s e-mail address.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductReview', @level2type = N'COLUMN', @level2name = N'EmailAddress';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Product rating given by the reviewer. Scale is 1 to 5 with 5 as the highest rating.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductReview', @level2type = N'COLUMN', @level2name = N'Rating';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Reviewer''s comments', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductReview', @level2type = N'COLUMN', @level2name = N'Comments';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductReview', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [PerAssemblyQty] >= (1.00)', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'BillOfMaterials', @level2type = N'CONSTRAINT', @level2name = N'CK_BillOfMaterials_PerAssemblyQty';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Cross-reference table mapping products and product photos.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductProductPhoto';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Product identification number. Foreign key to Product.ProductID.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductProductPhoto', @level2type = N'COLUMN', @level2name = N'ProductID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Product photo identification number. Foreign key to ProductPhoto.ProductPhotoID.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductProductPhoto', @level2type = N'COLUMN', @level2name = N'ProductPhotoID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'0 = Photo is not the principal image. 1 = Photo is the principal image.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductProductPhoto', @level2type = N'COLUMN', @level2name = N'Primary';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductProductPhoto', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint EndDate] > [StartDate] OR [EndDate] IS NULL', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'BillOfMaterials', @level2type = N'CONSTRAINT', @level2name = N'CK_BillOfMaterials_EndDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Employee.BusinessEntityID.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Document', @level2type = N'CONSTRAINT', @level2name = N'FK_Document_Employee_Owner';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Record of each purchase order, sales order, or work order transaction year to date.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'TransactionHistory';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for TransactionHistory records.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'TransactionHistory', @level2type = N'COLUMN', @level2name = N'TransactionID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Product identification number. Foreign key to Product.ProductID.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'TransactionHistory', @level2type = N'COLUMN', @level2name = N'ProductID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Purchase order, sales order, or work order identification number.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'TransactionHistory', @level2type = N'COLUMN', @level2name = N'ReferenceOrderID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Line number associated with the purchase order, sales order, or work order.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'TransactionHistory', @level2type = N'COLUMN', @level2name = N'ReferenceOrderLineID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time of the transaction.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'TransactionHistory', @level2type = N'COLUMN', @level2name = N'TransactionDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'W = WorkOrder, S = SalesOrder, P = PurchaseOrder', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'TransactionHistory', @level2type = N'COLUMN', @level2name = N'TransactionType';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Product quantity.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'TransactionHistory', @level2type = N'COLUMN', @level2name = N'Quantity';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Product cost.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'TransactionHistory', @level2type = N'COLUMN', @level2name = N'ActualCost';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'TransactionHistory', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 0 (FALSE)', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductProductPhoto', @level2type = N'CONSTRAINT', @level2name = N'DF_ProductProductPhoto_Primary';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [ProductAssemblyID] <> [ComponentID]', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'BillOfMaterials', @level2type = N'CONSTRAINT', @level2name = N'CK_BillOfMaterials_ProductAssemblyID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [TransactionType]=''p'' OR [TransactionType]=''s'' OR [TransactionType]=''w'' OR [TransactionType]=''P'' OR [TransactionType]=''S'' OR [TransactionType]=''W'')', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'TransactionHistory', @level2type = N'CONSTRAINT', @level2name = N'CK_TransactionHistory_TransactionType';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductReview', @level2type = N'CONSTRAINT', @level2name = N'DF_ProductReview_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'TransactionHistory', @level2type = N'CONSTRAINT', @level2name = N'DF_TransactionHistory_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductReview', @level2type = N'CONSTRAINT', @level2name = N'DF_ProductReview_ReviewDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Transactions for previous years.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'TransactionHistoryArchive';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for TransactionHistoryArchive records.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'TransactionHistoryArchive', @level2type = N'COLUMN', @level2name = N'TransactionID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Product identification number. Foreign key to Product.ProductID.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'TransactionHistoryArchive', @level2type = N'COLUMN', @level2name = N'ProductID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Purchase order, sales order, or work order identification number.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'TransactionHistoryArchive', @level2type = N'COLUMN', @level2name = N'ReferenceOrderID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Line number associated with the purchase order, sales order, or work order.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'TransactionHistoryArchive', @level2type = N'COLUMN', @level2name = N'ReferenceOrderLineID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time of the transaction.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'TransactionHistoryArchive', @level2type = N'COLUMN', @level2name = N'TransactionDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'W = Work Order, S = Sales Order, P = Purchase Order', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'TransactionHistoryArchive', @level2type = N'COLUMN', @level2name = N'TransactionType';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Product quantity.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'TransactionHistoryArchive', @level2type = N'COLUMN', @level2name = N'Quantity';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Product cost.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'TransactionHistoryArchive', @level2type = N'COLUMN', @level2name = N'ActualCost';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'TransactionHistoryArchive', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [Rating] BETWEEN (1) AND (5)', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductReview', @level2type = N'CONSTRAINT', @level2name = N'CK_ProductReview_Rating';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductModel', @level2type = N'CONSTRAINT', @level2name = N'DF_ProductModel_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'TransactionHistoryArchive', @level2type = N'CONSTRAINT', @level2name = N'DF_TransactionHistoryArchive_TransactionDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of NEWID()', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductSubcategory', @level2type = N'CONSTRAINT', @level2name = N'DF_ProductSubcategory_rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 0', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'TransactionHistoryArchive', @level2type = N'CONSTRAINT', @level2name = N'DF_TransactionHistoryArchive_ReferenceOrderLineID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Product subcategories. See ProductCategory table.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductSubcategory';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for ProductSubcategory records.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductSubcategory', @level2type = N'COLUMN', @level2name = N'ProductSubcategoryID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Product category identification number. Foreign key to ProductCategory.ProductCategoryID.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductSubcategory', @level2type = N'COLUMN', @level2name = N'ProductCategoryID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Subcategory description.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductSubcategory', @level2type = N'COLUMN', @level2name = N'Name';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductSubcategory', @level2type = N'COLUMN', @level2name = N'rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductSubcategory', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductListPriceHistory', @level2type = N'CONSTRAINT', @level2name = N'DF_ProductListPriceHistory_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [EndDate] >= [StartDate] OR [EndDate] IS NULL', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductListPriceHistory', @level2type = N'CONSTRAINT', @level2name = N'CK_ProductListPriceHistory_EndDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Product.ProductAssemblyID.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'BillOfMaterials', @level2type = N'CONSTRAINT', @level2name = N'FK_BillOfMaterials_Product_ProductAssemblyID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Product.ComponentID.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'BillOfMaterials', @level2type = N'CONSTRAINT', @level2name = N'FK_BillOfMaterials_Product_ComponentID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing UnitMeasure.UnitMeasureCode.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'BillOfMaterials', @level2type = N'CONSTRAINT', @level2name = N'FK_BillOfMaterials_UnitMeasure_UnitMeasureCode';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [Shelf] like ''[A-Za-z]'' OR [Shelf]=''N/A''', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductInventory', @level2type = N'CONSTRAINT', @level2name = N'CK_ProductInventory_Shelf';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [Bin] BETWEEN (0) AND (100)', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductInventory', @level2type = N'CONSTRAINT', @level2name = N'CK_ProductInventory_Bin';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Changes in the list price of a product over time.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductListPriceHistory';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Product identification number. Foreign key to Product.ProductID', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductListPriceHistory', @level2type = N'COLUMN', @level2name = N'ProductID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'List price start date.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductListPriceHistory', @level2type = N'COLUMN', @level2name = N'StartDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'List price end date', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductListPriceHistory', @level2type = N'COLUMN', @level2name = N'EndDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Product list price.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductListPriceHistory', @level2type = N'COLUMN', @level2name = N'ListPrice';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductListPriceHistory', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductDocument', @level2type = N'CONSTRAINT', @level2name = N'DF_ProductDocument_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 0', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductInventory', @level2type = N'CONSTRAINT', @level2name = N'DF_ProductInventory_Quantity';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of NEWID()', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductInventory', @level2type = N'CONSTRAINT', @level2name = N'DF_ProductInventory_rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductInventory', @level2type = N'CONSTRAINT', @level2name = N'DF_ProductInventory_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Product inventory information.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductInventory';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Product identification number. Foreign key to Product.ProductID.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductInventory', @level2type = N'COLUMN', @level2name = N'ProductID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Inventory location identification number. Foreign key to Location.LocationID. ', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductInventory', @level2type = N'COLUMN', @level2name = N'LocationID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Storage compartment within an inventory location.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductInventory', @level2type = N'COLUMN', @level2name = N'Shelf';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Storage container on a shelf in an inventory location.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductInventory', @level2type = N'COLUMN', @level2name = N'Bin';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Quantity of products in the inventory location.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductInventory', @level2type = N'COLUMN', @level2name = N'Quantity';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductInventory', @level2type = N'COLUMN', @level2name = N'rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductInventory', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Cross-reference table mapping products to related product documents.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductDocument';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Product identification number. Foreign key to Product.ProductID.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductDocument', @level2type = N'COLUMN', @level2name = N'ProductID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Document identification number. Foreign key to Document.DocumentNode.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductDocument', @level2type = N'COLUMN', @level2name = N'DocumentNode';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductDocument', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of NEWID()', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductDescription', @level2type = N'CONSTRAINT', @level2name = N'DF_ProductDescription_rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductDescription', @level2type = N'CONSTRAINT', @level2name = N'DF_ProductDescription_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Product descriptions in several languages.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductDescription';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for ProductDescription records.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductDescription', @level2type = N'COLUMN', @level2name = N'ProductDescriptionID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Description of the product.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductDescription', @level2type = N'COLUMN', @level2name = N'Description';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductDescription', @level2type = N'COLUMN', @level2name = N'rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductDescription', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [EndDate] >= [StartDate] OR [EndDate] IS NULL', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductCostHistory', @level2type = N'CONSTRAINT', @level2name = N'CK_ProductCostHistory_EndDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [StandardCost] >= (0.00)', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductCostHistory', @level2type = N'CONSTRAINT', @level2name = N'CK_ProductCostHistory_StandardCost';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductCategory', @level2type = N'CONSTRAINT', @level2name = N'DF_ProductCategory_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductCostHistory', @level2type = N'CONSTRAINT', @level2name = N'DF_ProductCostHistory_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Changes in the cost of a product over time.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductCostHistory';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Product identification number. Foreign key to Product.ProductID', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductCostHistory', @level2type = N'COLUMN', @level2name = N'ProductID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Product cost start date.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductCostHistory', @level2type = N'COLUMN', @level2name = N'StartDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Product cost end date.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductCostHistory', @level2type = N'COLUMN', @level2name = N'EndDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Standard cost of the product.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductCostHistory', @level2type = N'COLUMN', @level2name = N'StandardCost';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductCostHistory', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ScrapReason', @level2type = N'CONSTRAINT', @level2name = N'DF_ScrapReason_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [Style]=''u'' OR [Style]=''m'' OR [Style]=''w'' OR [Style]=''U'' OR [Style]=''M'' OR [Style]=''W'' OR [Style] IS NULL', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'CONSTRAINT', @level2name = N'CK_Product_Style';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [Weight] > (0.00)', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'CONSTRAINT', @level2name = N'CK_Product_Weight';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of NEWID()()', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductCategory', @level2type = N'CONSTRAINT', @level2name = N'DF_ProductCategory_rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'CONSTRAINT', @level2name = N'PK_Product_ProductID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductCategory', @level2type = N'CONSTRAINT', @level2name = N'PK_ProductCategory_ProductCategoryID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Bicycle assembly diagrams.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Illustration';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for Illustration records.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Illustration', @level2type = N'COLUMN', @level2name = N'IllustrationID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Illustrations used in manufacturing instructions. Stored as XML.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Illustration', @level2type = N'COLUMN', @level2name = N'Diagram';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Illustration', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductCostHistory', @level2type = N'CONSTRAINT', @level2name = N'PK_ProductCostHistory_ProductID_StartDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductInventory', @level2type = N'CONSTRAINT', @level2name = N'PK_ProductInventory_ProductID_LocationID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductDocument', @level2type = N'CONSTRAINT', @level2name = N'PK_ProductDocument_ProductID_DocumentNode';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductDescription', @level2type = N'CONSTRAINT', @level2name = N'PK_ProductDescription_ProductDescriptionID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Product inventory and manufacturing locations.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Location';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for Location records.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Location', @level2type = N'COLUMN', @level2name = N'LocationID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Location description.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Location', @level2type = N'COLUMN', @level2name = N'Name';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Standard hourly cost of the manufacturing location.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Location', @level2type = N'COLUMN', @level2name = N'CostRate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Work capacity (in hours) of the manufacturing location.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Location', @level2type = N'COLUMN', @level2name = N'Availability';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Location', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductListPriceHistory', @level2type = N'CONSTRAINT', @level2name = N'PK_ProductListPriceHistory_ProductID_StartDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductModel', @level2type = N'CONSTRAINT', @level2name = N'PK_ProductModel_ProductModelID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 0.0', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Location', @level2type = N'CONSTRAINT', @level2name = N'DF_Location_CostRate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Product.ProductID.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'TransactionHistory', @level2type = N'CONSTRAINT', @level2name = N'FK_TransactionHistory_Product_ProductID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductModelIllustration', @level2type = N'CONSTRAINT', @level2name = N'PK_ProductModelIllustration_ProductModelID_IllustrationID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 0.00', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Location', @level2type = N'CONSTRAINT', @level2name = N'DF_Location_Availability';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductModelProductDescriptionCulture', @level2type = N'CONSTRAINT', @level2name = N'PK_ProductModelProductDescriptionCulture_ProductModelID_ProductDescriptionID_CultureID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing WorkOrder.WorkOrderID.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrderRouting', @level2type = N'CONSTRAINT', @level2name = N'FK_WorkOrderRouting_WorkOrder_WorkOrderID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductSubcategory', @level2type = N'CONSTRAINT', @level2name = N'PK_ProductSubcategory_ProductSubcategoryID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Location', @level2type = N'CONSTRAINT', @level2name = N'DF_Location_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Product.ProductID.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrder', @level2type = N'CONSTRAINT', @level2name = N'FK_WorkOrder_Product_ProductID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductPhoto', @level2type = N'CONSTRAINT', @level2name = N'PK_ProductPhoto_ProductPhotoID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [CostRate] >= (0.00)', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Location', @level2type = N'CONSTRAINT', @level2name = N'CK_Location_CostRate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing ScrapReason.ScrapReasonID.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrder', @level2type = N'CONSTRAINT', @level2name = N'FK_WorkOrder_ScrapReason_ScrapReasonID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductProductPhoto', @level2type = N'CONSTRAINT', @level2name = N'PK_ProductProductPhoto_ProductID_ProductPhotoID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [Availability] >= (0.00)', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Location', @level2type = N'CONSTRAINT', @level2name = N'CK_Location_Availability';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Location.LocationID.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrderRouting', @level2type = N'CONSTRAINT', @level2name = N'FK_WorkOrderRouting_Location_LocationID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductReview', @level2type = N'CONSTRAINT', @level2name = N'PK_ProductReview_ProductReviewID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Illustration', @level2type = N'CONSTRAINT', @level2name = N'DF_Illustration_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'AFTER UPDATE trigger that inserts a row in the TransactionHistory table, updates ModifiedDate in the WorkOrder table.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrder', @level2type = N'TRIGGER', @level2name = N'uWorkOrder';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'AFTER INSERT trigger that inserts a row in the TransactionHistory table.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrder', @level2type = N'TRIGGER', @level2name = N'iWorkOrder';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ScrapReason', @level2type = N'CONSTRAINT', @level2name = N'PK_ScrapReason_ScrapReasonID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Products sold or used in the manfacturing of sold products.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for Product records.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'ProductID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Name of the product.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'Name';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique product identification number.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'ProductNumber';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'0 = Product is purchased, 1 = Product is manufactured in-house.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'MakeFlag';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'0 = Product is not a salable item. 1 = Product is salable.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'FinishedGoodsFlag';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Product color.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'Color';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Minimum inventory quantity. ', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'SafetyStockLevel';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Inventory level that triggers a purchase order or work order. ', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'ReorderPoint';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Standard cost of the product.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'StandardCost';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Selling price.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'ListPrice';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Product size.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'Size';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unit of measure for Size column.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'SizeUnitMeasureCode';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unit of measure for Weight column.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'WeightUnitMeasureCode';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Product weight.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'Weight';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Number of days required to manufacture the product.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'DaysToManufacture';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'R = Road, M = Mountain, T = Touring, S = Standard', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'ProductLine';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'H = High, M = Medium, L = Low', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'Class';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'W = Womens, M = Mens, U = Universal', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'Style';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Product is a member of this product subcategory. Foreign key to ProductSubCategory.ProductSubCategoryID. ', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'ProductSubcategoryID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Product is a member of this product model. Foreign key to ProductModel.ProductModelID.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'ProductModelID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date the product was available for sale.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'SellStartDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date the product was no longer available for sale.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'SellEndDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date the product was discontinued.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'DiscontinuedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of  1', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'CONSTRAINT', @level2name = N'DF_Product_MakeFlag';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of  1', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'CONSTRAINT', @level2name = N'DF_Product_FinishedGoodsFlag';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of NEWID()', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'CONSTRAINT', @level2name = N'DF_Product_rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'CONSTRAINT', @level2name = N'DF_Product_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Product names and descriptions. Product descriptions are provided in multiple languages.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'VIEW', @level1name = N'vProductAndDescription';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [SafetyStockLevel] > (0)', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'CONSTRAINT', @level2name = N'CK_Product_SafetyStockLevel';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Displays the content from each element in the xml column CatalogDescription for each product in the Production.ProductModel table that has catalog data.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'VIEW', @level1name = N'vProductModelCatalogDescription';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'TransactionHistory', @level2type = N'CONSTRAINT', @level2name = N'PK_TransactionHistory_TransactionID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [ReorderPoint] > (0)', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'CONSTRAINT', @level2name = N'CK_Product_ReorderPoint';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Displays the content from each element in the xml column Instructions for each product in the Production.ProductModel table that has manufacturing instructions.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'VIEW', @level1name = N'vProductModelInstructions';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'TransactionHistoryArchive', @level2type = N'CONSTRAINT', @level2name = N'PK_TransactionHistoryArchive_TransactionID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'UnitMeasure', @level2type = N'CONSTRAINT', @level2name = N'PK_UnitMeasure_UnitMeasureCode';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrder', @level2type = N'CONSTRAINT', @level2name = N'PK_WorkOrder_WorkOrderID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [DaysToManufacture] >= (0)', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'CONSTRAINT', @level2name = N'CK_Product_DaysToManufacture';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrderRouting', @level2type = N'CONSTRAINT', @level2name = N'PK_WorkOrderRouting_WorkOrderID_ProductID_OperationSequence';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [ProductLine]=''r'' OR [ProductLine]=''m'' OR [ProductLine]=''t'' OR [ProductLine]=''s'' OR [ProductLine]=''R'' OR [ProductLine]=''M'' OR [ProductLine]=''T'' OR [ProductLine]=''S'' OR [ProductLine] IS NULL', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'CONSTRAINT', @level2name = N'CK_Product_ProductLine';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [SafetyStockLevel] > (0)', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'CONSTRAINT', @level2name = N'CK_Product_StandardCost';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [ListPrice] >= (0.00)', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'CONSTRAINT', @level2name = N'CK_Product_ListPrice';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'High-level product categorization.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductCategory';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for ProductCategory records.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductCategory', @level2type = N'COLUMN', @level2name = N'ProductCategoryID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Category description.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductCategory', @level2type = N'COLUMN', @level2name = N'Name';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductCategory', @level2type = N'COLUMN', @level2name = N'rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductCategory', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Manufacturing failure reasons lookup table.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ScrapReason';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for ScrapReason records.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ScrapReason', @level2type = N'COLUMN', @level2name = N'ScrapReasonID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Failure description.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ScrapReason', @level2type = N'COLUMN', @level2name = N'Name';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ScrapReason', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [Class]=''h'' OR [Class]=''m'' OR [Class]=''l'' OR [Class]=''H'' OR [Class]=''M'' OR [Class]=''L'' OR [Class] IS NULL', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'CONSTRAINT', @level2name = N'CK_Product_Class';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [SellEndDate] >= [SellStartDate] OR [SellEndDate] IS NULL', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'CONSTRAINT', @level2name = N'CK_Product_SellEndDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Product.ProductID.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductCostHistory', @level2type = N'CONSTRAINT', @level2name = N'FK_ProductCostHistory_Product_ProductID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrder', @level2type = N'CONSTRAINT', @level2name = N'DF_WorkOrder_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Product.ProductID.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductDocument', @level2type = N'CONSTRAINT', @level2name = N'FK_ProductDocument_Product_ProductID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [OrderQty] > (0)', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrder', @level2type = N'CONSTRAINT', @level2name = N'CK_WorkOrder_OrderQty';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing ProductModel.ProductModelID.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'CONSTRAINT', @level2name = N'FK_Product_ProductModel_ProductModelID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Document.DocumentNode.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductDocument', @level2type = N'CONSTRAINT', @level2name = N'FK_ProductDocument_Document_DocumentNode';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [ScrappedQty] >= (0)', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrder', @level2type = N'CONSTRAINT', @level2name = N'CK_WorkOrder_ScrappedQty';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Culture', @level2type = N'CONSTRAINT', @level2name = N'DF_Culture_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Product.ProductID.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductInventory', @level2type = N'CONSTRAINT', @level2name = N'FK_ProductInventory_Product_ProductID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Work order details.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrderRouting';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key. Foreign key to WorkOrder.WorkOrderID.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrderRouting', @level2type = N'COLUMN', @level2name = N'WorkOrderID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key. Foreign key to Product.ProductID.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrderRouting', @level2type = N'COLUMN', @level2name = N'ProductID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key. Indicates the manufacturing process sequence.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrderRouting', @level2type = N'COLUMN', @level2name = N'OperationSequence';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Manufacturing location where the part is processed. Foreign key to Location.LocationID.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrderRouting', @level2type = N'COLUMN', @level2name = N'LocationID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Planned manufacturing start date.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrderRouting', @level2type = N'COLUMN', @level2name = N'ScheduledStartDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Planned manufacturing end date.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrderRouting', @level2type = N'COLUMN', @level2name = N'ScheduledEndDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Actual start date.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrderRouting', @level2type = N'COLUMN', @level2name = N'ActualStartDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Actual end date.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrderRouting', @level2type = N'COLUMN', @level2name = N'ActualEndDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Number of manufacturing hours used.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrderRouting', @level2type = N'COLUMN', @level2name = N'ActualResourceHrs';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Estimated manufacturing cost.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrderRouting', @level2type = N'COLUMN', @level2name = N'PlannedCost';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Actual manufacturing cost.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrderRouting', @level2type = N'COLUMN', @level2name = N'ActualCost';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrderRouting', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Product.ProductID.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductListPriceHistory', @level2type = N'CONSTRAINT', @level2name = N'FK_ProductListPriceHistory_Product_ProductID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrderRouting', @level2type = N'CONSTRAINT', @level2name = N'DF_WorkOrderRouting_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing ProductModel.ProductModelID.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductModelIllustration', @level2type = N'CONSTRAINT', @level2name = N'FK_ProductModelIllustration_ProductModel_ProductModelID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [ScheduledEndDate] >= [ScheduledStartDate]', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrderRouting', @level2type = N'CONSTRAINT', @level2name = N'CK_WorkOrderRouting_ScheduledEndDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Lookup table containing the languages in which some AdventureWorks data is stored.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Culture';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for Culture records.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Culture', @level2type = N'COLUMN', @level2name = N'CultureID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Culture description.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Culture', @level2type = N'COLUMN', @level2name = N'Name';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Culture', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Location.LocationID.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductInventory', @level2type = N'CONSTRAINT', @level2name = N'FK_ProductInventory_Location_LocationID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [EndDate] >= [StartDate] OR [EndDate] IS NULL', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrder', @level2type = N'CONSTRAINT', @level2name = N'CK_WorkOrder_EndDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Illustration.IllustrationID.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductModelIllustration', @level2type = N'CONSTRAINT', @level2name = N'FK_ProductModelIllustration_Illustration_IllustrationID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [ActualEndDate] >= [ActualStartDate] OR [ActualEndDate] IS NULL OR [ActualStartDate] IS NULL', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrderRouting', @level2type = N'CONSTRAINT', @level2name = N'CK_WorkOrderRouting_ActualEndDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing ProductSubcategory.ProductSubcategoryID.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'CONSTRAINT', @level2name = N'FK_Product_ProductSubcategory_ProductSubcategoryID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Manufacturing work orders.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrder';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for WorkOrder records.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrder', @level2type = N'COLUMN', @level2name = N'WorkOrderID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Product identification number. Foreign key to Product.ProductID.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrder', @level2type = N'COLUMN', @level2name = N'ProductID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Product quantity to build.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrder', @level2type = N'COLUMN', @level2name = N'OrderQty';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Quantity built and put in inventory.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrder', @level2type = N'COLUMN', @level2name = N'StockedQty';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Quantity that failed inspection.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrder', @level2type = N'COLUMN', @level2name = N'ScrappedQty';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Work order start date.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrder', @level2type = N'COLUMN', @level2name = N'StartDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Work order end date.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrder', @level2type = N'COLUMN', @level2name = N'EndDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Work order due date.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrder', @level2type = N'COLUMN', @level2name = N'DueDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Reason for inspection failure.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrder', @level2type = N'COLUMN', @level2name = N'ScrapReasonID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrder', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing UnitMeasure.UnitMeasureCode.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'CONSTRAINT', @level2name = N'FK_Product_UnitMeasure_WeightUnitMeasureCode';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing UnitMeasure.UnitMeasureCode.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'CONSTRAINT', @level2name = N'FK_Product_UnitMeasure_SizeUnitMeasureCode';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'UnitMeasure', @level2type = N'CONSTRAINT', @level2name = N'DF_UnitMeasure_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unit of measure lookup table.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'UnitMeasure';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'UnitMeasure', @level2type = N'COLUMN', @level2name = N'UnitMeasureCode';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unit of measure description.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'UnitMeasure', @level2type = N'COLUMN', @level2name = N'Name';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'UnitMeasure', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'TransactionHistoryArchive', @level2type = N'CONSTRAINT', @level2name = N'DF_TransactionHistoryArchive_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductSubcategory', @level2type = N'CONSTRAINT', @level2name = N'DF_ProductSubcategory_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [TransactionType]=''p'' OR [TransactionType]=''s'' OR [TransactionType]=''w'' OR [TransactionType]=''P'' OR [TransactionType]=''S'' OR [TransactionType]=''W''', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'TransactionHistoryArchive', @level2type = N'CONSTRAINT', @level2name = N'CK_TransactionHistoryArchive_TransactionType';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Culture', @level2type = N'CONSTRAINT', @level2name = N'PK_Culture_CultureID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [Status] BETWEEN (1) AND (3)', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Document', @level2type = N'CONSTRAINT', @level2name = N'CK_Document_Status';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Document', @level2type = N'CONSTRAINT', @level2name = N'DF_Document_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of NEWID()', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Document', @level2type = N'CONSTRAINT', @level2name = N'DF_Document_rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 0', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Document', @level2type = N'CONSTRAINT', @level2name = N'DF_Document_ChangeNumber';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Product.ProductID.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductReview', @level2type = N'CONSTRAINT', @level2name = N'FK_ProductReview_Product_ProductID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Product.ProductID.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductProductPhoto', @level2type = N'CONSTRAINT', @level2name = N'FK_ProductProductPhoto_Product_ProductID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing ProductPhoto.ProductPhotoID.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductProductPhoto', @level2type = N'CONSTRAINT', @level2name = N'FK_ProductProductPhoto_ProductPhoto_ProductPhotoID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing ProductDescription.ProductDescriptionID.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductModelProductDescriptionCulture', @level2type = N'CONSTRAINT', @level2name = N'FK_ProductModelProductDescriptionCulture_ProductDescription_ProductDescriptionID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [ActualResourceHrs] >= (0.0000)', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrderRouting', @level2type = N'CONSTRAINT', @level2name = N'CK_WorkOrderRouting_ActualResourceHrs';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Culture.CultureID.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductModelProductDescriptionCulture', @level2type = N'CONSTRAINT', @level2name = N'FK_ProductModelProductDescriptionCulture_Culture_CultureID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [PlannedCost] > (0.00)', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrderRouting', @level2type = N'CONSTRAINT', @level2name = N'CK_WorkOrderRouting_PlannedCost';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing ProductModel.ProductModelID.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductModelProductDescriptionCulture', @level2type = N'CONSTRAINT', @level2name = N'FK_ProductModelProductDescriptionCulture_ProductModel_ProductModelID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [ActualCost] > (0.00)', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrderRouting', @level2type = N'CONSTRAINT', @level2name = N'CK_WorkOrderRouting_ActualCost';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Product maintenance documents.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Document';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for Document records.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Document', @level2type = N'COLUMN', @level2name = N'DocumentNode';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Depth in the document hierarchy.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Document', @level2type = N'COLUMN', @level2name = N'DocumentLevel';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Title of the document.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Document', @level2type = N'COLUMN', @level2name = N'Title';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Employee who controls the document.  Foreign key to Employee.BusinessEntityID', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Document', @level2type = N'COLUMN', @level2name = N'Owner';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'0 = This is a folder, 1 = This is a document.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Document', @level2type = N'COLUMN', @level2name = N'FolderFlag';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'File name of the document', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Document', @level2type = N'COLUMN', @level2name = N'FileName';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'File extension indicating the document type. For example, .doc or .txt.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Document', @level2type = N'COLUMN', @level2name = N'FileExtension';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Revision number of the document. ', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Document', @level2type = N'COLUMN', @level2name = N'Revision';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Engineering change approval number.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Document', @level2type = N'COLUMN', @level2name = N'ChangeNumber';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'1 = Pending approval, 2 = Approved, 3 = Obsolete', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Document', @level2type = N'COLUMN', @level2name = N'Status';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Document abstract.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Document', @level2type = N'COLUMN', @level2name = N'DocumentSummary';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Complete document.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Document', @level2type = N'COLUMN', @level2name = N'Document';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'ROWGUIDCOL number uniquely identifying the record. Required for FileStream.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Document', @level2type = N'COLUMN', @level2name = N'rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Document', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing ProductCategory.ProductCategoryID.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductSubcategory', @level2type = N'CONSTRAINT', @level2name = N'FK_ProductSubcategory_ProductCategory_ProductCategoryID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'BillOfMaterials', @level2type = N'CONSTRAINT', @level2name = N'PK_BillOfMaterials_BillOfMaterialsID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Document', @level2type = N'CONSTRAINT', @level2name = N'PK_Document_DocumentNode';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Location', @level2type = N'CONSTRAINT', @level2name = N'PK_Location_LocationID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Illustration', @level2type = N'CONSTRAINT', @level2name = N'PK_Illustration_IllustrationID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Location', @level2type = N'INDEX', @level2name = N'PK_Location_LocationID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Location', @level2type = N'INDEX', @level2name = N'AK_Location_Name';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'INDEX', @level2name = N'PK_Product_ProductID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'INDEX', @level2name = N'AK_Product_ProductNumber';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'INDEX', @level2name = N'AK_Product_Name';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index. Used to support replication samples.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'INDEX', @level2name = N'AK_Product_rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index on the view vProductAndDescription.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'VIEW', @level1name = N'vProductAndDescription', @level2type = N'INDEX', @level2name = N'IX_vProductAndDescription';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductCategory', @level2type = N'INDEX', @level2name = N'PK_ProductCategory_ProductCategoryID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductCategory', @level2type = N'INDEX', @level2name = N'AK_ProductCategory_Name';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index. Used to support replication samples.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductCategory', @level2type = N'INDEX', @level2name = N'AK_ProductCategory_rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductModelIllustration', @level2type = N'INDEX', @level2name = N'PK_ProductModelIllustration_ProductModelID_IllustrationID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductModel', @level2type = N'INDEX', @level2name = N'PK_ProductModel_ProductModelID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductModel', @level2type = N'INDEX', @level2name = N'AK_ProductModel_Name';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index. Used to support replication samples.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductModel', @level2type = N'INDEX', @level2name = N'AK_ProductModel_rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary XML index.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductModel', @level2type = N'INDEX', @level2name = N'PXML_ProductModel_CatalogDescription';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary XML index.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductModel', @level2type = N'INDEX', @level2name = N'PXML_ProductModel_Instructions';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ScrapReason', @level2type = N'INDEX', @level2name = N'PK_ScrapReason_ScrapReasonID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ScrapReason', @level2type = N'INDEX', @level2name = N'AK_ScrapReason_Name';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductCostHistory', @level2type = N'INDEX', @level2name = N'PK_ProductCostHistory_ProductID_StartDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductDescription', @level2type = N'INDEX', @level2name = N'PK_ProductDescription_ProductDescriptionID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index. Used to support replication samples.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductDescription', @level2type = N'INDEX', @level2name = N'AK_ProductDescription_rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductListPriceHistory', @level2type = N'INDEX', @level2name = N'PK_ProductListPriceHistory_ProductID_StartDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Illustration', @level2type = N'INDEX', @level2name = N'PK_Illustration_IllustrationID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductDocument', @level2type = N'INDEX', @level2name = N'PK_ProductDocument_ProductID_DocumentNode';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductInventory', @level2type = N'INDEX', @level2name = N'PK_ProductInventory_ProductID_LocationID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'UnitMeasure', @level2type = N'INDEX', @level2name = N'PK_UnitMeasure_UnitMeasureCode';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'UnitMeasure', @level2type = N'INDEX', @level2name = N'AK_UnitMeasure_Name';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductPhoto', @level2type = N'INDEX', @level2name = N'PK_ProductPhoto_ProductPhotoID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Nonclustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductProductPhoto', @level2type = N'INDEX', @level2name = N'PK_ProductProductPhoto_ProductID_ProductPhotoID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'TransactionHistory', @level2type = N'INDEX', @level2name = N'PK_TransactionHistory_TransactionID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Nonclustered index.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'TransactionHistory', @level2type = N'INDEX', @level2name = N'IX_TransactionHistory_ProductID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Nonclustered index.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'TransactionHistory', @level2type = N'INDEX', @level2name = N'IX_TransactionHistory_ReferenceOrderID_ReferenceOrderLineID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductReview', @level2type = N'INDEX', @level2name = N'PK_ProductReview_ProductReviewID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Nonclustered index.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductReview', @level2type = N'INDEX', @level2name = N'IX_ProductReview_ProductID_Name';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'TransactionHistoryArchive', @level2type = N'INDEX', @level2name = N'PK_TransactionHistoryArchive_TransactionID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Nonclustered index.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'TransactionHistoryArchive', @level2type = N'INDEX', @level2name = N'IX_TransactionHistoryArchive_ProductID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Nonclustered index.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'TransactionHistoryArchive', @level2type = N'INDEX', @level2name = N'IX_TransactionHistoryArchive_ReferenceOrderID_ReferenceOrderLineID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductSubcategory', @level2type = N'INDEX', @level2name = N'PK_ProductSubcategory_ProductSubcategoryID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductSubcategory', @level2type = N'INDEX', @level2name = N'AK_ProductSubcategory_Name';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index. Used to support replication samples.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductSubcategory', @level2type = N'INDEX', @level2name = N'AK_ProductSubcategory_rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductModelProductDescriptionCulture', @level2type = N'INDEX', @level2name = N'PK_ProductModelProductDescriptionCulture_ProductModelID_ProductDescriptionID_CultureID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'BillOfMaterials', @level2type = N'INDEX', @level2name = N'AK_BillOfMaterials_ProductAssemblyID_ComponentID_StartDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Nonclustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'BillOfMaterials', @level2type = N'INDEX', @level2name = N'PK_BillOfMaterials_BillOfMaterialsID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Nonclustered index.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'BillOfMaterials', @level2type = N'INDEX', @level2name = N'IX_BillOfMaterials_UnitMeasureCode';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Culture', @level2type = N'INDEX', @level2name = N'PK_Culture_CultureID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Culture', @level2type = N'INDEX', @level2name = N'AK_Culture_Name';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrderRouting', @level2type = N'INDEX', @level2name = N'PK_WorkOrderRouting_WorkOrderID_ProductID_OperationSequence';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Nonclustered index.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrderRouting', @level2type = N'INDEX', @level2name = N'IX_WorkOrderRouting_ProductID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrder', @level2type = N'INDEX', @level2name = N'PK_WorkOrder_WorkOrderID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Nonclustered index.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrder', @level2type = N'INDEX', @level2name = N'IX_WorkOrder_ScrapReasonID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Nonclustered index.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrder', @level2type = N'INDEX', @level2name = N'IX_WorkOrder_ProductID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Document', @level2type = N'INDEX', @level2name = N'PK_Document_DocumentNode';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Document', @level2type = N'INDEX', @level2name = N'AK_Document_DocumentLevel_DocumentNode';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index. Used to support FileStream.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Document', @level2type = N'INDEX', @level2name = N'AK_Document_rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index.', @level0type = N'Schema', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Document', @level2type = N'INDEX', @level2name = N'IX_Document_FileName_Revision';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderHeader', @level2type = N'INDEX', @level2name = N'PK_PurchaseOrderHeader_PurchaseOrderID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Nonclustered index.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderHeader', @level2type = N'INDEX', @level2name = N'IX_PurchaseOrderHeader_VendorID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Nonclustered index.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderHeader', @level2type = N'INDEX', @level2name = N'IX_PurchaseOrderHeader_EmployeeID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderDetail', @level2type = N'INDEX', @level2name = N'PK_PurchaseOrderDetail_PurchaseOrderID_PurchaseOrderDetailID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Nonclustered index.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderDetail', @level2type = N'INDEX', @level2name = N'IX_PurchaseOrderDetail_ProductID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ProductVendor', @level2type = N'INDEX', @level2name = N'PK_ProductVendor_ProductID_BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Nonclustered index.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ProductVendor', @level2type = N'INDEX', @level2name = N'IX_ProductVendor_UnitMeasureCode';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Nonclustered index.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ProductVendor', @level2type = N'INDEX', @level2name = N'IX_ProductVendor_BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'Vendor', @level2type = N'INDEX', @level2name = N'PK_Vendor_BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'Vendor', @level2type = N'INDEX', @level2name = N'AK_Vendor_AccountNumber';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ShipMethod', @level2type = N'INDEX', @level2name = N'PK_ShipMethod_ShipMethodID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ShipMethod', @level2type = N'INDEX', @level2name = N'AK_ShipMethod_Name';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index. Used to support replication samples.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ShipMethod', @level2type = N'INDEX', @level2name = N'AK_ShipMethod_rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [ShipDate] >= [OrderDate] OR [ShipDate] IS NULL', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderHeader', @level2type = N'CONSTRAINT', @level2name = N'CK_PurchaseOrderHeader_ShipDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Product.ProductID.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ProductVendor', @level2type = N'CONSTRAINT', @level2name = N'FK_ProductVendor_Product_ProductID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 0.0', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderHeader', @level2type = N'CONSTRAINT', @level2name = N'DF_PurchaseOrderHeader_TaxAmt';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 0.0', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderHeader', @level2type = N'CONSTRAINT', @level2name = N'DF_PurchaseOrderHeader_SubTotal';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderHeader', @level2type = N'CONSTRAINT', @level2name = N'DF_PurchaseOrderHeader_OrderDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 0.0', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderHeader', @level2type = N'CONSTRAINT', @level2name = N'DF_PurchaseOrderHeader_Freight';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderHeader', @level2type = N'CONSTRAINT', @level2name = N'DF_PurchaseOrderHeader_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [SubTotal] >= (0.00)', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderHeader', @level2type = N'CONSTRAINT', @level2name = N'CK_PurchaseOrderHeader_SubTotal';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing UnitMeasure.UnitMeasureCode.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ProductVendor', @level2type = N'CONSTRAINT', @level2name = N'FK_ProductVendor_UnitMeasure_UnitMeasureCode';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [Status] BETWEEN (1) AND (4)', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderHeader', @level2type = N'CONSTRAINT', @level2name = N'CK_PurchaseOrderHeader_Status';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Vendor.BusinessEntityID.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ProductVendor', @level2type = N'CONSTRAINT', @level2name = N'FK_ProductVendor_Vendor_BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [TaxAmt] >= (0.00)', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderHeader', @level2type = N'CONSTRAINT', @level2name = N'CK_PurchaseOrderHeader_TaxAmt';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Product.ProductID.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderDetail', @level2type = N'CONSTRAINT', @level2name = N'FK_PurchaseOrderDetail_Product_ProductID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [Freight] >= (0.00)', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderHeader', @level2type = N'CONSTRAINT', @level2name = N'CK_PurchaseOrderHeader_Freight';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing PurchaseOrderHeader.PurchaseOrderID.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderDetail', @level2type = N'CONSTRAINT', @level2name = N'FK_PurchaseOrderDetail_PurchaseOrderHeader_PurchaseOrderID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Employee.EmployeeID.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderHeader', @level2type = N'CONSTRAINT', @level2name = N'FK_PurchaseOrderHeader_Employee_EmployeeID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Vendor.VendorID.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderHeader', @level2type = N'CONSTRAINT', @level2name = N'FK_PurchaseOrderHeader_Vendor_VendorID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing ShipMethod.ShipMethodID.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderHeader', @level2type = N'CONSTRAINT', @level2name = N'FK_PurchaseOrderHeader_ShipMethod_ShipMethodID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Cross-reference table mapping vendors with the products they supply.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ProductVendor';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key. Foreign key to Product.ProductID.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ProductVendor', @level2type = N'COLUMN', @level2name = N'ProductID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key. Foreign key to Vendor.BusinessEntityID.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ProductVendor', @level2type = N'COLUMN', @level2name = N'BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'The average span of time (in days) between placing an order with the vendor and receiving the purchased product.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ProductVendor', @level2type = N'COLUMN', @level2name = N'AverageLeadTime';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'The vendor''s usual selling price.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ProductVendor', @level2type = N'COLUMN', @level2name = N'StandardPrice';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'The selling price when last purchased.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ProductVendor', @level2type = N'COLUMN', @level2name = N'LastReceiptCost';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date the product was last received by the vendor.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ProductVendor', @level2type = N'COLUMN', @level2name = N'LastReceiptDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'The maximum quantity that should be ordered.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ProductVendor', @level2type = N'COLUMN', @level2name = N'MinOrderQty';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'The minimum quantity that should be ordered.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ProductVendor', @level2type = N'COLUMN', @level2name = N'MaxOrderQty';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'The quantity currently on order.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ProductVendor', @level2type = N'COLUMN', @level2name = N'OnOrderQty';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'The product''s unit of measure.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ProductVendor', @level2type = N'COLUMN', @level2name = N'UnitMeasureCode';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ProductVendor', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ProductVendor', @level2type = N'CONSTRAINT', @level2name = N'DF_ProductVendor_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [AverageLeadTime] >= (1)', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ProductVendor', @level2type = N'CONSTRAINT', @level2name = N'CK_ProductVendor_AverageLeadTime';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Companies from whom Adventure Works Cycles purchases parts or other goods.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'Vendor';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for Vendor records.  Foreign key to BusinessEntity.BusinessEntityID', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'Vendor', @level2type = N'COLUMN', @level2name = N'BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Vendor account (identification) number.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'Vendor', @level2type = N'COLUMN', @level2name = N'AccountNumber';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Company name.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'Vendor', @level2type = N'COLUMN', @level2name = N'Name';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'1 = Superior, 2 = Excellent, 3 = Above average, 4 = Average, 5 = Below average', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'Vendor', @level2type = N'COLUMN', @level2name = N'CreditRating';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'0 = Do not use if another vendor is available. 1 = Preferred over other vendors supplying the same product.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'Vendor', @level2type = N'COLUMN', @level2name = N'PreferredVendorStatus';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'0 = Vendor no longer used. 1 = Vendor is actively used.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'Vendor', @level2type = N'COLUMN', @level2name = N'ActiveFlag';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Vendor URL.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'Vendor', @level2type = N'COLUMN', @level2name = N'PurchasingWebServiceURL';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'Vendor', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [StandardPrice] > (0.00)', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ProductVendor', @level2type = N'CONSTRAINT', @level2name = N'CK_ProductVendor_StandardPrice';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 1 (TRUE)', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'Vendor', @level2type = N'CONSTRAINT', @level2name = N'DF_Vendor_ActiveFlag';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [MinOrderQty] >= (1)', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ProductVendor', @level2type = N'CONSTRAINT', @level2name = N'CK_ProductVendor_MinOrderQty';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'Vendor', @level2type = N'CONSTRAINT', @level2name = N'DF_Vendor_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [MaxOrderQty] >= (1)', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ProductVendor', @level2type = N'CONSTRAINT', @level2name = N'CK_ProductVendor_MaxOrderQty';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 1 (TRUE)', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'Vendor', @level2type = N'CONSTRAINT', @level2name = N'DF_Vendor_PreferredVendorStatus';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [LastReceiptCost] > (0.00)', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ProductVendor', @level2type = N'CONSTRAINT', @level2name = N'CK_ProductVendor_LastReceiptCost';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Individual products associated with a specific purchase order. See PurchaseOrderHeader.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderDetail';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key. Foreign key to PurchaseOrderHeader.PurchaseOrderID.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderDetail', @level2type = N'COLUMN', @level2name = N'PurchaseOrderID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key. One line number per purchased product.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderDetail', @level2type = N'COLUMN', @level2name = N'PurchaseOrderDetailID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date the product is expected to be received.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderDetail', @level2type = N'COLUMN', @level2name = N'DueDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Quantity ordered.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderDetail', @level2type = N'COLUMN', @level2name = N'OrderQty';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Product identification number. Foreign key to Product.ProductID.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderDetail', @level2type = N'COLUMN', @level2name = N'ProductID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Vendor''s selling price of a single product.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderDetail', @level2type = N'COLUMN', @level2name = N'UnitPrice';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Per product subtotal. Computed as OrderQty * UnitPrice.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderDetail', @level2type = N'COLUMN', @level2name = N'LineTotal';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Quantity actually received from the vendor.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderDetail', @level2type = N'COLUMN', @level2name = N'ReceivedQty';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Quantity rejected during inspection.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderDetail', @level2type = N'COLUMN', @level2name = N'RejectedQty';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Quantity accepted into inventory. Computed as ReceivedQty - RejectedQty.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderDetail', @level2type = N'COLUMN', @level2name = N'StockedQty';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderDetail', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 1', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderHeader', @level2type = N'CONSTRAINT', @level2name = N'DF_PurchaseOrderHeader_Status';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [ReceivedQty] >= (0.00)', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderDetail', @level2type = N'CONSTRAINT', @level2name = N'CK_PurchaseOrderDetail_ReceivedQty';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 0', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderHeader', @level2type = N'CONSTRAINT', @level2name = N'DF_PurchaseOrderHeader_RevisionNumber';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'General purchase order information. See PurchaseOrderDetail.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderHeader';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderHeader', @level2type = N'COLUMN', @level2name = N'PurchaseOrderID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Incremental number to track changes to the purchase order over time.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderHeader', @level2type = N'COLUMN', @level2name = N'RevisionNumber';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Order current status. 1 = Pending; 2 = Approved; 3 = Rejected; 4 = Complete', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderHeader', @level2type = N'COLUMN', @level2name = N'Status';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Employee who created the purchase order. Foreign key to Employee.BusinessEntityID.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderHeader', @level2type = N'COLUMN', @level2name = N'EmployeeID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Vendor with whom the purchase order is placed. Foreign key to Vendor.BusinessEntityID.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderHeader', @level2type = N'COLUMN', @level2name = N'VendorID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Shipping method. Foreign key to ShipMethod.ShipMethodID.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderHeader', @level2type = N'COLUMN', @level2name = N'ShipMethodID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Purchase order creation date.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderHeader', @level2type = N'COLUMN', @level2name = N'OrderDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Estimated shipment date from the vendor.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderHeader', @level2type = N'COLUMN', @level2name = N'ShipDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Purchase order subtotal. Computed as SUM(PurchaseOrderDetail.LineTotal)for the appropriate PurchaseOrderID.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderHeader', @level2type = N'COLUMN', @level2name = N'SubTotal';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Tax amount.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderHeader', @level2type = N'COLUMN', @level2name = N'TaxAmt';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Shipping cost.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderHeader', @level2type = N'COLUMN', @level2name = N'Freight';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Total due to vendor. Computed as Subtotal + TaxAmt + Freight.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderHeader', @level2type = N'COLUMN', @level2name = N'TotalDue';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderHeader', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [RejectedQty] >= (0.00)', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderDetail', @level2type = N'CONSTRAINT', @level2name = N'CK_PurchaseOrderDetail_RejectedQty';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [UnitPrice] >= (0.00)', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderDetail', @level2type = N'CONSTRAINT', @level2name = N'CK_PurchaseOrderDetail_UnitPrice';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [CreditRating] BETWEEN (1) AND (5)', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'Vendor', @level2type = N'CONSTRAINT', @level2name = N'CK_Vendor_CreditRating';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [OnOrderQty] >= (0)', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ProductVendor', @level2type = N'CONSTRAINT', @level2name = N'CK_ProductVendor_OnOrderQty';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [OrderQty] > (0)', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderDetail', @level2type = N'CONSTRAINT', @level2name = N'CK_PurchaseOrderDetail_OrderQty';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderDetail', @level2type = N'CONSTRAINT', @level2name = N'DF_PurchaseOrderDetail_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Vendor (company) names and addresses .', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'VIEW', @level1name = N'vVendorWithAddresses';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'Vendor', @level2type = N'CONSTRAINT', @level2name = N'PK_Vendor_BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ShipMethod', @level2type = N'CONSTRAINT', @level2name = N'PK_ShipMethod_ShipMethodID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'INSTEAD OF DELETE trigger which keeps Vendors from being deleted.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'Vendor', @level2type = N'TRIGGER', @level2name = N'dVendor';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderDetail', @level2type = N'CONSTRAINT', @level2name = N'PK_PurchaseOrderDetail_PurchaseOrderID_PurchaseOrderDetailID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ProductVendor', @level2type = N'CONSTRAINT', @level2name = N'PK_ProductVendor_ProductID_BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'AFTER UPDATE trigger that inserts a row in the TransactionHistory table, updates ModifiedDate in PurchaseOrderDetail and updates the PurchaseOrderHeader.SubTotal column.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderDetail', @level2type = N'TRIGGER', @level2name = N'uPurchaseOrderDetail';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'AFTER UPDATE trigger that updates the RevisionNumber and ModifiedDate columns in the PurchaseOrderHeader table.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderHeader', @level2type = N'TRIGGER', @level2name = N'uPurchaseOrderHeader';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'AFTER INSERT trigger that inserts a row in the TransactionHistory table and updates the PurchaseOrderHeader.SubTotal column.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderDetail', @level2type = N'TRIGGER', @level2name = N'iPurchaseOrderDetail';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderHeader', @level2type = N'CONSTRAINT', @level2name = N'PK_PurchaseOrderHeader_PurchaseOrderID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing BusinessEntity.BusinessEntityID', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'Vendor', @level2type = N'CONSTRAINT', @level2name = N'FK_Vendor_BusinessEntity_BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Vendor (company) names  and the names of vendor employees to contact.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'VIEW', @level1name = N'vVendorWithContacts';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 0.0', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ShipMethod', @level2type = N'CONSTRAINT', @level2name = N'DF_ShipMethod_ShipRate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 0.0', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ShipMethod', @level2type = N'CONSTRAINT', @level2name = N'DF_ShipMethod_ShipBase';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Shipping company lookup table.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ShipMethod';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for ShipMethod records.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ShipMethod', @level2type = N'COLUMN', @level2name = N'ShipMethodID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Shipping company name.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ShipMethod', @level2type = N'COLUMN', @level2name = N'Name';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Minimum shipping charge.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ShipMethod', @level2type = N'COLUMN', @level2name = N'ShipBase';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Shipping charge per pound.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ShipMethod', @level2type = N'COLUMN', @level2name = N'ShipRate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ShipMethod', @level2type = N'COLUMN', @level2name = N'rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ShipMethod', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of NEWID()', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ShipMethod', @level2type = N'CONSTRAINT', @level2name = N'DF_ShipMethod_rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [ShipRate] > (0.00)', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ShipMethod', @level2type = N'CONSTRAINT', @level2name = N'CK_ShipMethod_ShipRate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [ShipBase] > (0.00)', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ShipMethod', @level2type = N'CONSTRAINT', @level2name = N'CK_ShipMethod_ShipBase';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ShipMethod', @level2type = N'CONSTRAINT', @level2name = N'DF_ShipMethod_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 1', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'ShoppingCartItem', @level2type = N'CONSTRAINT', @level2name = N'DF_ShoppingCartItem_Quantity';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Contains online customer orders until the order is submitted or cancelled.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'ShoppingCartItem';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for ShoppingCartItem records.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'ShoppingCartItem', @level2type = N'COLUMN', @level2name = N'ShoppingCartItemID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Shopping cart identification number.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'ShoppingCartItem', @level2type = N'COLUMN', @level2name = N'ShoppingCartID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Product quantity ordered.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'ShoppingCartItem', @level2type = N'COLUMN', @level2name = N'Quantity';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Product ordered. Foreign key to Product.ProductID.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'ShoppingCartItem', @level2type = N'COLUMN', @level2name = N'ProductID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date the time the record was created.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'ShoppingCartItem', @level2type = N'COLUMN', @level2name = N'DateCreated';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'ShoppingCartItem', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'ShoppingCartItem', @level2type = N'CONSTRAINT', @level2name = N'DF_ShoppingCartItem_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'ShoppingCartItem', @level2type = N'CONSTRAINT', @level2name = N'DF_ShoppingCartItem_DateCreated';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [Quantity] >= (1)', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'ShoppingCartItem', @level2type = N'CONSTRAINT', @level2name = N'CK_ShoppingCartItem_Quantity';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Sale discounts lookup table.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SpecialOffer';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for SpecialOffer records.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SpecialOffer', @level2type = N'COLUMN', @level2name = N'SpecialOfferID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Discount description.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SpecialOffer', @level2type = N'COLUMN', @level2name = N'Description';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Discount precentage.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SpecialOffer', @level2type = N'COLUMN', @level2name = N'DiscountPct';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Discount type category.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SpecialOffer', @level2type = N'COLUMN', @level2name = N'Type';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Group the discount applies to such as Reseller or Customer.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SpecialOffer', @level2type = N'COLUMN', @level2name = N'Category';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Discount start date.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SpecialOffer', @level2type = N'COLUMN', @level2name = N'StartDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Discount end date.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SpecialOffer', @level2type = N'COLUMN', @level2name = N'EndDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Minimum discount percent allowed.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SpecialOffer', @level2type = N'COLUMN', @level2name = N'MinQty';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Maximum discount percent allowed.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SpecialOffer', @level2type = N'COLUMN', @level2name = N'MaxQty';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SpecialOffer', @level2type = N'COLUMN', @level2name = N'rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SpecialOffer', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 0.0', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SpecialOffer', @level2type = N'CONSTRAINT', @level2name = N'DF_SpecialOffer_MinQty';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 0.0', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SpecialOffer', @level2type = N'CONSTRAINT', @level2name = N'DF_SpecialOffer_DiscountPct';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [EndDate] >= [StartDate]', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SpecialOffer', @level2type = N'CONSTRAINT', @level2name = N'CK_SpecialOffer_EndDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SpecialOffer', @level2type = N'CONSTRAINT', @level2name = N'DF_SpecialOffer_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of NEWID()', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SpecialOffer', @level2type = N'CONSTRAINT', @level2name = N'DF_SpecialOffer_rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [DiscountPct] >= (0.00)', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SpecialOffer', @level2type = N'CONSTRAINT', @level2name = N'CK_SpecialOffer_DiscountPct';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Cross-reference table mapping products to special offer discounts.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SpecialOfferProduct';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for SpecialOfferProduct records.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SpecialOfferProduct', @level2type = N'COLUMN', @level2name = N'SpecialOfferID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Product identification number. Foreign key to Product.ProductID.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SpecialOfferProduct', @level2type = N'COLUMN', @level2name = N'ProductID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SpecialOfferProduct', @level2type = N'COLUMN', @level2name = N'rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SpecialOfferProduct', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [MinQty] >= (0)', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SpecialOffer', @level2type = N'CONSTRAINT', @level2name = N'CK_SpecialOffer_MinQty';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing SalesTerritory.TerritoryID.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Customer', @level2type = N'CONSTRAINT', @level2name = N'FK_Customer_SalesTerritory_TerritoryID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Store', @level2type = N'CONSTRAINT', @level2name = N'DF_Store_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Currency.FromCurrencyCode.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CurrencyRate', @level2type = N'CONSTRAINT', @level2name = N'FK_CurrencyRate_Currency_FromCurrencyCode';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Currency.CurrencyCode.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CountryRegionCurrency', @level2type = N'CONSTRAINT', @level2name = N'FK_CountryRegionCurrency_Currency_CurrencyCode';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of NEWID()', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SpecialOfferProduct', @level2type = N'CONSTRAINT', @level2name = N'DF_SpecialOfferProduct_rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [MaxQty] >= (0)', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SpecialOffer', @level2type = N'CONSTRAINT', @level2name = N'CK_SpecialOffer_MaxQty';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing CountryRegion.CountryRegionCode.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CountryRegionCurrency', @level2type = N'CONSTRAINT', @level2name = N'FK_CountryRegionCurrency_CountryRegion_CountryRegionCode';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SpecialOfferProduct', @level2type = N'CONSTRAINT', @level2name = N'DF_SpecialOfferProduct_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Currency.ToCurrencyCode.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CurrencyRate', @level2type = N'CONSTRAINT', @level2name = N'FK_CurrencyRate_Currency_ToCurrencyCode';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Store.BusinessEntityID.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Customer', @level2type = N'CONSTRAINT', @level2name = N'FK_Customer_Store_StoreID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of NEWID()', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Store', @level2type = N'CONSTRAINT', @level2name = N'DF_Store_rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Person.BusinessEntityID.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Customer', @level2type = N'CONSTRAINT', @level2name = N'FK_Customer_Person_PersonID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Customers (resellers) of Adventure Works products.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Store';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key. Foreign key to Customer.BusinessEntityID.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Store', @level2type = N'COLUMN', @level2name = N'BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Name of the store.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Store', @level2type = N'COLUMN', @level2name = N'Name';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'ID of the sales person assigned to the customer. Foreign key to SalesPerson.BusinessEntityID.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Store', @level2type = N'COLUMN', @level2name = N'SalesPersonID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Demographic informationg about the store such as the number of employees, annual sales and store type.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Store', @level2type = N'COLUMN', @level2name = N'Demographics';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Store', @level2type = N'COLUMN', @level2name = N'rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Store', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [SalesQuota] > (0.00)', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesPerson', @level2type = N'CONSTRAINT', @level2name = N'CK_SalesPerson_SalesQuota';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesPerson', @level2type = N'CONSTRAINT', @level2name = N'DF_SalesPerson_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of NEWID()', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesPerson', @level2type = N'CONSTRAINT', @level2name = N'DF_SalesPerson_rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 0.0', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesPerson', @level2type = N'CONSTRAINT', @level2name = N'DF_SalesPerson_SalesLastYear';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing SalesPerson.SalesPersonID', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Store', @level2type = N'CONSTRAINT', @level2name = N'FK_Store_SalesPerson_SalesPersonID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 0.0', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesPerson', @level2type = N'CONSTRAINT', @level2name = N'DF_SalesPerson_Bonus';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Product.ProductID.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SpecialOfferProduct', @level2type = N'CONSTRAINT', @level2name = N'FK_SpecialOfferProduct_Product_ProductID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 0.0', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesPerson', @level2type = N'CONSTRAINT', @level2name = N'DF_SalesPerson_CommissionPct';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing BusinessEntity.BusinessEntityID', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Store', @level2type = N'CONSTRAINT', @level2name = N'FK_Store_BusinessEntity_BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 0.0', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesPerson', @level2type = N'CONSTRAINT', @level2name = N'DF_SalesPerson_SalesYTD';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Sales representative current information.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesPerson';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for SalesPerson records. Foreign key to Employee.BusinessEntityID', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesPerson', @level2type = N'COLUMN', @level2name = N'BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Territory currently assigned to. Foreign key to SalesTerritory.SalesTerritoryID.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesPerson', @level2type = N'COLUMN', @level2name = N'TerritoryID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Projected yearly sales.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesPerson', @level2type = N'COLUMN', @level2name = N'SalesQuota';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Bonus due if quota is met.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesPerson', @level2type = N'COLUMN', @level2name = N'Bonus';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Commision percent received per sale.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesPerson', @level2type = N'COLUMN', @level2name = N'CommissionPct';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Sales total year to date.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesPerson', @level2type = N'COLUMN', @level2name = N'SalesYTD';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Sales total of previous year.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesPerson', @level2type = N'COLUMN', @level2name = N'SalesLastYear';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesPerson', @level2type = N'COLUMN', @level2name = N'rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesPerson', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing SpecialOffer.SpecialOfferID.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SpecialOfferProduct', @level2type = N'CONSTRAINT', @level2name = N'FK_SpecialOfferProduct_SpecialOffer_SpecialOfferID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeaderSalesReason', @level2type = N'CONSTRAINT', @level2name = N'DF_SalesOrderHeaderSalesReason_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Product.ProductID.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'ShoppingCartItem', @level2type = N'CONSTRAINT', @level2name = N'FK_ShoppingCartItem_Product_ProductID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Cross-reference table mapping sales orders to sales reason codes.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeaderSalesReason';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key. Foreign key to SalesOrderHeader.SalesOrderID.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeaderSalesReason', @level2type = N'COLUMN', @level2name = N'SalesOrderID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key. Foreign key to SalesReason.SalesReasonID.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeaderSalesReason', @level2type = N'COLUMN', @level2name = N'SalesReasonID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeaderSalesReason', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [Freight] >= (0.00)', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'CONSTRAINT', @level2name = N'CK_SalesOrderHeader_Freight';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing SalesTerritory.TerritoryID.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTerritoryHistory', @level2type = N'CONSTRAINT', @level2name = N'FK_SalesTerritoryHistory_SalesTerritory_TerritoryID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing SalesPerson.SalesPersonID.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTerritoryHistory', @level2type = N'CONSTRAINT', @level2name = N'FK_SalesTerritoryHistory_SalesPerson_BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesPersonQuotaHistory', @level2type = N'CONSTRAINT', @level2name = N'DF_SalesPersonQuotaHistory_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'CONSTRAINT', @level2name = N'PK_SalesOrderHeader_SalesOrderID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Lookup table of customer purchase reasons.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesReason';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for SalesReason records.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesReason', @level2type = N'COLUMN', @level2name = N'SalesReasonID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Sales reason description.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesReason', @level2type = N'COLUMN', @level2name = N'Name';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Category the sales reason belongs to.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesReason', @level2type = N'COLUMN', @level2name = N'ReasonType';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesReason', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderDetail', @level2type = N'CONSTRAINT', @level2name = N'PK_SalesOrderDetail_SalesOrderID_SalesOrderDetailID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [SalesQuota] > (0.00)', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesPersonQuotaHistory', @level2type = N'CONSTRAINT', @level2name = N'CK_SalesPersonQuotaHistory_SalesQuota';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'AFTER INSERT, DELETE, UPDATE trigger that inserts a row in the TransactionHistory table, updates ModifiedDate in SalesOrderDetail and updates the SalesOrderHeader.SubTotal column.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderDetail', @level2type = N'TRIGGER', @level2name = N'iduSalesOrderDetail';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeaderSalesReason', @level2type = N'CONSTRAINT', @level2name = N'PK_SalesOrderHeaderSalesReason_SalesOrderID_SalesReasonID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesReason', @level2type = N'CONSTRAINT', @level2name = N'DF_SalesReason_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Sales performance tracking.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesPersonQuotaHistory';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Sales person identification number. Foreign key to SalesPerson.BusinessEntityID.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesPersonQuotaHistory', @level2type = N'COLUMN', @level2name = N'BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Sales quota date.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesPersonQuotaHistory', @level2type = N'COLUMN', @level2name = N'QuotaDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Sales quota amount.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesPersonQuotaHistory', @level2type = N'COLUMN', @level2name = N'SalesQuota';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesPersonQuotaHistory', @level2type = N'COLUMN', @level2name = N'rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesPersonQuotaHistory', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of NEWID()', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesPersonQuotaHistory', @level2type = N'CONSTRAINT', @level2name = N'DF_SalesPersonQuotaHistory_rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [SalesYTD] >= (0.00)', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesPerson', @level2type = N'CONSTRAINT', @level2name = N'CK_SalesPerson_SalesYTD';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [CommissionPct] >= (0.00)', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesPerson', @level2type = N'CONSTRAINT', @level2name = N'CK_SalesPerson_CommissionPct';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [Bonus] >= (0.00)', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesPerson', @level2type = N'CONSTRAINT', @level2name = N'CK_SalesPerson_Bonus';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [SalesLastYear] >= (0.00)', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesPerson', @level2type = N'CONSTRAINT', @level2name = N'CK_SalesPerson_SalesLastYear';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesPersonQuotaHistory', @level2type = N'CONSTRAINT', @level2name = N'PK_SalesPersonQuotaHistory_BusinessEntityID_QuotaDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 0.0', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTaxRate', @level2type = N'CONSTRAINT', @level2name = N'DF_SalesTaxRate_TaxRate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTaxRate', @level2type = N'CONSTRAINT', @level2name = N'PK_SalesTaxRate_SalesTaxRateID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTaxRate', @level2type = N'CONSTRAINT', @level2name = N'DF_SalesTaxRate_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'PersonCreditCard', @level2type = N'CONSTRAINT', @level2name = N'DF_PersonCreditCard_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTerritory', @level2type = N'CONSTRAINT', @level2name = N'PK_SalesTerritory_TerritoryID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [TaxType] BETWEEN (1) AND (3)', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTaxRate', @level2type = N'CONSTRAINT', @level2name = N'CK_SalesTaxRate_TaxType';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesReason', @level2type = N'CONSTRAINT', @level2name = N'PK_SalesReason_SalesReasonID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of NEWID()', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTaxRate', @level2type = N'CONSTRAINT', @level2name = N'DF_SalesTaxRate_rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Cross-reference table mapping people to their credit card information in the CreditCard table. ', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'PersonCreditCard';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Business entity identification number. Foreign key to Person.BusinessEntityID.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'PersonCreditCard', @level2type = N'COLUMN', @level2name = N'BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Credit card identification number. Foreign key to CreditCard.CreditCardID.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'PersonCreditCard', @level2type = N'COLUMN', @level2name = N'CreditCardID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'PersonCreditCard', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'AFTER UPDATE trigger that updates the RevisionNumber and ModifiedDate columns in the SalesOrderHeader table.Updates the SalesYTD column in the SalesPerson and SalesTerritory tables.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'TRIGGER', @level2name = N'uSalesOrderHeader';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesPerson', @level2type = N'CONSTRAINT', @level2name = N'PK_SalesPerson_BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Tax rate lookup table.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTaxRate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for SalesTaxRate records.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTaxRate', @level2type = N'COLUMN', @level2name = N'SalesTaxRateID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'State, province, or country/region the sales tax applies to.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTaxRate', @level2type = N'COLUMN', @level2name = N'StateProvinceID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'1 = Tax applied to retail transactions, 2 = Tax applied to wholesale transactions, 3 = Tax applied to all sales (retail and wholesale) transactions.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTaxRate', @level2type = N'COLUMN', @level2name = N'TaxType';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Tax rate amount.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTaxRate', @level2type = N'COLUMN', @level2name = N'TaxRate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Tax rate description.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTaxRate', @level2type = N'COLUMN', @level2name = N'Name';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTaxRate', @level2type = N'COLUMN', @level2name = N'rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTaxRate', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Displays the content from each element in the xml column Demographics for each customer in the Person.Person table.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'VIEW', @level1name = N'vPersonDemographics';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'ShoppingCartItem', @level2type = N'CONSTRAINT', @level2name = N'PK_ShoppingCartItem_ShoppingCartItemID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 0.0', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTerritory', @level2type = N'CONSTRAINT', @level2name = N'DF_SalesTerritory_CostLastYear';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 0.0', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTerritory', @level2type = N'CONSTRAINT', @level2name = N'DF_SalesTerritory_SalesYTD';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 0.0', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTerritory', @level2type = N'CONSTRAINT', @level2name = N'DF_SalesTerritory_SalesLastYear';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTerritoryHistory', @level2type = N'CONSTRAINT', @level2name = N'PK_SalesTerritoryHistory_BusinessEntityID_StartDate_TerritoryID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Sales territory lookup table.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTerritory';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for SalesTerritory records.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTerritory', @level2type = N'COLUMN', @level2name = N'TerritoryID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Sales territory description', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTerritory', @level2type = N'COLUMN', @level2name = N'Name';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'ISO standard country or region code. Foreign key to CountryRegion.CountryRegionCode. ', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTerritory', @level2type = N'COLUMN', @level2name = N'CountryRegionCode';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Geographic area to which the sales territory belong.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTerritory', @level2type = N'COLUMN', @level2name = N'Group';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Sales in the territory year to date.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTerritory', @level2type = N'COLUMN', @level2name = N'SalesYTD';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Sales in the territory the previous year.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTerritory', @level2type = N'COLUMN', @level2name = N'SalesLastYear';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Business costs in the territory year to date.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTerritory', @level2type = N'COLUMN', @level2name = N'CostYTD';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Business costs in the territory the previous year.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTerritory', @level2type = N'COLUMN', @level2name = N'CostLastYear';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTerritory', @level2type = N'COLUMN', @level2name = N'rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTerritory', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 0.0', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTerritory', @level2type = N'CONSTRAINT', @level2name = N'DF_SalesTerritory_CostYTD';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Individual customers (names and addresses) that purchase Adventure Works Cycles products online.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'VIEW', @level1name = N'vIndividualCustomer';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SpecialOffer', @level2type = N'CONSTRAINT', @level2name = N'PK_SpecialOffer_SpecialOfferID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of NEWID()', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTerritory', @level2type = N'CONSTRAINT', @level2name = N'DF_SalesTerritory_rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Store', @level2type = N'CONSTRAINT', @level2name = N'PK_Store_BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [SalesLastYear] >= (0.00)', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTerritory', @level2type = N'CONSTRAINT', @level2name = N'CK_SalesTerritory_SalesLastYear';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SpecialOfferProduct', @level2type = N'CONSTRAINT', @level2name = N'PK_SpecialOfferProduct_SpecialOfferID_ProductID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTerritory', @level2type = N'CONSTRAINT', @level2name = N'DF_SalesTerritory_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Sales representative transfers to other sales territories.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTerritoryHistory';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key. The sales rep.  Foreign key to SalesPerson.BusinessEntityID.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTerritoryHistory', @level2type = N'COLUMN', @level2name = N'BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key. Territory identification number. Foreign key to SalesTerritory.SalesTerritoryID.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTerritoryHistory', @level2type = N'COLUMN', @level2name = N'TerritoryID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key. Date the sales representive started work in the territory.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTerritoryHistory', @level2type = N'COLUMN', @level2name = N'StartDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date the sales representative left work in the territory.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTerritoryHistory', @level2type = N'COLUMN', @level2name = N'EndDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTerritoryHistory', @level2type = N'COLUMN', @level2name = N'rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTerritoryHistory', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [CostLastYear] >= (0.00)', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTerritory', @level2type = N'CONSTRAINT', @level2name = N'CK_SalesTerritory_CostLastYear';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [CostYTD] >= (0.00)', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTerritory', @level2type = N'CONSTRAINT', @level2name = N'CK_SalesTerritory_CostYTD';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of NEWID()', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTerritoryHistory', @level2type = N'CONSTRAINT', @level2name = N'DF_SalesTerritoryHistory_rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Uses PIVOT to return aggregated sales information for each sales representative.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'VIEW', @level1name = N'vSalesPersonSalesByFiscalYears';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Sales representiatives (names and addresses) and their sales-related information.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'VIEW', @level1name = N'vSalesPerson';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [SalesYTD] >= (0.00)', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTerritory', @level2type = N'CONSTRAINT', @level2name = N'CK_SalesTerritory_SalesYTD';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Stores (including store contacts) that sell Adventure Works Cycles products to consumers.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'VIEW', @level1name = N'vStoreWithContacts';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [EndDate] >= [StartDate] OR [EndDate] IS NULL', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTerritoryHistory', @level2type = N'CONSTRAINT', @level2name = N'CK_SalesTerritoryHistory_EndDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Stores (including demographics) that sell Adventure Works Cycles products to consumers.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'VIEW', @level1name = N'vStoreWithDemographics';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTerritoryHistory', @level2type = N'CONSTRAINT', @level2name = N'DF_SalesTerritoryHistory_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Stores (including store addresses) that sell Adventure Works Cycles products to consumers.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'VIEW', @level1name = N'vStoreWithAddresses';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Customer credit card information.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CreditCard';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for CreditCard records.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CreditCard', @level2type = N'COLUMN', @level2name = N'CreditCardID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Credit card name.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CreditCard', @level2type = N'COLUMN', @level2name = N'CardType';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Credit card number.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CreditCard', @level2type = N'COLUMN', @level2name = N'CardNumber';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Credit card expiration month.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CreditCard', @level2type = N'COLUMN', @level2name = N'ExpMonth';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Credit card expiration year.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CreditCard', @level2type = N'COLUMN', @level2name = N'ExpYear';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CreditCard', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CreditCard', @level2type = N'CONSTRAINT', @level2name = N'DF_CreditCard_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Lookup table containing standard ISO currencies.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Currency';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'The ISO code for the Currency.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Currency', @level2type = N'COLUMN', @level2name = N'CurrencyCode';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Currency name.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Currency', @level2type = N'COLUMN', @level2name = N'Name';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Currency', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Currency', @level2type = N'CONSTRAINT', @level2name = N'DF_Currency_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Currency exchange rates.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CurrencyRate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for CurrencyRate records.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CurrencyRate', @level2type = N'COLUMN', @level2name = N'CurrencyRateID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the exchange rate was obtained.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CurrencyRate', @level2type = N'COLUMN', @level2name = N'CurrencyRateDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Exchange rate was converted from this currency code.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CurrencyRate', @level2type = N'COLUMN', @level2name = N'FromCurrencyCode';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Exchange rate was converted to this currency code.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CurrencyRate', @level2type = N'COLUMN', @level2name = N'ToCurrencyCode';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Average exchange rate for the day.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CurrencyRate', @level2type = N'COLUMN', @level2name = N'AverageRate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Final exchange rate for the day.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CurrencyRate', @level2type = N'COLUMN', @level2name = N'EndOfDayRate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CurrencyRate', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CurrencyRate', @level2type = N'CONSTRAINT', @level2name = N'DF_CurrencyRate_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CountryRegionCurrency', @level2type = N'CONSTRAINT', @level2name = N'DF_CountryRegionCurrency_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Cross-reference table mapping ISO currency codes to a country or region.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CountryRegionCurrency';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'ISO code for countries and regions. Foreign key to CountryRegion.CountryRegionCode.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CountryRegionCurrency', @level2type = N'COLUMN', @level2name = N'CountryRegionCode';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'ISO standard currency code. Foreign key to Currency.CurrencyCode.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CountryRegionCurrency', @level2type = N'COLUMN', @level2name = N'CurrencyCode';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CountryRegionCurrency', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing CreditCard.CreditCardID.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'PersonCreditCard', @level2type = N'CONSTRAINT', @level2name = N'FK_PersonCreditCard_CreditCard_CreditCardID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Person.BusinessEntityID.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'PersonCreditCard', @level2type = N'CONSTRAINT', @level2name = N'FK_PersonCreditCard_Person_BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [OrderQty] > (0)', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderDetail', @level2type = N'CONSTRAINT', @level2name = N'CK_SalesOrderDetail_OrderQty';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing SalesOrderHeader.PurchaseOrderID.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderDetail', @level2type = N'CONSTRAINT', @level2name = N'FK_SalesOrderDetail_SalesOrderHeader_SalesOrderID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Currency', @level2type = N'CONSTRAINT', @level2name = N'PK_Currency_CurrencyCode';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [UnitPrice] >= (0.00)', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderDetail', @level2type = N'CONSTRAINT', @level2name = N'CK_SalesOrderDetail_UnitPrice';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'CONSTRAINT', @level2name = N'DF_SalesOrderHeader_OrderDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing CreditCard.CreditCardID.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'CONSTRAINT', @level2name = N'FK_SalesOrderHeader_CreditCard_CreditCardID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Address.AddressID.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'CONSTRAINT', @level2name = N'FK_SalesOrderHeader_Address_ShipToAddressID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 0', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'CONSTRAINT', @level2name = N'DF_SalesOrderHeader_RevisionNumber';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Address.AddressID.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'CONSTRAINT', @level2name = N'FK_SalesOrderHeader_Address_BillToAddressID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Customer', @level2type = N'CONSTRAINT', @level2name = N'PK_Customer_CustomerID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'General sales order information.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'COLUMN', @level2name = N'SalesOrderID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Incremental number to track changes to the sales order over time.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'COLUMN', @level2name = N'RevisionNumber';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Dates the sales order was created.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'COLUMN', @level2name = N'OrderDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date the order is due to the customer.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'COLUMN', @level2name = N'DueDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date the order was shipped to the customer.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'COLUMN', @level2name = N'ShipDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Order current status. 1 = In process; 2 = Approved; 3 = Backordered; 4 = Rejected; 5 = Shipped; 6 = Cancelled', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'COLUMN', @level2name = N'Status';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'0 = Order placed by sales person. 1 = Order placed online by customer.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'COLUMN', @level2name = N'OnlineOrderFlag';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique sales order identification number.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'COLUMN', @level2name = N'SalesOrderNumber';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Customer purchase order number reference. ', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'COLUMN', @level2name = N'PurchaseOrderNumber';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Financial accounting number reference.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'COLUMN', @level2name = N'AccountNumber';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Customer identification number. Foreign key to Customer.BusinessEntityID.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'COLUMN', @level2name = N'CustomerID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Sales person who created the sales order. Foreign key to SalesPerson.BusinessEntityID.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'COLUMN', @level2name = N'SalesPersonID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Territory in which the sale was made. Foreign key to SalesTerritory.SalesTerritoryID.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'COLUMN', @level2name = N'TerritoryID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Customer billing address. Foreign key to Address.AddressID.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'COLUMN', @level2name = N'BillToAddressID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Customer shipping address. Foreign key to Address.AddressID.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'COLUMN', @level2name = N'ShipToAddressID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Shipping method. Foreign key to ShipMethod.ShipMethodID.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'COLUMN', @level2name = N'ShipMethodID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Credit card identification number. Foreign key to CreditCard.CreditCardID.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'COLUMN', @level2name = N'CreditCardID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Approval code provided by the credit card company.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'COLUMN', @level2name = N'CreditCardApprovalCode';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Currency exchange rate used. Foreign key to CurrencyRate.CurrencyRateID.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'COLUMN', @level2name = N'CurrencyRateID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Sales subtotal. Computed as SUM(SalesOrderDetail.LineTotal)for the appropriate SalesOrderID.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'COLUMN', @level2name = N'SubTotal';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Tax amount.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'COLUMN', @level2name = N'TaxAmt';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Shipping cost.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'COLUMN', @level2name = N'Freight';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Total due from customer. Computed as Subtotal + TaxAmt + Freight.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'COLUMN', @level2name = N'TotalDue';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Sales representative comments.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'COLUMN', @level2name = N'Comment';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'COLUMN', @level2name = N'rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CreditCard', @level2type = N'CONSTRAINT', @level2name = N'PK_CreditCard_CreditCardID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderDetail', @level2type = N'CONSTRAINT', @level2name = N'DF_SalesOrderDetail_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of NEWID()', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderDetail', @level2type = N'CONSTRAINT', @level2name = N'DF_SalesOrderDetail_rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CountryRegionCurrency', @level2type = N'CONSTRAINT', @level2name = N'PK_CountryRegionCurrency_CountryRegionCode_CurrencyCode';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 0.0', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderDetail', @level2type = N'CONSTRAINT', @level2name = N'DF_SalesOrderDetail_UnitPriceDiscount';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing SpecialOfferProduct.SpecialOfferIDProductID.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderDetail', @level2type = N'CONSTRAINT', @level2name = N'FK_SalesOrderDetail_SpecialOfferProduct_SpecialOfferIDProductID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CurrencyRate', @level2type = N'CONSTRAINT', @level2name = N'PK_CurrencyRate_CurrencyRateID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [UnitPriceDiscount] >= (0.00)', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderDetail', @level2type = N'CONSTRAINT', @level2name = N'CK_SalesOrderDetail_UnitPriceDiscount';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Individual products associated with a specific sales order. See SalesOrderHeader.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderDetail';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key. Foreign key to SalesOrderHeader.SalesOrderID.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderDetail', @level2type = N'COLUMN', @level2name = N'SalesOrderID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key. One incremental unique number per product sold.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderDetail', @level2type = N'COLUMN', @level2name = N'SalesOrderDetailID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Shipment tracking number supplied by the shipper.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderDetail', @level2type = N'COLUMN', @level2name = N'CarrierTrackingNumber';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Quantity ordered per product.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderDetail', @level2type = N'COLUMN', @level2name = N'OrderQty';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Product sold to customer. Foreign key to Product.ProductID.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderDetail', @level2type = N'COLUMN', @level2name = N'ProductID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Promotional code. Foreign key to SpecialOffer.SpecialOfferID.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderDetail', @level2type = N'COLUMN', @level2name = N'SpecialOfferID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Selling price of a single product.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderDetail', @level2type = N'COLUMN', @level2name = N'UnitPrice';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Discount amount.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderDetail', @level2type = N'COLUMN', @level2name = N'UnitPriceDiscount';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Per product subtotal. Computed as UnitPrice * (1 - UnitPriceDiscount) * OrderQty.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderDetail', @level2type = N'COLUMN', @level2name = N'LineTotal';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderDetail', @level2type = N'COLUMN', @level2name = N'rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderDetail', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Current customer information. Also see the Person and Store tables.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Customer';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Customer', @level2type = N'COLUMN', @level2name = N'CustomerID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key to Person.BusinessEntityID', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Customer', @level2type = N'COLUMN', @level2name = N'PersonID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key to Store.BusinessEntityID', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Customer', @level2type = N'COLUMN', @level2name = N'StoreID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'ID of the territory in which the customer is located. Foreign key to SalesTerritory.SalesTerritoryID.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Customer', @level2type = N'COLUMN', @level2name = N'TerritoryID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique number identifying the customer assigned by the accounting system.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Customer', @level2type = N'COLUMN', @level2name = N'AccountNumber';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Customer', @level2type = N'COLUMN', @level2name = N'rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Customer', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of NEWID()', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Customer', @level2type = N'CONSTRAINT', @level2name = N'DF_Customer_rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Customer', @level2type = N'CONSTRAINT', @level2name = N'DF_Customer_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTerritoryHistory', @level2type = N'INDEX', @level2name = N'PK_SalesTerritoryHistory_BusinessEntityID_StartDate_TerritoryID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index. Used to support replication samples.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTerritoryHistory', @level2type = N'INDEX', @level2name = N'AK_SalesTerritoryHistory_rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTerritory', @level2type = N'INDEX', @level2name = N'PK_SalesTerritory_TerritoryID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTerritory', @level2type = N'INDEX', @level2name = N'AK_SalesTerritory_Name';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index. Used to support replication samples.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTerritory', @level2type = N'INDEX', @level2name = N'AK_SalesTerritory_rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesReason', @level2type = N'INDEX', @level2name = N'PK_SalesReason_SalesReasonID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTaxRate', @level2type = N'INDEX', @level2name = N'PK_SalesTaxRate_SalesTaxRateID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTaxRate', @level2type = N'INDEX', @level2name = N'AK_SalesTaxRate_StateProvinceID_TaxType';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index. Used to support replication samples.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTaxRate', @level2type = N'INDEX', @level2name = N'AK_SalesTaxRate_rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'PersonCreditCard', @level2type = N'INDEX', @level2name = N'PK_PersonCreditCard_BusinessEntityID_CreditCardID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [TaxAmt] >= (0.00)', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'CONSTRAINT', @level2name = N'CK_SalesOrderHeader_TaxAmt';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [ShipDate] >= [OrderDate] OR [ShipDate] IS NULL', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'CONSTRAINT', @level2name = N'CK_SalesOrderHeader_ShipDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing CountryRegion.CountryRegionCode.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTerritory', @level2type = N'CONSTRAINT', @level2name = N'FK_SalesTerritory_CountryRegion_CountryRegionCode';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeaderSalesReason', @level2type = N'INDEX', @level2name = N'PK_SalesOrderHeaderSalesReason_SalesOrderID_SalesReasonID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesPerson', @level2type = N'INDEX', @level2name = N'PK_SalesPerson_BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index. Used to support replication samples.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesPerson', @level2type = N'INDEX', @level2name = N'AK_SalesPerson_rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [DueDate] >= [OrderDate]', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'CONSTRAINT', @level2name = N'CK_SalesOrderHeader_DueDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing SalesTerritory.TerritoryID.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesPerson', @level2type = N'CONSTRAINT', @level2name = N'FK_SalesPerson_SalesTerritory_TerritoryID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing StateProvince.StateProvinceID.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTaxRate', @level2type = N'CONSTRAINT', @level2name = N'FK_SalesTaxRate_StateProvince_StateProvinceID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'PersonCreditCard', @level2type = N'CONSTRAINT', @level2name = N'PK_PersonCreditCard_BusinessEntityID_CreditCardID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [SubTotal] >= (0.00)', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'CONSTRAINT', @level2name = N'CK_SalesOrderHeader_SubTotal';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing SalesPerson.SalesPersonID.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesPersonQuotaHistory', @level2type = N'CONSTRAINT', @level2name = N'FK_SalesPersonQuotaHistory_SalesPerson_BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of NEWID()', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'CONSTRAINT', @level2name = N'DF_SalesOrderHeader_rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing SalesReason.SalesReasonID.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeaderSalesReason', @level2type = N'CONSTRAINT', @level2name = N'FK_SalesOrderHeaderSalesReason_SalesReason_SalesReasonID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 0.0', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'CONSTRAINT', @level2name = N'DF_SalesOrderHeader_Freight';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing SalesTerritory.TerritoryID.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'CONSTRAINT', @level2name = N'FK_SalesOrderHeader_SalesTerritory_TerritoryID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [Status] BETWEEN (0) AND (8)', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'CONSTRAINT', @level2name = N'CK_SalesOrderHeader_Status';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Employee.EmployeeID.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesPerson', @level2type = N'CONSTRAINT', @level2name = N'FK_SalesPerson_Employee_BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'CONSTRAINT', @level2name = N'DF_SalesOrderHeader_ModifiedDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing SalesOrderHeader.SalesOrderID.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeaderSalesReason', @level2type = N'CONSTRAINT', @level2name = N'FK_SalesOrderHeaderSalesReason_SalesOrderHeader_SalesOrderID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 1', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'CONSTRAINT', @level2name = N'DF_SalesOrderHeader_Status';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing CurrencyRate.CurrencyRateID.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'CONSTRAINT', @level2name = N'FK_SalesOrderHeader_CurrencyRate_CurrencyRateID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 1 (TRUE)', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'CONSTRAINT', @level2name = N'DF_SalesOrderHeader_OnlineOrderFlag';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Customer.CustomerID.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'CONSTRAINT', @level2name = N'FK_SalesOrderHeader_Customer_CustomerID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 0.0', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'CONSTRAINT', @level2name = N'DF_SalesOrderHeader_TaxAmt';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing ShipMethod.ShipMethodID.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'CONSTRAINT', @level2name = N'FK_SalesOrderHeader_ShipMethod_ShipMethodID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 0.0', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'CONSTRAINT', @level2name = N'DF_SalesOrderHeader_SubTotal';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing SalesPerson.SalesPersonID.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'CONSTRAINT', @level2name = N'FK_SalesOrderHeader_SalesPerson_SalesPersonID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Store', @level2type = N'INDEX', @level2name = N'PK_Store_BusinessEntityID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index. Used to support replication samples.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Store', @level2type = N'INDEX', @level2name = N'AK_Store_rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Nonclustered index.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Store', @level2type = N'INDEX', @level2name = N'IX_Store_SalesPersonID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Primary XML index.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Store', @level2type = N'INDEX', @level2name = N'PXML_Store_Demographics';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SpecialOffer', @level2type = N'INDEX', @level2name = N'PK_SpecialOffer_SpecialOfferID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index. Used to support replication samples.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SpecialOffer', @level2type = N'INDEX', @level2name = N'AK_SpecialOffer_rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'ShoppingCartItem', @level2type = N'INDEX', @level2name = N'PK_ShoppingCartItem_ShoppingCartItemID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Nonclustered index.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'ShoppingCartItem', @level2type = N'INDEX', @level2name = N'IX_ShoppingCartItem_ShoppingCartID_ProductID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesPersonQuotaHistory', @level2type = N'INDEX', @level2name = N'PK_SalesPersonQuotaHistory_BusinessEntityID_QuotaDate';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index. Used to support replication samples.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesPersonQuotaHistory', @level2type = N'INDEX', @level2name = N'AK_SalesPersonQuotaHistory_rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SpecialOfferProduct', @level2type = N'INDEX', @level2name = N'PK_SpecialOfferProduct_SpecialOfferID_ProductID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index. Used to support replication samples.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SpecialOfferProduct', @level2type = N'INDEX', @level2name = N'AK_SpecialOfferProduct_rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Nonclustered index.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SpecialOfferProduct', @level2type = N'INDEX', @level2name = N'IX_SpecialOfferProduct_ProductID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CreditCard', @level2type = N'INDEX', @level2name = N'PK_CreditCard_CreditCardID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CreditCard', @level2type = N'INDEX', @level2name = N'AK_CreditCard_CardNumber';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Currency', @level2type = N'INDEX', @level2name = N'PK_Currency_CurrencyCode';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Currency', @level2type = N'INDEX', @level2name = N'AK_Currency_Name';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CountryRegionCurrency', @level2type = N'INDEX', @level2name = N'PK_CountryRegionCurrency_CountryRegionCode_CurrencyCode';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Nonclustered index.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CountryRegionCurrency', @level2type = N'INDEX', @level2name = N'IX_CountryRegionCurrency_CurrencyCode';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CurrencyRate', @level2type = N'INDEX', @level2name = N'PK_CurrencyRate_CurrencyRateID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CurrencyRate', @level2type = N'INDEX', @level2name = N'AK_CurrencyRate_CurrencyRateDate_FromCurrencyCode_ToCurrencyCode';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Customer', @level2type = N'INDEX', @level2name = N'PK_Customer_CustomerID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index. Used to support replication samples.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Customer', @level2type = N'INDEX', @level2name = N'AK_Customer_rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Customer', @level2type = N'INDEX', @level2name = N'AK_Customer_AccountNumber';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Nonclustered index.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Customer', @level2type = N'INDEX', @level2name = N'IX_Customer_TerritoryID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderDetail', @level2type = N'INDEX', @level2name = N'PK_SalesOrderDetail_SalesOrderID_SalesOrderDetailID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index. Used to support replication samples.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderDetail', @level2type = N'INDEX', @level2name = N'AK_SalesOrderDetail_rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Nonclustered index.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderDetail', @level2type = N'INDEX', @level2name = N'IX_SalesOrderDetail_ProductID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index created by a primary key constraint.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'INDEX', @level2name = N'PK_SalesOrderHeader_SalesOrderID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index. Used to support replication samples.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'INDEX', @level2name = N'AK_SalesOrderHeader_rowguid';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'INDEX', @level2name = N'AK_SalesOrderHeader_SalesOrderNumber';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Nonclustered index.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'INDEX', @level2name = N'IX_SalesOrderHeader_CustomerID';
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Nonclustered index.', @level0type = N'Schema', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'INDEX', @level2name = N'IX_SalesOrderHeader_SalesPersonID';
GO -- SQRIBE/GO;341e11
