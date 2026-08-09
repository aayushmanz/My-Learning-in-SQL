USE vision;


-- This Command Use in DDL for Creating the Structure of Table.
CREATE TABLE students(
    student_id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    std_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);


-- This Command is use for deleting the values from the index / cols
TRUNCATE TABLE students;



-- This command is use for deleting the whole table 
DROP TABLE IF EXISTS students;