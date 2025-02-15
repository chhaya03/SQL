-- Question=> For the given table , find the total payment according to each payment method.

CREATE DATABASE Customer_database;
USE Customer_database;

CREATE TABLE customer(
customer_id INT PRIMARY KEY,
customer VARCHAR(50),
mode varchar(50),
city VARCHAR(20)
);

SELECT * FROM customer;

INSERT INTO customer(customer_id,customer,mode,city)
VALUES
(101,"Olivia Barent","Netbanking","Portland"),
(102,"Ethan sinclair","Credit Card","Miami"),
(103,"Maya","Credit Card","Seatle"),
(104,"Liam","Netbanking","Denver"),
(105,"sophia","Credit Card","New Orieans"),
(106,"Caleb Foster","Debit Card","Phoenix"),
(107,"Ava Patel","Debit card","Boston");

SELECT mode, COUNT(customer)
FROM customer
GROUP BY mode;

