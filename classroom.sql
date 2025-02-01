
CREATE DATABASE college;
USE college; 
show databases;

    -- Create table
CREATE TABLE students(
rollno INT PRIMARY KEY,
name VARCHAR(50)
);


-- Select & View ALL columns and data

SELECT * FROM students;

-- Insert => adding data into table for multi-values

INSERT INTO students
(rollno,name)
VALUES
(101,"chhaya"),
(102,"sakshi"),
(103,"umang");

SELECT * FROM students;

-- Insert => adding data into table for single-values

INSERT INTO students VALUES(104,"shraddha");

SELECT * FROM students;