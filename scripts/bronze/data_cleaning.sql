/* DATA CLEANING WITH IN BRONZE LAYER */

-- 1. CHECK FOR NULLS OR DUPLICATES IN PRIMARY KEY
SELECT 
    *
FROM 
    bronze.crm_cust_info;

-- query the duplicates and NULL values
SELECT
    cst_id, 
    COUNT(*) AS count_of_id
FROM
    bronze.crm_cust_info
GROUP BY 
    cst_id
HAVING 
    COUNT(*) > 1 AND cst_id IS NULL;

-- 2. Check for unwanted spaces (quality check)
SELECT
    cst_lastname
FROM 
    bronze.crm_cust_info
WHERE
    cst_firstname != TRIM(cst_firstname);


INSERT INTO silver.crm_cust_info (
    cst_id,
    cst_key,
    cst_firstname,
    cst_lastname,
    cst_material_status,
    cst_gndr,
    cst_create_date
)
-- returns data with no duplicates 
SELECT 
    cst_id,
    cst_key,
    TRIM(cst_firstname) AS cst_firstname,
    TRIM(cst_lastname) AS csr_lastname,
    CASE WHEN UPPER(TRIM(cst_material_status)) = 'M' THEN 'Married'
        WHEN UPPER(TRIM(cst_material_status)) = 'S' THEN 'Single'
        ELSE 'n/a'
    END cst_material_status,
    CASE WHEN UPPER(TRIM(cst_gndr)) = 'F' THEN 'Female'
        WHEN UPPER(TRIM(cst_gndr)) = 'M' THEN 'Male'
        ELSE 'n/a'
    END cst_gndr,
    cst_create_date
FROM(
    SELECT *, ROW_NUMBER() OVER (PARTITION BY cst_id ORDER BY cst_create_date DESC) AS flag_last
    FROM bronze.crm_cust_info
    WHERE cst_id IS NOT NULL
)t WHERE flag_last = 1;


-- 3. Data standardization and consistency
-- use stadardized names instead of F or M (solve by case values), and deal with NULL values
SELECT DISTINCT cst_gndr
FROM
    bronze.crm_cust_info;
