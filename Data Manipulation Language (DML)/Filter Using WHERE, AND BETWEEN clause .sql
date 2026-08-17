USE smart;


-- Uses of WHERE :
-- 1. Example :
SELECT * FROM smartphones_cleaned_v6 WHERE brand_name ='samsung';


-- 2. Example :
SELECT * FROM smartphones_cleaned_v6
WHERE price > 50000;


-- use of AND Operator :
SELECT * FROM smartphones_cleaned_v6
WHERE price > 10000 AND price < 20000;


-- Use of BETWEEN :
SELECT * FROM smartphones_cleaned_v6
WHERE price BETWEEN 10000 AND 20000;
