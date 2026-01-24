## 🗄️ Database Initialization & Schema Setup

This script is responsible for **creating and initializing the Data Warehouse environment**.  
It ensures a clean setup by recreating the database and defining the core schemas used in the data pipeline.

---

### 🎯 Purpose

- Create a SQL Server database named **`DataWarehouse`**
- Recreate the database if it already exists
- Set up a **layered schema architecture**:
  - **bronze** – Raw ingested data
  - **silver** – Cleaned and transformed data
  - **gold** – Analytics-ready, business-level data

---

### ⚠️ Warning

> **Running this script will permanently delete the existing `DataWarehouse` database (if present).**  
> All stored data will be lost.  
> **Ensure backups are taken before execution.**

---

### 🧱 Database & Schema Creation Script

```sql
/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'DataWarehouse'
    after checking if it already exists. If the database exists,
    it is dropped and recreated. The script also creates three
    schemas: bronze, silver, and gold.

WARNING:
    Running this script will drop the entire 'DataWarehouse'
    database if it exists. All data will be permanently deleted.
=============================================================
*/

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

-- Create schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
