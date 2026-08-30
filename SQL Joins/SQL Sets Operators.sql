USE practice;


-- 1. UNION: Combines results of two or more SELECT statements and removes duplicate rows.
SELECT * FROM person1
UNION
SELECT * FROM person2;

-- 2. UNION ALL: Combines results of two or more SELECT statements without removing duplicate rows.
SELECT * FROM person1
UNION ALL
SELECT * FROM person2;

-- 3. INTERSECT: Returns only the rows that appear in both result sets.
SELECT * FROM person1
INTERSECT
SELECT * FROM person2;

-- 4. EXCEPT / MINUS: Returns distinct rows that appear in the first result set but not in the second.
SELECT * FROM person1
EXCEPT
SELECT * FROM person2;