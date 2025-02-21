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

 <h3> ● ALTER TABLE:</h3>
  ○ Used to modify the structure of an existing table.<br>
 ○ You can add, modify, or drop columns, constraints, and more.<br>
 ○ Example: ALTER TABLE employees ADD COLUMN email VARCHAR(100);<br>

 <h3>● DROP TABLE:</h3>
 ○ Used to delete an existing table along with its data and structure.<br>
 ○ Example: DROP TABLE employees;

<h3>● CREATE INDEX:</h3>
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
 MIN():Retrieves the minimum value in a group or result set.

 <h2>3. DATA MANIPULATION LANGUAGE</h2>
 Data Manipulation Language (DML) in SQL encompasses commands that manipulate data
 within a database. DML allows you to insert, update, and delete records, ensuring the
 accuracy and currency of your data.

 <h3> ● INSERT:</h3>
 --
The INSERT statement adds new records to a table.<br>
 Syntax: INSERT INTO table_name (column1, column2, ...) VALUES (value1, value2,
 ...);<br>
 Example: INSERT INTO employees (first_name, last_name, salary) VALUES ('John',
 'Doe', 50000);

<h3>  ● UPDATE:--</h3>
The UPDATE statement modifies existing records in a table.<br>
 Syntax: UPDATE table_name SET column1 = value1, column2 = value2, ... WHERE
 condition;<br>
 Example: UPDATE employees SET salary = 55000 WHERE first_name = 'John';
 
 <h3>● DELETE:--</h3>
The DELETE statement removes records from a table.<br>
 Syntax: DELETE FROM table_name WHERE condition;<br>
 Example: DELETE FROM employees WHERE last_name = 'Doe';

 <h2>4. Data Control Language (DCL)</h2>
 Data Control Language focuses on the management of access rights, permissions, and
 security-related aspects of a database system.
 DCL commands are used to control who can access the data, modify the data, or perform
 administrative tasks within a database.
 DCL is an important aspect of database security, ensuring that data remains protected and
 only authorised users have the necessary privileges.
 There are two main DCL commands in SQL: GRANT and REVOKE.

 <h3>1. GRANT:</h3>
 The GRANT command is used to provide specific privileges or permissions to users or roles.
 Privileges can include the ability to perform various actions on tables, views, procedures,
 and other database objects.

 <h4>Syntax:</h4>
 GRANTprivilege_type<br>
 ONobject_name<br>
 TO user_or_role;<br>

 <h4>In this syntax:</h4>
 ● privilege_type refers to the specific privilege or permission being granted (e.g.,
 SELECT, INSERT, UPDATE, DELETE).<br>
 ● object_name is the name of the database object (e.g., table, view) to which the
 privilege is being granted.<br>
 ● user_or_role is the name of the user or role that is being granted the privilege.<br>
 Example: Granting SELECT privilege on a table named "Employees" to a user named
 "Analyst":<br>
 GRANTSELECTONEmployees TO Analyst;

 <h3> 2. REVOKE:</h3>
  The REVOKE command is used to remove or revoke specific privileges or permissions that
 have been previously granted to users or roles.

 <h4> Syntax:</h4>
  REVOKE privilege_type<br>
 ONobject_name<br>
 FROMuser_or_role;

 <h4> In this syntax:</h4>
  ● privilege_type is the privilege or permission being revoked.<br>
 ● object_name is the name of the database object from which the privilege is being
 revoked.<br>
 ● user_or_role is the name of the user or role from which the privilege is being
 revoked.<br>
 Example: Revoking the SELECT privilege on the "Employees" table from the "Analyst" user:<br>
 REVOKE SELECT ONEmployees FROM Analyst;

 <h1>DCL and Database Security:</h1>
 DCL plays a crucial role in ensuring the security and integrity of a database system.
 By controlling access and permissions, DCL helps prevent unauthorised users from
 tampering with or accessing sensitive data. Proper use of GRANT and REVOKE commands
 ensures that only users who require specific privileges can perform certain actions on
 database objects.

 <h2> 5. Transaction Control Language (TCL)</h2>
  Transaction Control Language (TCL) deals with the management of transactions within a
 database.
 TCL commands are used to control the initiation, execution, and termination of transactions,
 which are sequences of one or more SQL statements that are executed as a single unit of
 work.
 Transactions ensure data consistency, integrity, and reliability in a database by grouping
 related operations together and either committing or rolling back changes based on the
 success or failure of those operations.<br>

  There are three main TCL commands in SQL: COMMIT, ROLLBACK, and SAVEPOINT.

  <h3>1. COMMIT:</h3>
  The COMMIT command is used to permanently save the changes made during a
 transaction.<br>
It makes all the changes applied to the database since the last COMMIT or ROLLBACK
 command permanent.<br>
 Once a COMMIT is executed, the transaction is considered successful, and the changes are
 made permanent.<br>

 Example: Committing changes made during a transaction:<br>
  <h4>UPDATE Employees</h4>
 SET Salary = Salary * 1.10<br>
 WHEREDepartment = 'Sales';<br>
 COMMIT
 
 <h3>2. ROLLBACK:</h3>
  The ROLLBACK command is used to undo changes made during a transaction.
 It reverts all the changes applied to the database since the transaction began.<br>
 ROLLBACK is typically used when an error occurs during the execution of a transaction,
 ensuring that the database remains in a consistent state. <br>
 Example: Rolling back changes due to an error during a transaction:<br>
 BEGIN;<br>
 
<h4> UPDATE Inventory</h4>
 SET Quantity = Quantity- 10<br>
 WHEREProductID = 101;-- An error occurs here<br>
 ROLLBACK;

 <h3>3. SAVEPOINT:</h3>
  The SAVEPOINT command creates a named point within a transaction, allowing you to set a
 point to which you can later ROLLBACK if needed.<br>
 SAVEPOINTs are useful when you want to undo part of a transaction while preserving other
 changes.<br>
 Syntax: SAVEPOINT savepoint_name;<br>
 Example: Using SAVEPOINT to create a point within a transaction:<br>
 BEGIN;

 <h4>UPDATE Accounts</h4>
 SET Balance = Balance- 100<br>
 WHEREAccountID = 123;<br>
SAVEPOINT before_withdrawal;<br>


<h4> UPDATE Accounts</h4>
 SET Balance = Balance + 100<br>
 WHEREAccountID = 456;<br>

 -- An error occurs here

  ROLLBACK TObefore_withdrawal;<br>
  -- The first update is still applied<br>
 COMMIT;

<h1>TCL and Transaction Management:</h1>
  Transaction Control Language (TCL) commands are vital for managing the integrity and
 consistency of a database's data.
 They allow you to group related changes into transactions, and in the event of errors, either
 commit those changes or roll them back to maintain data integrity.
 TCL commands are used in combination with Data Manipulation Language (DML) and other
 SQL commands to ensure that the database remains in a reliable state despite unforeseen
 errors or issues.


 <h1>JOINS</h1>
  In a DBMS, a join is an operation that combines rows from two or more tables based on a
 related column between them.<br>
 Joins are used to retrieve data from multiple tables by linking them together using a common
 key or column.

 <h2> Types of Joins:
</h2>
1. Inner Join<br>
 2. Outer Join<br>
 3. Cross Join<br>
 4. Self Join<br>

 <h2> 1) Inner Join</h2>
  An inner join combines data from two or more tables based on a specified condition, known
 as the join condition.<br>
 The result of an inner join includes only the rows where the join condition is met in all
 participating tables.<br>
 It essentially filters out non-matching rows and returns only the rows that have matching
 values in both tables.

<h3> Syntax:</h3><br>
 SELECT columns<br>
 FROMtable1<br>
 INNER JOIN table2<br>
 ONtable1.column = table2.column;

 <h3> Here:</h3>
 ● columns refers to the specific columns you want to retrieve from the tables.<br>
 ● table1 and table2 are the names of the tables you are joining.<br>
 ● columnis the common column used to match rows between the tables.<br>
 ● TheONclause specifies the join condition, where you define how the tables are
 related.


 <h2> 2) Outer Join</h2>
  Outer joins combine data from two o rmore tables based on a specified condition, just like
   inner joins.However,unlike inner joins,outer joins also include rows that do not have
 matching values in both tables.
  Outer joins are particularly useful when you want to include data from one table even if there
 is no corresponding match in the other table.
<h3>Types:</h3>

<h3>1.Left Outer Join(LeftJoin):</h3>
 A left outer join returns all the rows from the left table and the matching rows from the right
 table.
If there is no match in the right table, the result will still include the left table's row with NULL
 values in the right table's columns.

 
<h3> 2. Right Outer Join (Right Join):</h3>
 
  A right outer join is similar to a left outer join, but it returns all rows from the right table and
 the matching rows from the left table.<br>
 If there is no match in the left table, the result will still include the right table's row with NULL
 values in the left table's columns.

 <h3> 3.Full Outer Join(FullJoin):</h3>
  A full outer join returns all rows from both the left and right tables, including matches and
 non-matches.<br>
 If there's no match,NULL values appear in columns from the table where there's no
 corresponding value


 <h3> 3) Cross Join:</h3>
  A cross join, also known as a Cartesian product, is a type of join operation in a Database
 Management System (DBMS) that combines every row from one table with every row from
 another table.<br>
 Unlike other join types, a cross join does not require a specific condition to match rows
 between the tables. Instead, it generates a result set that contains all possible combinations
 of rows from both tables.<br>
 Cross joins can lead to a large result set, especially when the participating tables have many
 rows.

 <h4> Syntax:</h4>
  SELECT columns<br>
 FROM table1<br>
 CROSS JOIN table2;

<h3> 4) Self Join:</h3>
 A self join involves joining a table with itself.
  This technique is useful when at able contains hierarchical or related data and you need to
 compare or analyse rows within the same table.<br>
 Self joins are commonly used to find relationships, hierarchies, or patterns within a single
 table.<br>
 In a self join, you treat the table as if it were two separate tables, referring to them with
 different aliases.


<h1>SET OPERATIONS</h1>
Set operations in SQL are used to combine or manipulate the result sets of multiple SELECT
 queries.<br>
 They allow you to perform operations similar to those in set theory, such as union,
 intersection, and difference, on the data retrieved from different tables or queries.<br>
 Set operations provide powerful tools for managing and manipulating data, enabling you to
 analyse and combine information in various ways.<br>
 
There are four primary set operations in SQL:
   ● UNION<br>
 ● INTERSECT<br>
 ● EXCEPT (or MINUS)<br>
 ● UNION ALL

 <h3> 1. UNION:</h3>
 The UNION operator combines the result sets of two or more SELECT queries into a single
 result set.<br>
 It removes duplicates by default, meaning that if there are identical rows in the result sets,
 only one instance of each row will appear in the final result.<br>
 
<h3> 2. INTERSECT:</h3>
The INTERSECT operator returns the common rows that exist in the result sets of two or
 more SELECT queries.<br>
  It only returns distinct rows that appear in all result sets.

<h3>3. EXCEPT (or MINUS):</h3>
 The EXCEPT operator (also known as MINUS in some databases) returns the distinct rows
 that are present in the result set of the first SELECT query but not in the result set of the
 second SELECT query.
 
  

 <h3> 4. UNION ALL:</h3>
 The UNION ALL operator performs the same function as the UNION operator but does not
 remove duplicates from the result set. It simply concatenates all rows from the different
 result sets.

 <h1> Difference between Set Operations and Joins</h1>
 
 

 
