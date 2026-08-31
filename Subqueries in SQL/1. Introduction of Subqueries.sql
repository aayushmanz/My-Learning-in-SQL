USE subquery;

-- old way to perform the subquery :
SELECT  MAX(score) FROM movies_cleaned;


SELECT * FROM movies_cleaned
WHERE score = 9.3;


-- new way to perform subquery :
--outer query
SELECT * FROM movies_cleaned
WHERE score = 
-- inner query
(SELECT MAX(score) 
FROM movies_cleaned);


-- Types of Subqueries :
-- 1. The result it returns
-- 2. Based on Working 



-- 1. The result it returns:

-- on the basis of return data there are three type :
-- 1. scalar subquery  -> 9.3
-- 2. table subquery   -> there are multple columns and rows
-- 3. row subquery     -> genre -> horror, romance, action


-- 2. Based on Working:
-- 1. independent subquery 
-- 2. Co - related subquery (dependent)



-- Where is Subquery be used ?
-- WE can use them with 
--1. insert
--2. Select :
   --i. Where
   --ii. select 
   --iii. from
   --iv. Having
--3. update 
--4. delete 



