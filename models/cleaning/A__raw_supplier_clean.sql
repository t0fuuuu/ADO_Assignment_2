USE SCHEMA nwt_distributor;

-- Standardize the city column
UPDATE NWT_RAW.NWT_DISTRIBUTOR.RAW_SUPPLIER
SET CITY = INITCAP(CITY);

-- Standardize capitalisation (title case)
UPDATE NWT_RAW.NWT_DISTRIBUTOR.RAW_SUPPLIER
SET COMPANYNAME = INITCAP(COMPANYNAME);

--Cleaning the region column based on the country
UPDATE NWT_RAW.NWT_DISTRIBUTOR.RAW_SUPPLIER 
SET region = 
  CASE 
    WHEN country IN ('Italy', 'Spain') THEN 'SEU'
    WHEN country IN ('Denmark', 'Finland','Norway', 'Sweden') THEN 'NEU'
    WHEN country IN ('France', 'UK', 'Netherlands') THEN 'WEU'
    WHEN country IN ('Germany') THEN 'CEU'
    WHEN country IN ('Canada', 'USA') THEN 'NA'
    WHEN country IN ('Brazil', 'Venezuela') THEN 'SA'
    WHEN country IN ('Singapore') THEN 'SEA'
    WHEN country IN ('Japan') THEN 'NEA'
    WHEN country IN ('Australia') THEN 'AUS/OCE'
  END;


