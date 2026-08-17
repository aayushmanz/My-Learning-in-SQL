USE smart;

USE smartphone_cleaned_v6;
SELECT * FROM smartphone_cleaned_v6;

-- Finding PPI value
SELECT model,
SQRT(resolution_width*resolution_width + resolution_height*resolution_height)/screen_size AS 'ppi'
FROM smart.smartphone_cleaned_v6;



SELECT model, rating/10 FROM smart.smartphone_cleaned_v6;
