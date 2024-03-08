
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 03/08/2024 13:17:09
-- Generated from EDMX file: C:\Users\opilane\source\repos\TimurDenisenkoTARpv22\Lennujaam\mudel_lennujaam.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [mudel_lennujaam];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'LendSet1'
CREATE TABLE [dbo].[LendSet1] (
    [lendId] int IDENTITY(1,1) NOT NULL,
    [kestvus] int  NOT NULL,
    [kohtade_arv] int  NOT NULL,
    [lennu_nr] nvarchar(max)  NOT NULL,
    [lopetatud] datetime  NOT NULL,
    [ots] nvarchar(max)  NOT NULL,
    [reisijate_arv] int  NOT NULL,
    [siht] nvarchar(max)  NOT NULL,
    [valjumisaeg] datetime  NOT NULL
);
GO

-- Creating table 'KasutajaSet'
CREATE TABLE [dbo].[KasutajaSet] (
    [kasutajaId] int IDENTITY(1,1) NOT NULL,
    [eesnimi] nvarchar(max)  NOT NULL,
    [onAdmin] nvarchar(max)  NOT NULL,
    [parool] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [lendId] in table 'LendSet1'
ALTER TABLE [dbo].[LendSet1]
ADD CONSTRAINT [PK_LendSet1]
    PRIMARY KEY CLUSTERED ([lendId] ASC);
GO

-- Creating primary key on [kasutajaId] in table 'KasutajaSet'
ALTER TABLE [dbo].[KasutajaSet]
ADD CONSTRAINT [PK_KasutajaSet]
    PRIMARY KEY CLUSTERED ([kasutajaId] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------