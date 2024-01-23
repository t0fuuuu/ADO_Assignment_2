-- Formatting Descriptions
USE SCHEMA nwt_distributor;

-- Change region column

UPDATE nwt_distributor.raw_customer
SET region = 
  CASE 
    WHEN country IN ('Italy', 'Portugal', 'Spain') THEN 'SEU'
    WHEN country IN ('Denmark', 'Finland', 'Ireland', 'Norway', 'Sweden') THEN 'NEU'
    WHEN country IN ('Belgium', 'France', 'UK') THEN 'WEU'
    WHEN country IN ('Austria', 'Germany', 'Poland', 'Switzerland') THEN 'CEU'
    WHEN country IN ('Canada', 'Mexico', 'USA') THEN 'NA'
    WHEN country IN ('Argentina', 'Brazil', 'Venezuela') THEN 'SA'
  END;


-- Replace . with - in phone
UPDATE nwt_distributor.raw_customer
SET phone = REPLACE(phone, '.', '-');


-- Change the "null" postal code to "nil"
UPDATE nwt_distributor.raw_customer
SET postalCode = REPLACE(postalCode, 'NULL', 'NIL');