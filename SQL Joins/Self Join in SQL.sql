USE practice;


-- Self join : 
SELECT * FROM users1 t1
JOIN users1 t2
ON t1.emergency_contact = t2.user_id;

