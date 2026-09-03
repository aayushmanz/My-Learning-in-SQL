-- 1. Calculate the percentage of votes received by each movie compared to the total number of votes.
SELECT name, 
(votes/(SELECT SUM(votes) FROM movies_cleaned))*100 
FROM movies_cleaned;


-- 2. Display movie name, genre, score, and the average score of its genre.
-- Why is this inefficient?
-- Because the average score for each genre is calculated repeatedly for every movie,
-- which can lead to unnecessary computations and slower query performance.
SELECT name, genre, score, (SELECT AVG(score) FROM movies_cleaned m2
                            WHERE m2.genre  = m1.genre)
FROM movies_cleaned m1;




-- USE subquery for from :
