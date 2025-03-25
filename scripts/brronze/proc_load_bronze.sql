exec bronze.load_bronze
   
create or alter procedure bronze.load_bronze as
begin 
	declare @start_time DATETIME, @end_time DATETIME, @batch_start_time DATETIME, @batch_end_time DATETIME;
	begin try 
	     set @batch_start_time = GETDATE();
		 print '=======================================================';
		 print 'LOADING BRONZE LAYER';
		 print '-------------------------------------------------------' ;

		 PRINT '--------------------------------------------------------';
		 PRINT 'LOADING CRM TABLE';
		 PRINT '---------------------------------------------------------';

		 set @start_time = GETDATE();
		 PRINT '>> Truncating Table : bronze.crm_cust_info';
		 Truncate table bronze.crm_cust_info;
		 PRINT '>> Inserting data into : bronze.crm_cust_info';
		 BULK INSERT bronze.crm_cust_info 
		 from 'E:\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
		 with (firstrow = 2, fieldterminator = ',', tablock);
		 set @end_time = GETDATE();
		 print '>>Load Duration :' + cast(DATEDIFF(second, @start_time, @end_time) as nvarchar) + 'seconds';
		 print '--------------';
	 
	    set @start_time = GETDATE();
		truncate table bronze.crm_prd_info;
		bulk insert bronze.crm_prd_info 
		from 'E:\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
		with (firstrow = 2, fieldterminator = ',', tablock);
		set @end_time = GETDATE();
		print '>>Load Duration :'+ cast(datediff(second, @start_time, @end_time) as nvarchar) + 'seconds';
		print '-----------';
	
	    set @start_time = getdate();
		truncate table bronze.crm_sales_details;
		bulk insert bronze.crm_sales_details 
		from 'E:\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
		with (firstrow = 2, fieldterminator = ',', tablock);
		set @end_time = getdate();
		print '>>Load_Duratin:'+ cast(datediff(second, @start_time, @end_time) as nvarchar) + 'seconds';
		print '-------------'

	
	    set @start_time = getdate()
		PRINT '------------------------------------------------------------';
		PRINT 'LOADING ERP TABLES';
		PRINT '-------------------------------------------------------------';
		truncate table bronze.erp_CUST_AZ12;
		bulk insert bronze.erp_CUST_AZ12 
		from 'E:\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\CUST_AZ12.csv'
		with (firstrow = 2, fieldterminator = ',', tablock);
		set @end_time = getdate()
		print '>>load duration:'+ cast(datediff(second, @start_time, @end_time) as nvarchar) + 'seconds';
		print '---------'


	
	    set @start_time = getdate()
		truncate table bronze.erp_LOC_A101;
		bulk insert bronze.erp_LOC_A101 
		from 'E:\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\LOC_A101.csv'
		with (firstrow = 2, fieldterminator = ',', tablock);
		set @end_time = getdate()
		print '>>Load Duratinon:' + cast(datediff(second, @start_time, @end_time) as nvarchar) + 'seconds';
		print '---------------'


	
	    set @start_time = getdate()
		truncate table bronze.erp_PX_CAT_G1V2;
		bulk insert bronze.erp_PX_CAT_G1V2
		from 'E:\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\PX_CAT_G1V2.csv'
		with (firstrow = 2, fieldterminator = ',',  tablock);
		set @end_time = getdate()
		print '>>load duration:' + cast(datediff(second, @start_time, @end_time) as nvarchar) +'seconds';
		print '----------'

		set @batch_end_time = GETDATE();

		print '>>Bronze layer load duration' + cast(DATEDIFF(second, @batch_start_time, @batch_end_time) as nvarchar) + 'seconds';
	end try
	begin catch
		print '===================================================='
		print 'error occured during loading bronze'
		print 'ERROR MESSAGE ' + ERROR_MESSAGE();
		print 'ERROR MESSAGE' + cast(ERROR_NUMBER() as nvarchar);
		print 'ERROR_MESSAGE' + cast(ERROR_STATE() as nvarchar);
		print '======================================================'
	end catch
end;
