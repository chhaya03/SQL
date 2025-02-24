-- Indexing in Sql improves query performance by creating indexes on tables.

CREATE DATABASE LibraryDB;
USE LibraryDB;

CREATE TABLE Books(
  book_id INT,
  title VARCHAR(50),
  Author VARCHAR(50)
);
INSERT INTO Books(book_id,title,Author)
VALUES
(1,"The Great Gatsby","Scott"),
(2,"Dytopian","George Orwell"),
(3,"To Kill A Mockingbird","Harper Lee");

SELECT * FROM Books;


CREATE TABLE Member(
member_id INT,
name VARCHAR(50),
email VARCHAR(50),
phone VARCHAR(50)
);
INSERT INTO Member(member_id,name,email,phone)
VALUES
(1,"John Doe", 'john.doe@example.com','68878786'),
(2,'Alice','Alice.@example.com','989+69898'),
(3,'smith','Smith.@example.com','87979686');


SELECT * FROM Member;


CREATE INDEX idx_book_title ON Books
(title);
CREATE INDEX idx_member_email ON Member
 (email);
 
 SHOW INDEXES FROM Books;
  SHOW INDEXES FROM Member;
