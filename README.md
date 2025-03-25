# data_warehouse1

# Data Pipeline: End-to-End Data Processing and Architecture

## 📌 Project Overview
This repository showcases an end-to-end **data pipeline** that ingests, processes, and organizes data across multiple layers, transforming raw CRM and ERP data into structured, analytics-ready data models. The architecture follows the **Bronze-Silver-Gold** layered approach to ensure data quality, consistency, and usability.

## 📊 Data Model
The **Gold Layer** consists of well-structured dimensional tables that support analytical queries efficiently. The core tables include:

1. **gold.dim_customers** – Stores customer details extracted and transformed from CRM & ERP sources.
2. **gold.dim_products** – Contains product-related information derived from multiple systems.
3. **gold.fact_sales** – A fact table capturing transactional sales data for analytical reporting.

![image](https://github.com/user-attachments/assets/55ad3ce1-d779-47f2-aed2-8123d290d37d)

These tables follow a **star schema**, enabling optimized performance for business intelligence and reporting.

## 🏗️ Data Architecture
The pipeline follows a structured multi-layer architecture:

1. **Sources**: Raw data is ingested from CRM and ERP systems.
2. **Bronze Layer**: Stores raw, unprocessed data in its original form.
3. **Silver Layer**: Cleansed and transformed data, ensuring consistency and removing duplicates.
4. **Gold Layer**: Finalized tables optimized for analytics and reporting.

Data flows seamlessly across these layers through well-defined ETL processes, ensuring high data integrity and usability.

![image](https://github.com/user-attachments/assets/9d7f1e42-a250-4b90-a8fa-e48fc62b5d36)


## 📂 SQL File Structure
SQL scripts are organized based on the data layers:
- **bronze/**: Contains SQL scripts for loading raw data.
- **silver/**: Contains transformation scripts that clean and standardize the data.
- **gold/**: Contains scripts to create analytical tables for reporting.

Example directory structure:
```
/data_warehouse1/
 ├── bronze/
 │   ├── ddl_bronze.sql
 │   ├── proc_load_bronze.sql
 ├── silver/
 │   ├── ddl_silver.sql
 │   ├── proc_load_silver.sql
 ├── gold/
 │   ├── ddl_gold.sql

```

## 🔄 ETL Process & Implementation
- **Extract**: Data is ingested from CRM and ERP systems into the Bronze layer.
- **Transform**: Data cleaning, standardization, and enrichment occur in the Silver layer.
- **Load**: The final transformed data is stored in the Gold layer for analytics.
- **Python Integration**: Python scripts in `/python_scripts/` directory orchestrate the execution of SQL scripts.

## 🚀 How to Use
1. Clone the repository:
   ```bash
   git clone https://github.com/Prembammidi/data_warehouse1.git
   ```

2. Query the Gold Layer tables for analytics:
   ```sql
   SELECT * FROM gold.fact_sales;
   ```

## 📜 Conclusion
This project demonstrates a **scalable, structured** data pipeline that ensures high-quality data transformation and storage. By leveraging the **Bronze-Silver-Gold** approach, it provides a robust foundation for enterprise-level analytics.

For further details, refer to the documentation or raise an issue in the repository!

