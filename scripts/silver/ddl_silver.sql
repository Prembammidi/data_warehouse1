
if object_id('silver.crm_cust_info', 'U') is not null
	drop table silver.crm_cust_info
 create table silver.crm_cust_info (
 cst_id INT,
 cst_key NVARCHAR(50),
 cst_firstname NVARCHAR(50),
 cst_lastname NVARCHAR(50),
 cst_material_status NVARCHAR(50),
 cst_gndr NVARCHAR(50),
 cst_Create_Date DATE,
 dwh_create_dte datetime2 default getdate()
 );

 IF OBJECT_ID ('silver.crm_prd_info', 'U') IS NOT NULL
	DROP tABLE silver.crm_prd_info;
 create table silver.crm_prd_info(
 prd_id INT,
 cat_id nvarchar(50),
 prd_key NVARCHAR(50),
 prd_nm NVARCHAR(50),
 prd_cost INT,
 prd_line NVARCHAR(50),
 prd_start_dt DATE,
 prd_end_dt DATE,
 dwh_create_dte datetime2 default getdate()
 );


 if object_id('silver.crm_sales_details', 'U') IS NOT NULL
	DROP TABLE silver.crm_sales_details
 create table silver.crm_sales_details(
 sls_ord_num NVARCHAR(50),
 sls_prd_key NVARCHAR(50),
 sls_cust_id INT,
 sls_order_dt date,
 sls_ship_dt date,
 sls_due_dt date,
 sls_sales INT,
 sls_quantity INT,
 sls_price INT,
 dwh_create_dte datetime2 default getdate()
 );

 IF OBJECT_ID('silver.erp_CUST_AZ12 ', 'U') IS NOT NULL
	drop TABLE  silver.erp_CUST_AZ12 ;
 
 create table silver.erp_CUST_AZ12 (
 CID NVARCHAR(50),
 BDATE DATE,
 GEN NVARCHAR(50),
 dwh_create_dte datetime2 default getdate()
 );



 
 if object_id('silver.erp_LOC_A101', 'U') is not null
	drop table silver.erp_LOC_A101
 CREATE TABLE silver.erp_LOC_A101 (
 CID NVARCHAR(50),
 CNTRY NVARCHAR(50),
 dwh_create_dte datetime2 default getdate()
 );

 if object_id('silver.erp_PX_CAT_G1V2', 'U') is not null
	drop table silver.erp_PX_CAT_G1V2
 CREATE TABLE silver.erp_PX_CAT_G1V2(
 ID NVARCHAR(50),
 CAT NVARCHAR(50),
 SUBCAT NVARCHAR(50),
 MAINTENANCE NVARCHAR(50),
 dwh_create_dte datetime2 default getdate()
 );

  

