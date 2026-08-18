USE smart;


-- Uses of WHERE :
-- 1. Example :
--find all samsung phones
SELECT * FROM smartphones_cleaned_v6 WHERE brand_name ='samsung';


-- 2. Example :
-- find all phones with phones
SELECT * FROM smartphones_cleaned_v6
WHERE price > 50000;


-- use of AND Operator :
SELECT * FROM smartphones_cleaned_v6
WHERE price > 10000 AND price < 20000;


-- Use of BETWEEN :
-- find all phones in the price range of 10000 and 20000
SELECT * FROM smartphones_cleaned_v6
WHERE price BETWEEN 10000 AND 20000;


-- Find phones with rating > 80 and price < 25000
SELECT * FROM smartphones_cleaned_v6
WHERE price < 25000 AND rating > 80 AND processor_brand='snapdragon';

-- find all samsung phones with ram > 8 gb
SELECT * FROM smartphones_cleaned_v6
WHERE brand_name = 'samsung' AND ram_capacity > 8;

-- find all samsung pphones with snapdragon processor
SELECT * FROM smartphones_cleaned_v6
WHERE brand_name = 'samsung' AND processor_brand = 'snapdragon';

