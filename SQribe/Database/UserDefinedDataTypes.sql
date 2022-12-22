﻿SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;341e11
PRINT N'CREATE user-defined data types'
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TYPE [dbo].[AccountNumber] FROM nvarchar(15) NULL
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TYPE [dbo].[Flag] FROM bit NOT NULL
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TYPE [dbo].[NameStyle] FROM bit NOT NULL
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TYPE [dbo].[Name] FROM nvarchar(50) NULL
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TYPE [dbo].[OrderNumber] FROM nvarchar(25) NULL
GO -- SQRIBE/GO;341e11

-- SQRIBE/OBJ;341e11
CREATE TYPE [dbo].[Phone] FROM nvarchar(25) NULL
GO -- SQRIBE/GO;341e11
