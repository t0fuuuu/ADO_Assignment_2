USE SCHEMA nwt_distributor;

UPDATE nwt_distributor.raw_orders
SET shipRegion = 
  CASE 
    WHEN shipCountry IN ('Italy', 'Portugal', 'Spain') THEN 'SEU'
    WHEN shipCountry IN ('Denmark', 'Finland', 'Ireland', 'Norway', 'Sweden') THEN 'NEU'
    WHEN shipCountry IN ('Belgium', 'France', 'UK') THEN 'WEU'
    WHEN shipCountry IN ('Austria', 'Germany', 'Poland', 'Switzerland') THEN 'CEU'
    WHEN shipCountry IN ('Canada', 'Mexico', 'USA') THEN 'NA'
    WHEN shipCountry IN ('Argentina', 'Brazil', 'Venezuela') THEN 'SA'
 END;

-- Change the "null" postal code to "nil"
UPDATE nwt_distributor.raw_orders
SET shipPostalCode = REPLACE(shipPostalCode, 'NULL', 'NIL');

---Impute null values in shipped date

-- Replace 3 date columns with '00' in the year with '19' 
UPDATE nwt_distributor.raw_orders
SET OrderDate = CONCAT('19', SUBSTRING(OrderDate, 3))
WHERE OrderDate LIKE '00%';

UPDATE nwt_distributor.raw_orders
SET RequiredDate = CONCAT('19', SUBSTRING(RequiredDate, 3))
WHERE RequiredDate LIKE '00%';

UPDATE nwt_distributor.raw_orders
SET ShippedDate = CONCAT('19', SUBSTRING(ShippedDate, 3))
WHERE ShippedDate LIKE '00%';