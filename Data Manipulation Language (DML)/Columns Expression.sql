USE smart;

SELECT * FROM smartphone_cleaned_v6;

-- Finding PPI value
SELECT model,
SQRT(resolution_width*resolution_width + resolution_height*resolution_height)/screen_size AS 'ppi'
FROM smartphone_cleaned_v6;



SELECT model, rating/10 FROM smartphone_cleaned_v6;
