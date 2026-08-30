USE practice;



-- two columns join :
SELECT * FROM students t1
JOIN class t2
ON t1.class_id = t2.class_id
AND t1.enrollment_year = t2.class_year;



SELECT * FROM students t1
LEFT JOIN class t2
ON t1.class_id = t2.class_id
AND t1.enrollment_year = t2.class_year;


SELECT * FROM students t1
RIGHT JOIN class t2
ON t1.class_id = t2.class_id
AND t1.enrollment_year = t2.class_year;



-- Three cols join :
SELECT * FROM order_details t1
JOIN orders t2 
ON t1.order_id = t2.order_id
JOIN users1 t3
ON t2.user_id = t3.user_id;



-- practice questions :

-- 1. find the order_id , name  by joining users and orders table.
SELECT t2.order_id, t1.name, t1.city 
FROM users_1 t1 
JOIN orders t2 
ON t1.user_id = t2.user_id;

-- 2. find order_id, product category by joining order_details and catergory.
SELECT t1.order_id, t2.category
FROM  order_details t1
JOIN category t2 
ON t1.category_id = t2.category_id;

-- 3. find all the orders placed in pune.
SELECT *
FROM users_1 t1 
JOIN orders t2 
ON t1.user_id = t2.user_id
WHERE t2.city = 'Pune';

-- 4. find all orders under chairs category
SELECT *
FROM  order_details t1
JOIN category t2 
ON t1.category_id = t2.category_id
WHERE vertical = 'Chairs';

