-- ABS (absolute) :
SELECT *  FROM smartphones_cleaned_v6;



-- ROUND use :
SELECT model,
ROUND(SQRT(resolution_width*resolution_width + resolution_height*resolution_height)/screen_size, 2) AS 'ppi'
FROM smartphone_cleaned_v6;

-- CEIL and FLOOR
SELECT CEIL(screen_size) FROM smartphones_cleaned_v6;


SELECT FLOOR(screen_size) FROM smartphones_cleaned_v6;

