-- SQL Sub Queries
-- Example
-- Get names of all students who scored more than class average.
-- Step 1. Find the avg of class
-- Step 2. Find the names of students with marks > avg



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
(101,"Farah",82);


SELECT name,marks
FROM student_table
WHERE marks>(SELECT AVG(marks) FROM student_table);

