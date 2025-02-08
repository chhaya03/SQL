CREATE DATABASE IF NOT EXISTS college_students;
USE college_students;

CREATE TABLE student(
 rollno INT,
 name VARCHAR(50),
 marks FLOAT,
 grade VARCHAR(1),
 city VARCHAR(50)
);

INSERT INTO student(rollno,name,marks,grade,city)
VALUES
(101,"Bhumika",93,"A","Mumbai"),
(102,"Anil",78,"B","Pune"),
(103,"Chetan",85,"B","Mumbai"),
(104,"Dhruv",96,"A","Delhi"),
(105,"emanuel",13,"F","Delhi"),
(101,"Farah",82,"B","Delhi");

SELECT * FROM student;

-- arithmetic operator
-- adding 10 into marks should be greater than 100
SELECT * FROM student
WHERE marks+10>100;

-- AND (to check for both conditions to be true)
SELECT * FROM student 
WHERE marks>=90 AND city="Mumbai";

-- OR (to check for one of the conditions to be true)
SELECT * FROM student
WHERE marks>=90 OR city="Mumbai";

-- Between (selects for a given range)
SELECT *
FROM student
WHERE marks BETWEEN 80 AND 90;

-- In (matches any value in the list)
-- students they are in these city
SELECT *
FROM student
WHERE city IN ("Delhi","Mumbai");

-- NOT (to negate the given condition)
-- students they are not in these city 
SELECT *
FROM student
WHERE city NOT IN ("Delhi","Mumbai");





