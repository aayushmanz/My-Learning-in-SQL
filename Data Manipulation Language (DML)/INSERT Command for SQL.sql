CREATE DATABASE IF NOT EXISTS mydatabase;

USE mydatabase;



CREATE TABLE users(
    uid INTEGER AUTO_INCREMET,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);


INSERT INTO mydatabase.users (uid, name, email, password)
VALUES('NULL', 'Ayush Suthar', 'ayush@gmail.com', '123123');


INSERT INTO mydatabase.users
VALUES('NULL', 'Deepak Chahar', 'deepakchahar@gmail.com', '111123');

INSERT INTO mydatabase.users (name, password)
VALUES('Ayush Suthar', '123123');

INSERT INTO mydatabase.users VALUES
('NULL', 'Ayushi Chanchalani', 'ayushi@gmail.com', '111111'),
('NULL', 'Rajat singh', 'rajat@yahoo.com', '121212')



