USE smart;

-- SELECT -> WHERE 
-- GROUP BY -> HAVING


-- 1. Find the avg rating of smartphone brands which have more than 20 phones.
SELECT brand_name,
AVG(rating) AS 'avg_rating'
FROM smartphones_cleaned_v6
WHERE COUNT(model) = 20;


-- 2. Find the top 3 brands with the highest avg RAM that have a refresh rate of at least 90 Hz
-- and fast charging available, and don't consider brands which have less than 10 phones.

-- 3. Find the avg price of all the phone brands with avg rating > 70 and num_phones more than 10
-- among all 5G enabled phones.