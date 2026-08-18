USE smart;

-- old way :
SELECT * FROM smartphones_cleaned_v6
WHERE processor_brand = 'snapdragon' OR
processor_brand = 'exynos' OR
processor_brand = 'bionic';


-- new way using IN 
SELECT * FROM smartphones_cleaned_v6
WHERE processor_brand IN ('snapdragon, exynos', 'bionic', 'dimensity');



-- use of  NOT IN :
SELECT * FROM smartphones_cleaned_v6
WHERE brand_name NOT IN ('apple');