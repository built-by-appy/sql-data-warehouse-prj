/*
===========================================================================
DDL Script - Creating bronze layer tables
===========================================================================
Script purpose : This script creates six tables from all crm and erp input. 
		*WARNING* : It drops the tables if they already exist, to provide a clean
        slate before starting any new execution. 
Run this script to re-define the DDL structure of bronze layer
===========================================================================
*/

# Creating tables from CRM

DROP TABLE IF EXISTS bronze.crm_cust_info;
CREATE TABLE bronze.crm_cust_info (
    cst_id INT,
    cst_key VARCHAR(50),
    cst_firstname VARCHAR(50),
    cst_lastname VARCHAR(50),
    cst_marital_status VARCHAR(10),
    cst_gndr VARCHAR(10),
    cst_create_date DATE
);

DROP TABLE IF EXISTS  bronze.crm_prd_info;
CREATE TABLE bronze.crm_prd_info (
    prd_id INT,
    prd_key VARCHAR(50),
    prd_nm VARCHAR(50),
    prd_cost FLOAT,
    prd_line VARCHAR(10),
    prd_start_dt DATE,
    prd_end_dt DATE
);

DROP TABLE IF EXISTS  bronze.crm_sales_details ;
CREATE TABLE bronze.crm_sales_details (
    sls_ord_num VARCHAR(50),
    sls_prd_key VARCHAR(50),
    sls_cust_id INT,
    sls_order_dt DATE,
    sls_ship_dt DATE,
    sls_due_dt DATE,
    sls_sales INT,
    sls_quantity INT,
    sls_price FLOAT
);


/*Creating tables from ERP*/

DROP TABLE IF EXISTS bronze.erp_cust_az12;
CREATE TABLE bronze.erp_cust_az12 (
    CID VARCHAR(erp_cust_az1250),
    BDATE DATE,
    GEN VARCHAR(10)
);

DROP TABLE IF EXISTS bronze.erp_loc_a101;
CREATE TABLE bronze.erp_loc_a101 (
    cid VARCHAR(50),
    cntry VARCHAR(50)
);

DROP TABLE IF EXISTS bronze.erp_px_cat_g1v2;
CREATE TABLE bronze.erp_px_cat_g1v2 (
    id VARCHAR(10),
    cat VARCHAR(50),
    subcat VARCHAR(50),
    maintenance VARCHAR(3)
);
