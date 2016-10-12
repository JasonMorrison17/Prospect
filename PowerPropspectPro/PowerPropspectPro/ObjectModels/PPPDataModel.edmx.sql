
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/09/2016 22:23:15
-- Generated from EDMX file: C:\Users\Jason\Source\Repos\Prospect\PowerPropspectPro\PowerPropspectPro\ObjectModels\PPPDataModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Power Prospect Pro];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_ContactAddress]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Addresses] DROP CONSTRAINT [FK_ContactAddress];
GO
IF OBJECT_ID(N'[dbo].[FK_CustomerEmployee]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Employees] DROP CONSTRAINT [FK_CustomerEmployee];
GO
IF OBJECT_ID(N'[dbo].[FK_CustomerProspect]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Prospects] DROP CONSTRAINT [FK_CustomerProspect];
GO
IF OBJECT_ID(N'[dbo].[FK_ProspectContact]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Contacts] DROP CONSTRAINT [FK_ProspectContact];
GO
IF OBJECT_ID(N'[dbo].[FK_ProspectTouch]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Touches] DROP CONSTRAINT [FK_ProspectTouch];
GO
IF OBJECT_ID(N'[dbo].[FK_EmployeeTouch]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Touches] DROP CONSTRAINT [FK_EmployeeTouch];
GO
IF OBJECT_ID(N'[dbo].[FK_ProspectAddress]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Addresses] DROP CONSTRAINT [FK_ProspectAddress];
GO
IF OBJECT_ID(N'[dbo].[FK_CustomerAddress]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Addresses] DROP CONSTRAINT [FK_CustomerAddress];
GO
IF OBJECT_ID(N'[dbo].[FK_CustomerCredentials]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Customers] DROP CONSTRAINT [FK_CustomerCredentials];
GO
IF OBJECT_ID(N'[dbo].[FK_EmployeeCredentials]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Employees] DROP CONSTRAINT [FK_EmployeeCredentials];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Customers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Customers];
GO
IF OBJECT_ID(N'[dbo].[Employees]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Employees];
GO
IF OBJECT_ID(N'[dbo].[Prospects]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Prospects];
GO
IF OBJECT_ID(N'[dbo].[Touches]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Touches];
GO
IF OBJECT_ID(N'[dbo].[Contacts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Contacts];
GO
IF OBJECT_ID(N'[dbo].[Addresses]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Addresses];
GO
IF OBJECT_ID(N'[dbo].[Credentials]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Credentials];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Customers'
CREATE TABLE [dbo].[Customers] (
    [CustomerId] int IDENTITY(1,1) NOT NULL,
    [CustomerName] nvarchar(max)  NOT NULL,
    [Credentials_CredentialId] int  NOT NULL
);
GO

-- Creating table 'Employees'
CREATE TABLE [dbo].[Employees] (
    [EmployeeId] int IDENTITY(1,1) NOT NULL,
    [EmployeeFirstName] nvarchar(max)  NOT NULL,
    [EmployeeLastName] nvarchar(max)  NOT NULL,
    [EmployeeDesignation] nvarchar(max)  NOT NULL,
    [EmployeeTerritory] nvarchar(max)  NOT NULL,
    [Customer_CustomerId] int  NOT NULL,
    [Credentials_CredentialId] int  NOT NULL
);
GO

-- Creating table 'Prospects'
CREATE TABLE [dbo].[Prospects] (
    [ProspectId] int IDENTITY(1,1) NOT NULL,
    [ProspectName] nvarchar(max)  NOT NULL,
    [ProspectSource] nvarchar(max)  NOT NULL,
    [ProspectDateAdded] nvarchar(max)  NOT NULL,
    [ProspectAssignedTo] nvarchar(max)  NOT NULL,
    [ProspectNumber] nvarchar(max)  NOT NULL,
    [Customer_CustomerId] int  NOT NULL
);
GO

-- Creating table 'Touches'
CREATE TABLE [dbo].[Touches] (
    [TouchId] int IDENTITY(1,1) NOT NULL,
    [TouchDate] nvarchar(max)  NOT NULL,
    [TouchType] nvarchar(max)  NOT NULL,
    [TouchNotes] nvarchar(max)  NOT NULL,
    [Prospect_ProspectId] int  NOT NULL,
    [Employee_EmployeeId] int  NOT NULL
);
GO

-- Creating table 'Contacts'
CREATE TABLE [dbo].[Contacts] (
    [ContactId] int IDENTITY(1,1) NOT NULL,
    [ContactFirstName] nvarchar(max)  NOT NULL,
    [ContactLastName] nvarchar(max)  NOT NULL,
    [ContactTitle] nvarchar(max)  NOT NULL,
    [ContactBusPhone] nvarchar(max)  NOT NULL,
    [ContactExtension] nvarchar(max)  NOT NULL,
    [ContactCellPhone] nvarchar(max)  NOT NULL,
    [ContactEmail] nvarchar(max)  NOT NULL,
    [ContactDecisionMaker] nvarchar(max)  NOT NULL,
    [ContactNotes] nvarchar(max)  NOT NULL,
    [Prospect_ProspectId] int  NOT NULL
);
GO

-- Creating table 'Addresses'
CREATE TABLE [dbo].[Addresses] (
    [AddrId] int IDENTITY(1,1) NOT NULL,
    [AddrLine1] nvarchar(max)  NOT NULL,
    [AddrLine2] nvarchar(max)  NOT NULL,
    [AddrZip] nvarchar(max)  NOT NULL,
    [AddrZip4] nvarchar(max)  NOT NULL,
    [Country] nvarchar(max)  NOT NULL,
    [State] nvarchar(max)  NOT NULL,
    [Contact_ContactId] int  NOT NULL,
    [Prospect_ProspectId] int  NOT NULL,
    [Customer_CustomerId] int  NOT NULL
);
GO

-- Creating table 'Credentials'
CREATE TABLE [dbo].[Credentials] (
    [CredentialId] int IDENTITY(1,1) NOT NULL,
    [AccountEmail] nvarchar(max)  NOT NULL,
    [AccountPassword] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [CustomerId] in table 'Customers'
ALTER TABLE [dbo].[Customers]
ADD CONSTRAINT [PK_Customers]
    PRIMARY KEY CLUSTERED ([CustomerId] ASC);
GO

-- Creating primary key on [EmployeeId] in table 'Employees'
ALTER TABLE [dbo].[Employees]
ADD CONSTRAINT [PK_Employees]
    PRIMARY KEY CLUSTERED ([EmployeeId] ASC);
GO

-- Creating primary key on [ProspectId] in table 'Prospects'
ALTER TABLE [dbo].[Prospects]
ADD CONSTRAINT [PK_Prospects]
    PRIMARY KEY CLUSTERED ([ProspectId] ASC);
GO

-- Creating primary key on [TouchId] in table 'Touches'
ALTER TABLE [dbo].[Touches]
ADD CONSTRAINT [PK_Touches]
    PRIMARY KEY CLUSTERED ([TouchId] ASC);
GO

-- Creating primary key on [ContactId] in table 'Contacts'
ALTER TABLE [dbo].[Contacts]
ADD CONSTRAINT [PK_Contacts]
    PRIMARY KEY CLUSTERED ([ContactId] ASC);
GO

-- Creating primary key on [AddrId] in table 'Addresses'
ALTER TABLE [dbo].[Addresses]
ADD CONSTRAINT [PK_Addresses]
    PRIMARY KEY CLUSTERED ([AddrId] ASC);
GO

-- Creating primary key on [CredentialId] in table 'Credentials'
ALTER TABLE [dbo].[Credentials]
ADD CONSTRAINT [PK_Credentials]
    PRIMARY KEY CLUSTERED ([CredentialId] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Contact_ContactId] in table 'Addresses'
ALTER TABLE [dbo].[Addresses]
ADD CONSTRAINT [FK_ContactAddress]
    FOREIGN KEY ([Contact_ContactId])
    REFERENCES [dbo].[Contacts]
        ([ContactId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ContactAddress'
CREATE INDEX [IX_FK_ContactAddress]
ON [dbo].[Addresses]
    ([Contact_ContactId]);
GO

-- Creating foreign key on [Customer_CustomerId] in table 'Employees'
ALTER TABLE [dbo].[Employees]
ADD CONSTRAINT [FK_CustomerEmployee]
    FOREIGN KEY ([Customer_CustomerId])
    REFERENCES [dbo].[Customers]
        ([CustomerId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CustomerEmployee'
CREATE INDEX [IX_FK_CustomerEmployee]
ON [dbo].[Employees]
    ([Customer_CustomerId]);
GO

-- Creating foreign key on [Customer_CustomerId] in table 'Prospects'
ALTER TABLE [dbo].[Prospects]
ADD CONSTRAINT [FK_CustomerProspect]
    FOREIGN KEY ([Customer_CustomerId])
    REFERENCES [dbo].[Customers]
        ([CustomerId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CustomerProspect'
CREATE INDEX [IX_FK_CustomerProspect]
ON [dbo].[Prospects]
    ([Customer_CustomerId]);
GO

-- Creating foreign key on [Prospect_ProspectId] in table 'Contacts'
ALTER TABLE [dbo].[Contacts]
ADD CONSTRAINT [FK_ProspectContact]
    FOREIGN KEY ([Prospect_ProspectId])
    REFERENCES [dbo].[Prospects]
        ([ProspectId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProspectContact'
CREATE INDEX [IX_FK_ProspectContact]
ON [dbo].[Contacts]
    ([Prospect_ProspectId]);
GO

-- Creating foreign key on [Prospect_ProspectId] in table 'Touches'
ALTER TABLE [dbo].[Touches]
ADD CONSTRAINT [FK_ProspectTouch]
    FOREIGN KEY ([Prospect_ProspectId])
    REFERENCES [dbo].[Prospects]
        ([ProspectId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProspectTouch'
CREATE INDEX [IX_FK_ProspectTouch]
ON [dbo].[Touches]
    ([Prospect_ProspectId]);
GO

-- Creating foreign key on [Employee_EmployeeId] in table 'Touches'
ALTER TABLE [dbo].[Touches]
ADD CONSTRAINT [FK_EmployeeTouch]
    FOREIGN KEY ([Employee_EmployeeId])
    REFERENCES [dbo].[Employees]
        ([EmployeeId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EmployeeTouch'
CREATE INDEX [IX_FK_EmployeeTouch]
ON [dbo].[Touches]
    ([Employee_EmployeeId]);
GO

-- Creating foreign key on [Prospect_ProspectId] in table 'Addresses'
ALTER TABLE [dbo].[Addresses]
ADD CONSTRAINT [FK_ProspectAddress]
    FOREIGN KEY ([Prospect_ProspectId])
    REFERENCES [dbo].[Prospects]
        ([ProspectId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProspectAddress'
CREATE INDEX [IX_FK_ProspectAddress]
ON [dbo].[Addresses]
    ([Prospect_ProspectId]);
GO

-- Creating foreign key on [Customer_CustomerId] in table 'Addresses'
ALTER TABLE [dbo].[Addresses]
ADD CONSTRAINT [FK_CustomerAddress]
    FOREIGN KEY ([Customer_CustomerId])
    REFERENCES [dbo].[Customers]
        ([CustomerId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CustomerAddress'
CREATE INDEX [IX_FK_CustomerAddress]
ON [dbo].[Addresses]
    ([Customer_CustomerId]);
GO

-- Creating foreign key on [Credentials_CredentialId] in table 'Customers'
ALTER TABLE [dbo].[Customers]
ADD CONSTRAINT [FK_CustomerCredentials]
    FOREIGN KEY ([Credentials_CredentialId])
    REFERENCES [dbo].[Credentials]
        ([CredentialId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CustomerCredentials'
CREATE INDEX [IX_FK_CustomerCredentials]
ON [dbo].[Customers]
    ([Credentials_CredentialId]);
GO

-- Creating foreign key on [Credentials_CredentialId] in table 'Employees'
ALTER TABLE [dbo].[Employees]
ADD CONSTRAINT [FK_EmployeeCredentials]
    FOREIGN KEY ([Credentials_CredentialId])
    REFERENCES [dbo].[Credentials]
        ([CredentialId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EmployeeCredentials'
CREATE INDEX [IX_FK_EmployeeCredentials]
ON [dbo].[Employees]
    ([Credentials_CredentialId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------