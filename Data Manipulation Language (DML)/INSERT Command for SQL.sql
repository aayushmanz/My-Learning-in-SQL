
-- CREATE DATABASE 
CREATE DATABASE IF NOT EXISTS mydatabase;

-- USE THE DATABASE 
USE mydatabase;


-- CREATE THE TABLE users
CREATE TABLE users(
    uid INTEGER AUTO_INCREMET,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);


-- INSERT THE SINGLE VALUE :
INSERT INTO mydatabase.users (uid, name, email, password)
VALUES('NULL', 'Ayush Suthar', 'ayush@gmail.com', '123123');

-- INSERT THE VALUE WITHOUT COLUMNS
INSERT INTO mydatabase.users
VALUES('NULL', 'Deepak Chahar', 'deepakchahar@gmail.com', '111123');

-- INSERT THE VALUE WITH SPECIFIC COLUMNS
INSERT INTO mydatabase.users (name, password)
VALUES('Ayush Suthar', '123123');

-- INSERT THE VALUES WITH MULTIPLE VALUES AT ONCE
INSERT INTO mydatabase.users VALUES
('NULL', 'Ayushi Chanchalani', 'ayushi@gmail.com', '111111'),
('NULL', 'Rajat singh', 'rajat@yahoo.com', '121212');



