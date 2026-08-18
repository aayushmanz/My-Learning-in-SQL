use smart; 

-- Aggregate Functions :

-- MAX / MIN :
-- find the minimum and maximum price 
SELECT MAX(price) 
FROM smartphones_cleaned_v6;

SELECT MIN(ram_capacity)
FROM smartphones_cleaned_v6;


--find the price of the costliest samsung phone
SELECT MAX(price) FROM smartphones_cleaned_v6
WHERE brand_name = 'samsung';




-- AVG :

-- find avg of apple phone rating :
SELECT AVG(rating) FROM smartphones_cleaned_v6
WHERE brand_name = 'apple';


SELECT AVG(price) FROM smartphones_cleaned_v6
WHERE brand_name = 'xiaomi';


-- SUM :

SELECT SUM(price) FROM smartphones_cleaned_v6;


-- COUNT :
SELECT COUNT(*) FROM smartphones_cleaned_v6
WHERE brand_name = 'oppo';

SELECT COUNT(DISTINCT(brand_name)) FROM smartphones_cleaned_v6;


-- STD standard deviation :
SELECT STD(screen_size) FROM smartphones_cleaned_v6;


