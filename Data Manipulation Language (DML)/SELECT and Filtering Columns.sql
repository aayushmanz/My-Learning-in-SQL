
-- SELECT ALL COLUMN :

-- USE ayush;
-- SELECT * FROM smartphones_cleaned_v6;

-- SELECT THE ALL ROWS AND COLUMNS FROM THE TABLE
SELECT * FROM ayush.smartphones_cleaned_v6 WHERE 1;



-- FILTERING COLUMNS :

-- FILTERING THE COLUMNS ( SELECTED COLUMNS ) :
SELECT model, price, rating FROM ayush.smartphones_cleaned_v6;


-- FILTERING EXAMPLE 2 :
SELECT model, battery_capacity, os FROM ayush.smartphones_cleaned_v6;



-- RENAME COLUMNS NAME :

-- RENAME THE COLUMNS :
SELECT os AS 'operating system', model, battery_capacity AS 'MAH' 
FROM ayush.smartphones_cleaned_v6;