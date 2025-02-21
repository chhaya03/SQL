-- SQL Sub Queries
-- Example
-- Find the names of all students with even roll numbers.
-- Step 1. Find the even roll numbers
-- Step 2. Find the names of students with even roll no


CREATE DATABASE IF NOT EXISTS students;
USE students;

CREATE TABLE student_Table(
 rollno INT,
 name VARCHAR(50),
 marks FLOAT
);

INSERT INTO student_table(rollno,name,marks)
VALUES
(101,"Bhumika",93),
(102,"Anil",78),
(103,"Chetan",85),
(104,"Dhruv",96),
(105,"emanuel",13),
(106,"Farah",82);

SELECT name , rollno
FROM student_table
WHERE rollno IN(
SELECT rollno
FROM student_table
WHERE rollno % 2 = 0
);


