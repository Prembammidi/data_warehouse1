USE MASTER;


-- creating database
CREATE DATABASE DataWarehouse;

--using datawarehouse
use DataWarehouse;

--Creating Schema
create schema bronze;
go
create schema silver;
go
create schema gold;



if object_id('bronze.crm_cust_info', 'U') is not null
	drop table bronze.crm_cust_info
 create table bronze.crm_cust_info (
 cst_id INT,
 cst_key NVARCHAR(50),
 cst_firstname NVARCHAR(50),
 cst_lastname NVARCHAR(50),
 cst_material_status NVARCHAR(50),
 cst_gndr NVARCHAR(50),
 cst_Create_Date DATE,
 );

 IF OBJECT_ID ('bronze.crm_prd_info', 'U') IS NOT NULL
	DROP tABLE bronze.crm_prd_info;
 create table bronze.crm_prd_info(
 prd_id INT,
 prd_key NVARCHAR(50),
 prd_nm NVARCHAR(50),
 prd_cost INT,
 prd_line NVARCHAR(50),
 prd_start_dt DATEtime,
 prd_end_dt DATETIME,
 );


 if object_id('bronze.crm_sales_details', 'U') IS NOT NULL
	DROP TABLE bronze.crm_sales_details
 create table bronze.crm_sales_details(
 sls_ord_num NVARCHAR(50),
 sls_prd_key NVARCHAR(50),
 sls_cust_id INT,
 sls_order_dt INT,
 sls_ship_dt INT,
 sls_due_dt INT,
 sls_sales INT,
 sls_quantity INT,
 sls_price INT,
 );

 IF OBJECT_ID('bronze.erp_CUST_AZ12 ', 'U') IS NOT NULL
	drop TABLE  bronze.erp_CUST_AZ12 ;
 
 create table bronze.erp_CUST_AZ12 (
 CID NVARCHAR(50),
 BDATE DATE,
 GEN NVARCHAR(50),
 );



 
 if object_id('bronze.erp_LOC_A101', 'U') is not null
	drop table bronze.erp_LOC_A101
 CREATE TABLE bronze.erp_LOC_A101 (
 CID NVARCHAR(50),
 CNTRY NVARCHAR(50),
 );

 if object_id('bronze.erp_PX_CAT_G1V2', 'U') is not null
	drop table bronze.erp_PX_CAT_G1V2
 CREATE TABLE bronze.erp_PX_CAT_G1V2(
 ID NVARCHAR(50),
 CAT NVARCHAR(50),
 SUBCAT NVARCHAR(50),
 MAINTENANCE NVARCHAR(50),
 );



