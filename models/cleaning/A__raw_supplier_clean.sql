USE SCHEMA nwt_distributor;

-- Replace NULL values in specified columns with default values
UPDATE NWT_RAW.NWT_DISTRIBUTOR.RAW_SUPPLIER
SET REGION = 'Unknown'
WHERE REGION = 'NULL';

-- Standardize the city column
UPDATE NWT_RAW.NWT_DISTRIBUTOR.RAW_SUPPLIER
SET CITY = INITCAP(CITY);

-- Standardize capitalisation (title case)
UPDATE NWT_RAW.NWT_DISTRIBUTOR.RAW_SUPPLIER
SET COMPANYNAME = INITCAP(COMPANYNAME);

