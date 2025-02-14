CREATE DATABASE foriegn_key_learn;
USE foriegn_key_learn;

CREATE TABLE department(
id INT PRIMARY KEY,
name VARCHAR(50)
);

INSERT INTO department(id,name)
VALUES
(101,"English"),
(102,"IT");


UPDATE department
SET id = 111
WHERE id= 102;

SELECT * FROM department;


CREATE TABLE teacher(
id INT PRIMARY KEY,
name VARCHAR(50),
dept_id INT,
FOREIGN KEY (dept_id) REFERENCES department(id)
ON DELETE CASCADE
ON UPDATE CASCADE
);


INSERT INTO teacher(id,name,dept_id)
VALUES
(1,"Adam",101),
(2,"Eve",102);

SELECT * FROM teacher;