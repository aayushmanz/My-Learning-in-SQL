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