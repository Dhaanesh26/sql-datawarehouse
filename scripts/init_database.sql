/* 
============================================================
Create Database and Schemas
============================================================
Script purpose:
  This script creates a new database called "DataWarehouse". It is advisable to check if the database already exists in sql server.
  If it exists, it should be dropped and recreated. The script sets up three schemas within the database: 'bronze', 'silver' and 'gold'
*/

-- create database called DataWarehouse
CREATE DATABASE DataWarehouse;

USE DataWarehouse;

-- create schema's for each layer of medellion database architecture
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO

