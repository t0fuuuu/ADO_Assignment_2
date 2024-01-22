-- Formatting Descriptions
USE SCHEMA nwt_distributor;

UPDATE nwt_distributor.raw_category
SET description = 'Soft Drinks, Coffee, Tea, Beers, Ales'
WHERE categoryID = 1;

UPDATE nwt_distributor.raw_category
SET description = 'Sauces, Relishes, Spreads, Seasonings'
WHERE categoryID = 2;

UPDATE nwt_distributor.raw_category
SET description = 'Desserts, Candies, Sweet Breads'
WHERE categoryID = 3;

UPDATE nwt_distributor.raw_category
SET description = 'Breads, Crackers, Pasta, Cereal'
WHERE categoryID = 5;

UPDATE nwt_distributor.raw_category
SET description = 'Prepared Meats'
WHERE categoryID = 6;

UPDATE nwt_distributor.raw_category
SET description = 'Dried Fruit, Bean Curd'
WHERE categoryID = 7;

UPDATE nwt_distributor.raw_category
SET description = 'Seaweed, Fish'
WHERE categoryID = 8;