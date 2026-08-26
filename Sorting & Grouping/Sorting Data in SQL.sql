USE smart;


-- find top5 samsung phones with biggest screen size ?
SELECT model,screen_size FROM smartphones_cleaned_v6 WHERE brand_name = 'samsung'
ORDER BY screen_size DESC LIMIT 5;


-- Sort all the phones in desc order of number of total cameras
SELECT model, num_front_cameras + num_rear_cameras AS 'total_cameras' 
FROM smartphones_cleaned_v6
ORDER BY total_cameras DESC;

--Sort data on the basis of ppi in desc order.
SELECT model,
ROUND(SQRT(resolution_height*resolution_height + resolution_width*resolution_width))/screen_size AS "ppi"
FROM smartphones_cleaned_v6
ORDER BY ppi DESC;


--Find the phone with sec largest battery.
SELECT model, battery_capacity 
FROM smartphones_cleaned_v6
ORDER BY battery_capacity DESC LIMIT 1,1;  


--find the name and rating of the worst rated apple phone
SELECT model, rating FROM smartphones_cleaned_v6 
WHERE brand_name = 'apple'
ORDER BY rating DESC LIMIT 1;


--Sort phones alphabethically and then on the basis of rating in desc order.
SELECT brand_name, rating FROM smartphones_cleaned_v6
ORDER BY brand_name ASC, rating DESC;


--sort phones alphabethically and then on the basis of price in AESC order
SELECT brand_name, rating FROM smartphones_cleaned_v6
ORDER BY brand_name ASC, price ASC;
