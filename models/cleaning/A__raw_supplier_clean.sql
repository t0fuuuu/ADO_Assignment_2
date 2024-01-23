<<<<<<< HEAD:models/cleaning/raw_supplier_clean.sql
-- -- Replace NULL values in specified columns with default values
-- UPDATE NWT_RAW.NWT_DISTRIBUTOR.RAW_SUPPLIER
-- SET REGION = 'Unknown'
-- WHERE REGION = 'NULL';
=======
USE SCHEMA nwt_distributor;

-- Replace NULL values in specified columns with default values
UPDATE NWT_RAW.NWT_DISTRIBUTOR.RAW_SUPPLIER
SET REGION = 'Unknown'
WHERE REGION = 'NULL';
>>>>>>> 65b2eca0ef3a0f7f0259ed33b09c2b47054bd770:models/cleaning/A__raw_supplier_clean.sql

-- -- Standardize the city column
-- UPDATE NWT_RAW.NWT_DISTRIBUTOR.RAW_SUPPLIER
-- SET CITY = INITCAP(CITY);

-- -- Standardize capitalisation (title case)
-- UPDATE NWT_RAW.NWT_DISTRIBUTOR.RAW_SUPPLIER
-- SET COMPANYNAME = INITCAP(COMPANYNAME);

