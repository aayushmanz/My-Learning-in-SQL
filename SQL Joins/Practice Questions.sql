-- 5. find all profitable orders
SELECT t1.order_id, SUM(t2.profit) AS "sum_profit" FROM orders t1
JOIN order_details t2
ON t1.order_id = t2.order_id
GROUP BY t1.order_id 
HAVING sum_profit > 0;


-- 6. find the customer  who has placed max number of orders
SELECT  name, COUNT(*) AS "num_orders" FROM orders t1
JOIN  users_corrected t2
ON t1.user_id = t2.user_id
GROUP BY t2.name
ORDER BY num_orders DESC LIMIT 1;


-- 7. which is the most profitable category.
SELECT * FROM order_details t1
JOIN category t2
ON t1.category_id = t2.category_id
GROUP BY t2.vertical
ORDER BY SUM(profit) ASC LIMIT 1;

-- 8. which is the most profitable state
SELECT state, SUM(profit) FROM orders
JOIN order_details t2
ON t1.order_id = t2.order_id 
JOIN users_1 t3
ON t1.user_id = t3.user_id
GROUP BY state
ORDER BY SUM(profit) DESC LIMIT 1;


-- 9. find all catergory with profit higher than 5000
SELECT * FROM order_details t1
JOIN category t2
ON t1.category_id = t2.category_id
GROUP BY t2.vertical
HAVING SUM(profit) > 1000;