CREATE DATABASE IF NOT EXISTS xyz_Company;

USE xyz_Company;
CREATE TABLE employee(
 id INT PRIMARY KEY,
 Name VARCHAR(50),
 Salary FLOAT
);
SELECT * FROM employee;

INSERT INTO employee(id,Name,Salary)
VALUES
(1,"Adam",25000),
(2,"bob",30000),
(3,"casey",40000);

SELECT * FROM employee;
