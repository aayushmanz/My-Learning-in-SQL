USE subquery;



-- INDEPENDENT SUBQUERY - SCALAR SUBQUERY

-- 1. Find the movie with the highest profit (using ORDER BY)
SELECT  * FROM movies_cleaned
WHERE (gross - budget) = 
                        (SELECT MAX(gross - budget)  
                         FROM movies_cleaned);

-- one more way :
SELECT * FROM movies_cleaned
ORDER BY (gross - budget) DESC LIMIT 1;

-- 2. Find how many movies have a rating > the average rating of all movies
--    (Find the count of movies above the average rating)
SELECT COUNT(*) FROM movies_cleaned
WHERE score > (SELECT AVG(score)
               FROM movies_cleaned);

-- 3. Find the highest scored movie among movies with more than 2000 votes
SELECT * FROM movies_cleaned
WHERE year = 2000 AND score = 
                              (SELECT MAX(score) FROM movies_cleaning
                               WHERE year = 2000;)


-- 4. Find the highest score movie among all movies whose number of votes
--    is greater than the average number of votes
SELECT * FROM movies_cleaned
WHERE votes > (SELECT AVG(votes) 
              FROM movies_cleaned)
ORDER BY MAX(score) LIMIT 1; 




-- INDEPENDENT SUBQUERY _ ROW SUBQUERY ( ONE COL MULTPLE ROWS)


-- 1. Find all users who never ordered
SELECT * FROM users 
WHERE user_id NOT IN (SELECT DISTINCT(user_id) 
                      FROM subquery.orders)


-- 2. Find all the movies made by the top 3 directors
--    (in terms of total gross income)

WITH top_dirctor IN (SELECT director 
                   FROM movies_cleaned
                   GROUP BY director 
                   ORDER BY SUM(gross) DESC LIMIT 3)

SELECT * FROM movies_cleaned
WHERE director IN (SELECT * FROM top_director)


-- 3. Find all movies of all those actors whose filmography's average rating
--    is greater than 8.5 (take 25000 votes as cutoff)
SELECT * FROM movies_cleaned
WHERE star IN (SELECT star
               FROM movies_cleaned
               WHERE votes > 25000
               GROUP BY star
               HAVING AVG(score) > 8.5
              );




-- INDEPENDENT SUBQUERY - TABLE SUBQUERY (MULTI COLS MULTI ROWS)

-- 1. Find the most profitable movie of each year
SELECT * FROM movies_cleaned
WHERE (year, gross - budget) IN (SELECT year, MAX(gross - budget)
                                  FROM movies_cleaned
                                  GROUP BY year);

                                
-- 2. Find the highest rated movie of each genre
--    (votes cutoff of 25000)
SELECT * FROM movies_cleaned
WHERE (genre, score) IN (SELECT genre, MAX(score) 
                           FROM movies_cleaned
                           WHERE votes > 25000
                        GROUP BY genre)
AND votes > 25000;                           

-- 3. Find the highest grossing movies of the top 5 actor/director combinations
--    in terms of total gross income
WITH top_duos AS (SELECT star, director, MAX(gross), SUM(gross) 
                  FROM movies_cleaned
                  GROUP BY star, director 
                  ORDER BY SUM(gross) DESC LIMIT 5
                  )

SELECT * FROM movies_cleaned
WHERE (star, director, gross) IN(SELECT * FROM top_duos);                  

