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

