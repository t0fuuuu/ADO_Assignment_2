--Replace . with - to standardise the values
--UPDATE nwt_distributor.raw_customer
--SET phone = REPLACE(phone, '.', '-');

-- Create new column 'derived_region'

--ALTER TABLE nwt_distributor.raw_customer
--ADD COLUMN derived_region VARCHAR(255);

--UPDATE nwt_distributor.raw_customer
--SET derived_region = 
--  CASE 
--    WHEN country IN ('Italy', 'Portugal', 'Spain') THEN 'SEU'
--    WHEN country IN ('Denmark', 'Finland', 'Ireland', 'Norway', 'Sweden') THEN 'NEU'
--    WHEN country IN ('Belgium', 'France', 'UK') THEN 'WEU'
--    WHEN country IN ('Austria', 'Germany', 'Poland', 'Switzerland') THEN 'CEU'
--    WHEN country IN ('Canada', 'Mexico', 'USA') THEN 'NA'
--    WHEN country IN ('Argentina', 'Brazil', 'Venezuela') THEN 'SA'
--  END;

-- Change the "null" postal code to "nil"
--UPDATE nwt_distributor.raw_customer
--SET postalCode = REPLACE(postalCode, 'NULL', 'NIL');