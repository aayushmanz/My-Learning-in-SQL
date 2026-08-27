USE smart;

-- SELECT -> WHERE 
-- GROUP BY -> HAVING


-- 1. Find the avg price of smartphone brands which have more than 20 phones.
SELECT brand_name,
AVG(price) AS 'avg_price'
FROM smartphones_cleaned_v6
GROUP BY brand_name HAVING COUNT(model) > 20
ORDER BY avg_price DESC;

-- Example 2 :
SELECT brand_name,
AVG(rating) AS 'avg_rating'
FROM smartphones_cleaned_v6
GROUP BY brand_name HAVING COUNT(model) > 20
ORDER BY avg_rating DESC;


-- 2. Find the top 3 brands with the highest avg RAM that have a refresh rate of at least 90 Hz
-- and fast charging available, and don't consider brands which have less than 10 phones.
SELECT brand_name, AVG(ram_capacity) AS 'avg_ram'
FROM smartphones_cleaned_v6 WHERE fast_charging > 0.0
AND refresh_rate >= 90
GROUP BY brand_name HAVING COUNT(model) >= 10
ORDER BY avg_ram DESC LIMIT 3;


-- 3. Find the avg price of all the phone brands with avg rating > 70 and num_phones more than 10
-- among all 5G enabled phones.
SELECT brand_name,
AVG(price) AS 'avg_price',
AVG(rating) AS 'avg_rating',
COUNT(model) AS 'count_model'
FROM smartphones_cleaned_v6  WHERE has_5g = "True"
GROUP BY brand_name HAVING avg_rating > 70
AND count_model > 10
ORDER BY avg_price;