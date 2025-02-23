-- SQL Sub Queries
-- Example with FROM
-- Find the max marks from the students of Delhi
-- Step 1. Find the students of Mumbai
-- Step 2. Find their max marks using the sublist in step 1

CREATE DATABASE IF NOT EXISTS Practice;
USE Practice;

CREATE TABLE student(
 rollno INT,
 name VARCHAR(50),
 marks FLOAT,
 city VARCHAR(50)
);

INSERT INTO student(rollno,name,marks,city)
VALUES
(101,"Bhumika",93,"Mumbai"),
(102,"Anil",78,"Pune"),
(103,"Chetan",85,"Mumbai"),
(104,"Dhruv",96,"Delhi"),
(105,"emanuel",13,"Delhi"),
(101,"Farah",82,"Delhi");

SELECT * FROM student
 WHERE city="Mumbai";

SELECT Max(marks)
 FROM student
 WHERE city="Mumbai";
 
 



