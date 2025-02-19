-- Union => It is used to combine the result-set of two or more SELECT statements.Gives UNIQUE records.

CREATE DATABASE learn_union;
USE learn_union;

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
 course_id INT,
 course VARCHAR(50)
);


INSERT INTO course(course_id,course)
VALUES
(102,"english"),
(105,"math"),
(103,"science"),
(107,"computer_science");

SELECT * FROM course;


SELECT student_id FROM student
UNION 
SELECT course_id FROM course;



SELECT student_id FROM student
UNION ALL
SELECT course_id FROM course;