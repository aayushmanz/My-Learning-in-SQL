USE practice;


-- CROSS JOIN
SELECT * FROM users1 t1
CROSS JOIN groups t2;


-- INNER JOIN :
-- The inner join is the default join.
SELECT * FROM membership t1
INNER JOIN users1 t2
ON t1.user_id =  t2.user_id;


-- LEFT JOIN :
-- In left join always shows the which are not present in the right join.
SELECT * FROM membership t1
LEFT JOIN users1 t2
ON t1.user_id = t2.user_id;



-- RIGHT JOIN :
-- In right join always shows the which are not present in the left join.
SELECT * FROM membership t1
RIGHT JOIN users1 t2
ON t1.user_id = t2.user_id; 


--OUTER JOIN :
-- OUTER JOIN and FULL OUTER JOIN CANNOT PERFORM IN SQL