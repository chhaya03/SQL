-- Joins in SQL
-- Join is used to combine rows from two or more tables, based on a related column between them.

CREATE DATABASE learn_joins;
USE learn_joins;

CREATE TABLE student
(
 student_id INT,
 name VARCHAR(50)
);

INSERT INTO student(student_id, name)
VALUES
(101,"adam"),
(102,"bob"),
(103,"casey");

SELECT * FROM student;



CREATE TABLE course
(
 student_id INT,
 course VARCHAR(50)
);

INSERT INTO course(student_id,course)
VALUES
(102,"english"),
(105,"math"),
(103,"science"),
(107,"computer_science");

ALTER TABLE course
CHANGE student_id course_id INT;

SELECT * FROM course;


-- Inner Join=>Returns records that have matching values in both tables
SELECT * 
FROM student
INNER JOIN course
ON student.student_id=course.course_id;


-- Left Join =>Returns all records from the left table, and the matched records from the right table
SELECT * 
FROM student
LEFT JOIN course
ON student.student_id=course.course_id;


-- Right Join =>Returns all records from the right table, and the matched records from the left table
SELECT * 
FROM student
RIGHT JOIN course
ON student.student_id=course.course_id;


-- Full Join =>Returns all records when there is a match in either left or right table
SELECT * 
FROM student
LEFT JOIN course
ON student.student_id=course.course_id
UNION
SELECT * 
FROM student
RIGHT JOIN course
ON student.student_id=course.course_id;


-- Left Exclusive Join
SELECT * 
FROM student
LEFT JOIN course
ON student.student_id=course.course_id
WHERE course.course_id IS NULL;



 -- Right Exclusive Join
 SELECT * 
FROM student
RIGHT JOIN course
ON student.student_id=course.course_id
WHERE student.student_id IS NULL;


-- FULL Exclusive Join
SELECT * 
FROM student
LEFT JOIN course
ON student.student_id=course.course_id
UNION
SELECT * 
FROM student
RIGHT JOIN course
ON student.student_id=course.course_id
WHERE student.student_id=course.course_id IS NULL;


-- Self join => It is a regular join but the table is joined with itself.
CREATE TABLE employee(
id INT,
name VARCHAR(50),
manager_id int
);

INSERT INTO employee(id,name,manager_id)
VALUES
(101,"ADAM",103),
(102,"BOB",104),
(103,"CASEY", NULL),
(104," DONALD0",103);

SELECT * 
FROM employee as a
join employee as b
ON a.id=b.manager_id;

SELECT a.name as manager_name , a.name
FROM employee as a
join employee as b
ON a.id=b.manager_id;




