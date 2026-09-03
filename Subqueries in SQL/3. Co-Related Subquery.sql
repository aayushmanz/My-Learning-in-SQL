USE subquery;


-- 1. Find All movies that have a rating higher than the average rating of movies in the same genre.
SELECT * FROM movies_cleaned m1
WHERE score > (SELECT AVG(score) FROM movies_cleaned m2
                WHERE m2.genre = m1.genre );

-- 2. Find the favorite food of each customer.
