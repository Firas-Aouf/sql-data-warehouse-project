/* 
=======================================
Create Database and schemas
=======================================
Script purpose:
this script creates a new database named 'DataWarehouse" after checking if it already exists or not.
if it does exist it will be dropped and recreated. 
finally the script creates the schemas within the DB: 'bronze' 'silver 'gold'.

Warning:
Running this script will immmidiatly drop the entire 'DataWarehouse' database if it exists, use with caution
/*

USE master;
GO

-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO

