USE subquery;
-- INDEPENDENT SUBQUERY - SCALAR SUBQUERY

-- 1. Find the movie with the highest profit (using ORDER BY)
SELECT  * FROM movies_cleaned
WHERE (gross - budget) = 
(SELECT MAX(gross - budget)  
FROM movies_cleaned);

-- one more way :
SELECT * FROM movies_cleaning
ORDER BY (gross - budget) DESC LIMIT 1;

-- 2. Find how many movies have a rating > the average rating of all movies
--    (Find the count of movies above the average rating)
SELECT COUNT(*) FROM movies_cleaning
WHERE score > (SELECT AVG(score)
FROM movies_cleaning);

-- 3. Find the highest rated movie among movies with more than 2000 votes

-- 4. Find the highest rated movie among all movies whose number of votes
--    is greater than the average number of votes