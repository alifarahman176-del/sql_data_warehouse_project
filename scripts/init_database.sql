/*
=============================================================
Create Database and Schemas
=============================================================

Purpose:
    - Creates the 'DataWarehouse' database
    - Drops and recreates the database if it already exists
    - Initializes three schemas: bronze, silver, and gold

Schemas:
    bronze  -> Raw / source data
    silver  -> Cleaned and transformed data
    gold    -> Analytics-ready data

WARNING:
    This script will DROP the 'DataWarehouse' database
    if it already exists. All data will be permanently
    deleted. Ensure backups exist before running.
=============================================================
*/

USE master;
GO

-- Check if the database exists and drop it
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse 
    SET SINGLE_USER 
    WITH ROLLBACK IMMEDIATE;

    DROP DATABASE DataWarehouse;
END;
GO

-- Create the DataWarehouse database
CREATE DATABASE DataWarehouse;
GO

-- Switch context to the new database
USE DataWarehouse;
GO

-- Create schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
