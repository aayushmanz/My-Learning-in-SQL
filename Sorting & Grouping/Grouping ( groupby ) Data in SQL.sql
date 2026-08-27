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


SELECT fast_charging_available,
AVG(rating) AS "avg_rating",
AVG(price) AS "avg_price"
FROM smartphones_cleaned_v6
GROUP BY fast_charging_available;


-- Group smartphones by the extended memory availabe and get the avg price.

-- group smartphones by the brand and processor brand and get the count of models and the avg primary camera resolution ( rear ).

-- find top 5 most costly phones brand.

-- which brand makes the smallest screen smartphones.

-- avg price of 5g phones vs price of non 5g phones

-- group smartphones by the brand and find brand with highest number of models that have both NFC and IR bluster.

-- find all smasung  5g enabled smartphones and find out the  avg price for nfc amd non NFC phones.

-- find the phones namesm, priec of the costliest phone.