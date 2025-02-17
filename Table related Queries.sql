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


SET SQL_SAFE_UPDATES=0;

-- Update (to update existing rows)
UPDATE student
SET grade = "B"
WHERE grade ="F";

UPDATE student
SET marks = 12
WHERE rollno =105;

UPDATE student
set marks=marks+1;


-- Delete (to delete existing rows)
DELETE FROM student 
WHERE marks<33;



-- Alter (to change the schema)

-- Add coLUMN
ALTER TABLE student
ADD COLUMN age INT NOT NULL DEFAULT 19;

-- Drop column (it deletes table)
ALTER TABLE student
DROP COLUMN age ;

-- Truncate (to delete table's data)
TRUNCATE TABLE student;

-- CHANGE Column (rename column name)
ALTER TABLE student
CHANGE age stu_age INT NOT NULL DEFAULT 19;

-- RENAME Table(rename table NAME)
-- ALTER TABLE student
-- RENAME TO stu;

ALTER TABLE stu
RENAME TO student;


SELECT * FROM student;
-- SELECT * FROM stu;