USE smart;

-- Grouping smart phones as by brand and get the count, avg price, max rating, avg screen size, and battery capacity.
-- > groupby animation
SELECT brand_name, count(*) AS num_phone,
ROUND(AVG(price)) AS 'avg_price',
MAX(rating) AS 'max_rating',
AVG(screen_size) AS "avg_screen_size",
AVG(battery_capacity) AS 'avg_battery_capacity'
FROM smartphones_cleaned_v6
GROUP BY brand_name
ORDER BY num_phone DESC LIMIT 15;

-- group smartphones by whether they have an NFC and get the avg price and rating.
SELECT has_nfc,
AVG(rating) AS "avg_rating",
AVG(price) AS "avg_price"
FROM smartphones_cleaned_v6
GROUP BY has_nfc;

--Example 2 : 
SELECT fast_charging_available,
AVG(rating) AS "avg_rating",
AVG(price) AS "avg_price"
FROM smartphones_cleaned_v6
GROUP BY fast_charging_available;


-- Group smartphones by the extended memory availabe and get the avg price.
SELECT extended_memory_available,
AVG(price) AS "avg_price" 
FROM smartphones_cleaned_v6
GROUP BY extended_memory_available;


-- group smartphones by the brand and processor brand and get the count of models and the avg primary camera resolution ( rear ).
SELECT brand_name, processor_brand,
COUNT(model) AS "count_model",
AVG(primary_camera_rear) AS "avg_rear_camera_pri"
FROM smartphones_cleaned_v6
GROUP BY brand_name, processor_brand;


-- find top 5 most costly phones brand.
SELECT brand_name,
AVG(price) AS 'avg_price'
FROM smartphones_cleaned_v6
GROUP BY brand_name 
ORDER BY avg_price DESC LIMIT 5;


-- which brand makes the smallest screen smartphones.
SELECT brand_name, 
screen_size
FROM smartphones_cleaned_v6
GROUP BY brand_name
ORDER BY minimum_screen_size ASC LIMIT 1;


-- avg price of 5g phones vs price of non 5g phones
SELECT has_5g,
AVG(price) AS 'avg_price'
FROM smartphones_cleaned_v6
GROUP BY has_5g
ORDER BY avg_price;


-- group smartphones by the brand and find brand with highest number of models that have both NFC and IR bluster.
SELECT brand_name,
COUNT(model) AS 'count_model'
FROM smartphones_cleaned_v6
WHERE has_nfc = 'True'
AND has_ir_blaster = 'TRUE'
GROUP BY brand_name
ORDER BY count_model DESC;


-- find all smasung  5g enabled smartphones and find out the  avg price for nfc amd non NFC phones.
SELECT AVG(price) AS 'avg_price',
has_nfc
FROM smartphones_cleaned_v6
WHERE brand_name = 'samsung'
AND has_5g = 'True'
GROUP BY has_nfc
ORDER BY avg_price;


-- find the phones names, price of the costliest phone.
SELECT model,
price
FROM smartphones_cleaned_v6
GROUP BY model
ORDER BY price DESC LIMIT 1;