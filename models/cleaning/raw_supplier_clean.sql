


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


---- Standardize the country column (replace with consistent spellings)
--UPDATE NWT_RAW.NWT_DISTRIBUTOR.RAW_SUPPLIER
--SET COUNTRY = CASE
    --WHEN COUNTRY IN ('UK', 'United Kingdom') THEN 'United Kingdom'
    --WHEN COUNTRY IN ('USA', 'United States') THEN 'United States'
    ---- Add more cases as needed
    --ELSE COUNTRY
--END;