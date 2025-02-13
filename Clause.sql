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




-- Limit Clause=> Sets an upper limit on number of (tuples)rows to be returned
-- NO of students will appear after applying limit
SELECT * 
FROM student 
LIMIT 3;


-- Order By Clause=> To sort in ascending (ASC) or descending order (DESC)
SELECT * 
FROM student
ORDER BY city ASC;

SELECT *
FROM student
ORDER BY marks ASC;

SELECT *
FROM student
ORDER BY marks  DESC
LIMIT 3;


-- Group By Clause => Groups rows that have the same values into summary rows.
SELECT city, count(name)   -- Count number of students in each city
FROM student
GROUP BY city;


-- Having Clause=> Similar to Where i.e. applies some condition on rows. Used when we want to apply any condition after grouping.
SELECT city,COUNT(rollno)
FROM student
GROUP BY city
HAVING MAX(marks>90);




