-- -- Adding New Column 'derived_region'
-- ALTER TABLE NWT_RAW.NWT_DISTRIBUTOR.RAW_EMPLOYEE
-- ADD COLUMN derived_region VARCHAR(15);

-- -- Setting the New Column to their Respective Region
-- UPDATE NWT_RAW.NWT_DISTRIBUTOR.RAW_EMPLOYEE
-- SET derived_region = 'NA'
-- WHERE country = 'USA';

-- UPDATE NWT_RAW.NWT_DISTRIBUTOR.RAW_EMPLOYEE
-- SET derived_region = 'WEU'
-- WHERE country = 'UK';

-- -- Set employees with NULL reportsTo to 0
-- UPDATE NWT_RAW.NWT_DISTRIBUTOR.RAW_EMPLOYEE
-- SET reportsTo = 0
-- WHERE reportsTo IS NULL;

-- -- Set the reportsTo column to Int
-- ALTER TABLE NWT_RAW.NWT_DISTRIBUTOR.RAW_EMPLOYEE 
-- ADD COLUMN reportsTo_temp INT;

-- UPDATE NWT_RAW.NWT_DISTRIBUTOR.RAW_EMPLOYEE 
-- SET reportsTo_temp = TO_NUMBER(reportsTo);

-- ALTER TABLE NWT_RAW.NWT_DISTRIBUTOR.RAW_EMPLOYEE 
-- DROP COLUMN reportsTo;

-- ALTER TABLE NWT_RAW.NWT_DISTRIBUTOR.RAW_EMPLOYEE 
-- RENAME COLUMN reportsTo_temp to reportsTo;