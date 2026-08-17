USE smart;


-- Example of Constant Creation
SELECT model, 'Smartphone' AS 'Type' FROM smartphones_cleaned_v6;



-- Example of Distinct Use :
SELECT DISTINCT(brand_name) AS 'All Brands'
FROM smartphones_cleaned_v6;

-- more Example :
SELECT DISTINCT(processor_brand) AS 'all_processors'
FROM  smartphones_cleaned_v6;



-- DISTINCT EXAMPLE FOR UNIQUE COMBINATION :
SELECT DISTINCT brand_name, processor_brand
FROM smartphones_cleaned_v6;