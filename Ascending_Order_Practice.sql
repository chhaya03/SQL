-- Question=> Write the query to find avg marks in each city in ascending order

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

SELECT city, AVG(marks)
FROM STUDENT
GROUP BY city
ORDER BY city ASC;