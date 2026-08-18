use smart;

SELECT * FROM smartphones_cleaned_v6
WHERE processor_brand = 'mediatek';


-- use of Update : 
UPDATE smartphones_cleaned_v6 
SET processor_brand = 'dimensity'
WHERE processor_brand = 'mediatek'; 

USE student;

-- exmaple of update : 
UPDATE users
SET email = 'ayushsuthar@gmail.com', password = 'merapass1234'
WHERE name = 'Ayush';

-- Use of Delete :
use smart;
DELETE  FROM smartphones_cleaned_v6 
WHERE price > 20000;


-- more example for delete :
DELETE  FROM smartphones_cleaned_v6 
WHERE primary_camera_rear > 150 AND
brand_name = 'samsung';