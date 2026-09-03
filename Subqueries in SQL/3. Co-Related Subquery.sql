USE subquery;


-- 1. Find All movies that have a rating higher than the average rating of movies in the same genre.
SELECT * FROM movies_cleaned m1
WHERE score > (SELECT AVG(score) FROM movies_cleaned m2
                WHERE m2.genre = m1.genre );

-- 2. Find the favorite food of each customer.
WITH fav_food AS (SELECT t2.user_id, name, f_name, COUNT(*) AS "frequency" FROM users t1
                  JOIN orders t2 ON t1.user_id = t2.user_id
                  JOIN order_details t3 ON t2.order_id = t3.order_id
                  JOIN food t4 ON t3.f_id = t4.f_id
                  GROUP BY t2.user_id, t3.f_id
                  )

 SELECT * FROM fav_food f1
 WHERE frequency = (SELECT MAX(frequency) FROM fav_food f2 
                    WHERE f2.user_id = f1.user_id);