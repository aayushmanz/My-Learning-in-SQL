

USE school;

-- Find all students who have marks higher than the average marks of their respective branch
SELECT *, AVG(marks) 
OVER(PARTITION BY branch) 
FROM marks;

-- MIN or MAX Marks of students.
SELECT *, 
MIN(marks) OVER(),
MAX(marks) OVER(),
MIN(marks) OVER (PARTITION BY branch),
MAX(marks) OVER (PARTITION BY branch)
FROM marks
ORDER BY student_id;


-- more example :
SELECT * FROM (SELECT *, 
AVG(marks) OVER 
(PARTITION BY branch) AS 'branch_avg' 
FROM marks) t
WHERE t.marks < t.branch_avg; 





-- RANK() method use case :

-- in rank :
-- mark  rank
-- 95     1
-- 95     1
-- 89     3

-- giving rank from the bases of marks of all branch.
SELECT *,
RANK() OVER(ORDER BY marks DESC )
FROM marks;

-- Giving rank on the bases of branch :
SELECT *,
RANK() OVER(PARTITION BY branch ORDER BY marks DESC )
FROM marks;


-- DENSE_RANK() use case :
-- difference of dense rank and rank :

-- in rank :
-- mark  rank
-- 95     1
-- 95     1
-- 89     3

-- in Dense rank :
-- mark  rank
-- 95     1
-- 95     1
-- 89     2