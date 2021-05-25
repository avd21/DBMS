--Create database.

mysql> CREATE DATABASE ORGANISATION;
Query OK, 1 row affected (0.00 sec)

--Select the current database.

mysql> USE DB_TEST;
Database changed

--Create the tables Employee and Department.

mysql> CREATE TABLE EMPLOYEE(EMP_NO INT(25) NOT NULL PRIMARY KEY,EMP_NAME VARCHAR(20) NOT NULL,DOB DATE NOT NULL,ADDRESS VARCHAR(30) NOT NULL,DOJ DATE NOT NULL,MOBILE_NO INT(10) NOT NULL,DEPT_NO INT(25) NOT NULL,SALARY INT(100) NOT NULL);
Query OK, 0 rows affected (0.73 sec)

mysql> CREATE TABLE DEPARTMENT(DEPT_NO INT(20) NOT NULL,DEPT_NAME VARCHAR(20) NOT NULL,LOCATION VARCHAR(20) NOT NULL);
Query OK, 0 rows affected (0.67 sec)

--List all the tables in the current database

mysql> SHOW TABLES;

--Display the structure of the employee table
mysql> DESC EMPLOYEE;
+------------------------+
| Tables_in_organisation |
+------------------------+
| department             |
| employee               |
+------------------------+
2 rows in set (0.00 sec)

--Display the structure of the employeetable 

mysql> DESC EMPLOYEE;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| EMP_NO    | int(25)     | NO   | PRI | NULL    |       |
| EMP_NAME  | varchar(20) | NO   |     | NULL    |       |
| DOB       | date        | NO   |     | NULL    |       |
| ADDRESS   | varchar(30) | NO   |     | NULL    |       |
| DOJ       | date        | NO   |     | NULL    |       |
| MOBILE_NO | int(10)     | NO   |     | NULL    |       |
| DEPT_NO   | int(25)     | NO   |     | NULL    |       |
| SALARY    | int(100)    | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
8 rows in set (0.01 sec)

--Add a new column Designation to the Employee table.

mysql> ALTER TABLE EMPLOYEE ADD DESIGNATION VARCHAR(20) NOT NULL;
Query OK, 0 rows affected (1.03 sec)
Records: 0  Duplicates: 0  Warnings: 0
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| EMP_NO      | int(25)     | NO   | PRI | NULL    |       |
| EMP_NAME    | varchar(20) | NO   |     | NULL    |       |
| DOB         | date        | NO   |     | NULL    |       |
| ADDRESS     | varchar(30) | NO   |     | NULL    |       |
| DOJ         | date        | NO   |     | NULL    |       |
| MOBILE_NO   | int(10)     | NO   |     | NULL    |       |
| DEPT_NO     | int(25)     | NO   |     | NULL    |       |
| SALARY      | int(100)    | NO   |     | NULL    |       |
| DESIGNATION | varchar(20) | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
9 rows in set (0.00 sec)

--Drop the column location from Department table.

mysql> ALTER TABLE DEPARTMENT DROP COLUMN LOCATION;
Query OK, 0 rows affected (0.95 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESC DEPARTMENT;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| DEPT_NO   | int(20)     | NO   |     | NULL    |       |
| DEPT_NAME | varchar(20) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
2 rows in set (0.02 sec)

--Drop the tables.

mysql> DROP TABLE EMPLOYEE;
Query OK, 0 rows affected (0.16 sec)

mysql> DROP TABLE DEPARTMENT;
Query OK, 0 rows affected (0.16 sec)

--Delete the database

mysql> DROP DATABASE ORGANISATION;
Query OK, 0 rows affected (0.16 sec)

