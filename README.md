# SQL

<h1>What is Database?</h1>
Database is a collection of interrelated data.

<h1>What is DBMS?</h1>
DBMS (Database Management System) is software used to create, manage, and organize
databases.

<h1>What is RDBMS?
</h1>
● RDBMS (Relational Database Management System) - is a DBMS based on the
concept of tables (also called relations).<br>
● Data is organized into tables (also known as relations) with rows (records) and
columns (attributes).<br>
● Eg - MySQL, PostgreSQL, Oracle etc.


<h1>What is SQL?</h1>
SQL is Structured Query Language - used to store, manipulate and retrieve data from
RDBMS.
(It is not a database, it is a language used to interact with database)

<h3>We use SQL for CRUD Operations :</h3><br>
● CREATE - To create databases, tables, insert tuples in tables etc<br>
● READ - To read data present in the database.<br>
● UPDATE - Modify already inserted data.<br>
● DELETE - Delete database, table or specific data point/tuple/row or multiple rows.<br>

*Note - SQL keywords are NOT case sensitive. Eg: select is the same as SELECT in SQL.


<h1>SQL v/s MySQL</h1>
SQL is a language used to perform CRUD operations in Relational DB, while MySQL is a
RDBMS that uses SQL.<br>


<h1>SQL Data Types</h1>
In SQL, data types define the kind of data that can be stored in a column or variable.

<table>
  <tr>
    <td>DATATYPE </td>
    <td>DESCRIPTION</td>
    <td>USAGE
</td>
  </tr>
   <tr>
    <td>
      CHAR
    </td>
    <td>string(0-255), can store characters of fixed length</td>
    <td> CHAR(50)</td>
  </tr>
   <tr>
    <td>VARCHAR</td>
    <td>string(0-255), can store characters up to given length</td>
    <td>VARCHAR(50</td>
  </tr>
   <tr>
    <td>BLOB </td>
    <td>string(0-65535), can store binary large object</td>
    <td>BLOB(1000)</td>
  </tr>
   <tr>
    <td>INT </td>
    <td>integer( -2,147,483,648 to 2,147,483,647 )</td>
    <td>INT</td>
  </tr>
  <tr>
    <td>TINYINT</td>
    <td>nteger(-128 to 127) </td>
    <td>TINYINT</td>
  </tr>
   <tr>
    <td>BIGINT </td>
    <td>integer( -9,223,372,036,854,775,808 to
9,223,372,036,854,775,807 )
</td>
    <td>BIGINT
</td>
  </tr>
   <tr>
    <td>BIT</td>
    <td>can store x-bit values. x can range from 1 to 64 </td>
    <td>BIT(2)
</td>
  </tr>
   <tr>
    <td>FLOAT</td>
    <td>Decimal number - with precision to 23 digits</td>
    <td>FLOAT</td>
  </tr>
   <tr>
    <td>DOUBLE</td>
    <td>Decimal number - with 24 to 53 digits</td>
    <td>DOUBLE</td>
  </tr>

  <tr>
    <td>BOOLEAN</td>
    <td>Boolean values 0 or 1</td>
    <td>BOOLEAN</td>
  </tr>
   <tr>
    <td>DATE</td>
    <td>date in format of YYYY-MM-DD ranging from
1000-01-01 to 9999-12-31
</td>
    <td>DATE
</td>
  </tr>
   <tr>
    <td>TIME</td>
    <td>HH:MM:SS </td>
    <td>TIME</td>
  </tr>
   <tr>
    <td>YEAR</td>
    <td>year in 4 digits format ranging from 1901 to 2155</td>
    <td>YEAR</td>
 
</table>

<h3>*Note -</h3> CHAR is for fixed length & VARCHAR is for variable length strings. Generally,
VARCHAR is better as it only occupies necessary memory & works more efficiently.<br>
We can also use UNSIGNED with datatypes when we only have positive values to add.
Eg - UNSIGNED INT


<h1>Types of SQL Commands:
</h1>
1. DQL(Data Query Language) : Used to retrieve data from databases. (SELECT)<br>
 2. DDL(Data Definition Language) : Used to create, alter, and delete database objects
 like tables, indexes, etc. (CREATE, DROP, ALTER, RENAME, TRUNCATE)<br>
 3. DML(Data Manipulation Language): Used to modify the database. (INSERT,
 UPDATE, DELETE)<br>
 4. DCL(Data Control Language): Used to grant & revoke permissions. (GRANT,
 REVOKE)<br>
 5. TCL(Transaction Control Language): Used to manage transactions. (COMMIT,
 ROLLBACK, START TRANSACTIONS, SAVEPOINT)<br>


 <h2>1. Data Definition Language (DDL)</h2>
  Data Definition Language (DDL) is a subset of SQL (Structured Query Language)
 responsible for defining and managing the structure of databases and their objects.
 DDL commands enable you to create, modify, and delete database objects like tables,
 indexes, constraints, and more.<br>
  Key DDL Commands are:

 <h3> ● CREATE TABLE:</h3>
 ○ Used to create a new table in the database.<br>
 ○ Specifies the table name, column names, data types, constraints, and more.<br>
 ○ Example:CREATE TABLE employees (id INT PRIMARY KEY, name VARCHAR(50),
 salary DECIMAL(10, 2));

 <h3> ● ALTERTABLE:</h3>
  ○ Used to modify the structure of an existing table.<br>
 ○ You can add, modify, or drop columns, constraints, and more.<br>
 ○ Example: ALTER TABLE employees ADD COLUMN email VARCHAR(100);<br>

 <h3>● DROPTABLE:</h3>
 ○ Used to delete an existing table along with its data and structure.<br>
 ○ Example: DROP TABLE employees;

<h3>● CREATEINDEX:</h3>
 ○ Used to create an index on one or more columns in a table.<br>
 ○ Improves query performance by enabling faster data retrieval.<br>
 ○ Example: CREATE INDEX idx_employee_name ON employees (name);


 <h3>● DROP INDEX:</h3>
 ○ Used to remove an existing index from a table.<br>
 ○ Example: DROP INDEX idx_employee_name;<br>


 <h3>● CREATE CONSTRAINT:</h3>
 ○ Used to define constraints that ensure data integrity.<br>
 ○ Constraints include PRIMARY KEY, FOREIGN KEY, UNIQUE, NOT NULL,
 and CHECK.<br>
 ○ Example: ALTER TABLE orders ADD CONSTRAINT fk_customer FOREIGN
 KEY (customer_id) REFERENCES customers(id);


 <h3>● DROP CONSTRAINT:</h3>
 ○ Used to remove an existing constraint from a table.<br>
 ○ Example: ALTER TABLE orders DROP CONSTRAINT fk_customer;<br>

<h3> ● TRUNCATE TABLE:</h3>
 ○ Used to delete the data inside a table, but not the table itself.<br>
 ○ Syntax– TRUNCATETABLEtable_name


 <h2>2. DATA QUERY/RETRIEVAL LANGUAGE (DQL or DRL)</h2>
  DQL (Data Query Language) is a subset of SQL focused on retrieving data from databases.
 The SELECT statement is the foundation of DQL and allows us to extract specific columns
 from a table.

 <h3> ● SELECT:</h3>
 The SELECT statement is used to select data from a database.<br>
Syntax: SELECT column1, column2, ... FROM table_name;<br>
 Here, column1, column2, ... are the field names of the table.
 If you want to select all the fields available in the table, use the following syntax:
 SELECT * FROMtable_name;<br>
 Ex: SELECT CustomerName, City FROM Customers;
 
<h3> ● WHERE:</h3>
 The WHEREclause is used to filter records.<br>
 Syntax: SELECT column1, column2, ... FROM table_name WHERE condition;<br>
 Ex: SELECT * FROM Customers WHERE Country='Mexico';<br>
<h4> Operators used in WHERE are:</h4>
 = :Equal<br>
 > :Greater than<br>
 < :Less than <br>
 >= : Greater than or equal<br>
 <= : Less than or equal<br>
 <> : Not equal.<br>
 Note: In some versions of SQL this operator may be written as !=
   
<h3> ● AND,OR and NOT:</h3>
The WHEREclause can be combined with AND, OR, and NOT operators.<br>
 The AND and ORoperators are used to filter records based on more than one
 condition:<br>
 The AND operator displays a record if all the conditions separated by AND are
 TRUE.<br>
 The ORoperator displays a record if any of the conditions separated by OR is TRUE.<br>
 The NOT operator displays a record if the condition(s) is NOT TRUE.<br>
<h4> Syntax:</h4>
SELECT column1, column2, ... FROM table_name WHERE condition1 AND condition2 AND
 condition3 ...;<br>
 SELECT column1, column2, ... FROM table_name WHERE condition1 OR condition2 OR
 condition3 ...;<br>
 SELECT column1, column2, ... FROM table_name WHERE NOT condition;
 Example:<br>
 SELECT * FROMCustomers WHERE Country=’India’ AND City=’Japan’;<br>
 SELECT * FROMCustomers WHERE Country=’America’ AND (City=’India’ OR
 City=’Korea’);
   
<h3> ● DISTINCT:</h3>
 Removes duplicate rows from query results.<br>
 Syntax: SELECT DISTINCT column1, column2 FROM table_name;
 
<h3> ● LIKE:</h3>
 The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.<br>
 There are two wildcards often used in conjunction with the LIKE operator:--<br>
 The percent sign (%) represents zero, one, or multiple characters
 The underscore sign (_) represents one, single character<br>
 Example: SELECT * FROM employees WHERE first_name LIKE 'J%';<br>
 WHERECustomerName LIKE 'a%'<br>
Finds any values that start with "a"<br>
 WHERECustomerName LIKE '%a'<br>
Finds any values that end with "a"<br>
 WHERECustomerName LIKE '%or%'<br>
Finds any values that have "or" in any position<br>
 WHERECustomerName LIKE '_r%'<br>
Finds any values that have "r" in the second position<br>
WHERECustomerName LIKE 'a_%'<br>
Finds any values that start with "a" and are at least 2 characters in length<br>
 WHERECustomerName LIKE 'a__%'<br>
Finds any values that start with "a" and are at least 3 characters in length<br>
 WHEREContactName LIKE 'a%o'<br>
Finds any values that start with "a" and ends with "o"<br>

<h3> ● IN:</h3>
 Filters results based on a list of values in the WHERE clause.<br>
 Example: SELECT * FROM products WHERE category_id IN (1, 2, 3);
 
<h3> ● BETWEEN:</h3>
 Filters results within a specified range in the WHERE clause.<br>
 Example: SELECT * FROM orders WHERE order_date BETWEEN '2023-01-01' AND
 '2023-06-30';
 
<h3> ● IS NULL:</h3>
 Checks for NULL values in the WHERE clause.<br>
 Example: SELECT * FROM customers WHERE email IS NULL;
 
<h3> ● AS:</h3>
 Renames columns or expressions in query results.<br>
 Example: SELECT first_name AS "First Name", last_name AS "Last Name" FROM
 employees;
 
<h3> ● ORDER BY</h3>
 The ORDERBYclause allows you to sort the result set of a query based on one or more
 columns.
 
<h4> Basic Syntax:</h4>
The ORDER BY clause is used after the SELECT statement to sort query results.
Syntax:SELECT column1, column2 FROM table_name ORDER BY column1
 [ASC|DESC];
 <h4>
 Ascending and Descending Order:---</h4>
By default, the ORDER BY clause sorts in ascending order (smallest to largest).<br>
 You can explicitly specify descending order using the DESC keyword.<br>
 Example: SELECT product_name, price FROM products ORDER BY price DESC;
 
<h4> Sorting by Multiple Columns:--</h4>
You can sort by multiple columns by listing them sequentially in the ORDER BY
 clause.<br>
 Rows are first sorted based on the first column, and for rows with equal values,
 subsequent columns are used for further sorting.<br>
 Example: SELECT first_name, last_name FROM employees ORDER BY last_name,
 first_name;
 
 <h4>Sorting by Expressions:--</h4>
 It's possible to sort by calculated expressions, not just column values.<br>
 Example: SELECT product_name, price, price * 1.1 AS discounted_price FROM
 products ORDER BY discounted_price;
<h4> Sorting NULL Values:--</h4><br>
By default, NULL values are considered the smallest in ascending order and the
 largest in descending order.<br>
 You can control the sorting behaviour of NULL values using the NULLS FIRST or
 NULLS LAST options.<br>
 Example: SELECT column_name FROM table_name ORDER BY column_name
 NULLS LAST;
 
 <h4>Sorting by Position:--</h4>
 Instead of specifying column names, you can sort by column positions in the ORDER
 BY clause.<br>
 Example: SELECT product_name, price FROM products ORDER BY 2 DESC, 1
 ASC;
 
<h3> ● GROUP BY</h3>
 The GROUPBYclause in SQL is used to group rows from a table based on one or more
 columns.<br>
 Syntax: The GROUPBYclause follows the SELECT statement and is used to group rows
 based on specified columns.<br>
Syntax: SELECT column1, aggregate_function(column2) FROM table_name
 GROUPBYcolumn1; 
 
<h4> Aggregation Functions:---</h4>
 ○ Aggregation functions (e.g., COUNT, SUM, AVG, MAX, MIN) are often used
 with GROUP BY to calculate values for each group.<br>
 ○ Example: SELECT department, AVG(salary) FROM employees GROUP BY
 department;<br>
 
 <h4>Grouping by Multiple Columns:---</h4>
 ○ Youcangroup by multiple columns by listing them in the GROUP BY clause.<br>
 ○ Thiscreates a hierarchical grouping based on the specified columns.<br>
 ○ Example: SELECT department, gender, AVG(salary) FROM employees
 GROUPBYdepartment, gender;
 
<h4> HAVING Clause:---</h4>
 ○ TheHAVINGclause is used with GROUP BY to filter groups based on
 aggregate function results.<br>
 ○ It's similar to the WHERE clause but operates on grouped data.<br>
 ○ Example: SELECT department, AVG(salary) FROM employees GROUP BY
 department HAVING AVG(salary) > 50000;
 
 <h4>Combining GROUP BY and ORDER BY:---</h4>
 ○ Youcanuseboth GROUPBYandORDERBYinthesamequery to control
 the order of grouped results.<br>
 ○ Example: SELECT department, COUNT(*) FROM employees GROUP BY
 department ORDER BY COUNT(*) DESC;
 
<h3>● AGGREGATE FUNCTIONS</h3>
 These are used to perform calculations on groups of rows or entire result sets. They provide
 insights into data by summarising and processing information.<br>
 
<h4> Common Aggregate Functions:--</h4>
COUNT(): Counts the number of rows in a group or result set.<br>
 SUM(): Calculates the sum of numeric values in a group or result set.<br>
 AVG():Computes the average of numeric values in a group or result set.<br>
 MAX():Finds the maximum value in a group or result set.<br>
 MIN():Retrieves the minimum value in a group or result set.<br>
