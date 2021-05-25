--Create database Organisation
mysql> CREATE DATABASE ORGANISATION;
Query OK, 1 row affected (0.00 sec)

-- Create the tables.
mysql> CREATE TABLE EMPLOYEE(EMP_NO INT(25) NOT NULL PRIMARY KEY,EMP_NAME VARCHAR(20) NOT NULL,ADDRESS VARCHAR(30) NOT NULL,MOBILE_NO INT(10) NOT NULL,DEPT_NO INT(25) NOT NULL,SALARY INT(100) NOT NULL,DESIGNATION VARCHAR(20) NOT NULL);
Query OK, 0 rows affected (0.73 sec)

mysql> CREATE TABLE DEPARTMENT(DEPT_NO INT(20) NOT NULL,DEPT_NAME VARCHAR(20) NOT NULL,LOCATION VARCHAR(20) NOT NULL);
Query OK, 0 rows affected (0.67 sec)

--Add 5 rows in the employee and dept tables
mysql> INSERT INTO EMPLOYEE VALUES(101,"SID","KOLLAM",6549873214,1,25000,"ACCOUNTS");
Query OK, 1 row affected, 1 warning (0.06 sec)

mysql> INSERT INTO EMPLOYEE VALUES(102,"JIM","TVM",7894563214,2,18000,"TYPIST");
Query OK, 1 row affected, 1 warning (0.31 sec)

mysql> INSERT INTO EMPLOYEE VALUES(103,"CARRY","KOLLAM",7858479652,3,45000,"MANAGER");

Query OK, 1 row affected, 1 warning (0.05 sec)
mysql> INSERT INTO EMPLOYEE VALUES(104,"TOM","KOCHI",9645877856,4,35000,"ASSITANT");
Query OK, 1 row affected, 1 warning (0.06 sec)

mysql> INSERT INTO EMPLOYEE VALUES(105,"JOHN","KOTTYAM",8147854682,5,15000,"TYPIST");
Query OK, 1 row affected, 1 warning (0.31 sec)
 

mysql> INSERT INTO DEPARTMENT VALUES(101,"A BLOCK","F1");
Query OK, 1 row affected (0.31 sec)

mysql> INSERT INTO DEPARTMENT VALUES(102,"B BLOCK","F2");
Query OK, 1 row affected (0.06 sec)

mysql> INSERT INTO DEPARTMENT VALUES(103,"C BLOCK","F3");
Query OK, 1 row affected (0.06 sec)

mysql> INSERT INTO DEPARTMENT VALUES(104,"D BLOCK","F4");
Query OK, 1 row affected (0.06 sec)

mysql> INSERT INTO DEPARTMENT VALUES(105,"E BLOCK","F5");
Query OK, 1 row affected (0.05 sec)

--Display all the records from the tables
mysql>  SELECT *FROM EMPLOYEE; 
+--------+----------+---------+------------+---------+--------+-------------+
| EMP_NO | EMP_NAME | ADDRESS | MOBILE_NO  | DEPT_NO | SALARY | DESIGNATION |
+--------+----------+---------+------------+---------+--------+-------------+
|    101 | SID      | KOLLAM  | 6549873214 |       1 |  25000 | ACCOUNTS    |
|    102 | JIM      | TVM     | 7894563214 |       2 |  18000 | TYPIST      |
|    103 | CARRY    | KOLLAM  | 7858479652 |       3 |  45000 | MANAGER     |
|    104 | TOM      | KOCHI   | 9645877856 |       4 |  35000 | ASSITANT    |
|    105 | JOHN     | KOTTYAM | 8147854682 |       5 |  15000 | TYPIST      |
+--------+----------+---------+------------+---------+--------+-------------+
5 rows in set (0.00 sec)

mysql>  SELECT *FROM DEPARTMENT;
+---------+-----------+----------+
| DEPT_NO | DEPT_NAME | LOCATION |
+---------+-----------+----------+
|     101 | A BLOCK   | F1       |
|     102 | B BLOCK   | F2       |
|     103 | C BLOCK   | F3       |
|     104 | D BLOCK   | F4       |
|     105 | E BLOCK   | F5       |
+---------+-----------+----------+
5 rows in set (0.00 sec)

--Display the empno and name of all the employees from Dept_no2
mysql> SELECT EMP_NO,EMP_NAME FROM EMPLOYEE WHERE DEPT_NO=2;
+--------+----------+
| EMP_NO | EMP_NAME |
+--------+----------+
|    102 | JIM      |
+--------+----------+
1 row in set (0.00 sec)

--Display empno,name,designation,dept no and salary in the descending order of salary
mysql> SELECT EMP_NO,EMP_NAME,DESIGNATION,DEPT_NO,SALARY FROM EMPLOYEE ORDER BY
SALARY DESC;
+--------+----------+-------------+---------+--------+
| EMP_NO | EMP_NAME | DESIGNATION | DEPT_NO | SALARY |
+--------+----------+-------------+---------+--------+
|    103 | CARRY    | MANAGER     |       3 |  45000 |
|    104 | TOM      | ASSITANT    |       4 |  35000 |
|    101 | SID      | ACCOUNTS    |       1 |  25000 |
|    102 | JIM      | TYPIST      |       2 |  18000 |
|    105 | JOHN     | TYPIST      |       5 |  15000 |
+--------+----------+-------------+---------+--------+
5 rows in set (0.00 sec)

--Display the empno and name of all employees whose salary is between 20000 and 50000
mysql> SELECT EMP_NO,EMP_NAME FROM EMPLOYEE WHERE SALARY BETWEEN 20000 AND 50000;
+--------+----------+
| EMP_NO | EMP_NAME |
+--------+----------+
|    101 | SID      |
|    103 | CARRY    |
|    104 | TOM      |
+--------+----------+
3 rows in set (0.00 sec)

--Display all designations without duplicate values.
mysql> SELECT DISTINCT DESIGNATION FROM EMPLOYEE;
+-------------+
| DESIGNATION |
+-------------+
| ACCOUNTS    |
| TYPIST      |
| MANAGER     |
| ASSITANT    |
+-------------+
4 rows in set (0.00 sec)

--Display the deptname and total salary of employees of each department.
mysql> SELECT EMP_NAME,SALARY FROM EMPLOYEE;
+----------+--------+
| EMP_NAME | SALARY |
+----------+--------+
| SID      |  25000 |
| JIM      |  18000 |
| CARRY    |  45000 |
| TOM      |  35000 |
| JOHN     |  15000 |
+----------+--------+
5 rows in set (0.00 sec)

--Change the salary of employees to 25000 whose designation is ‘Typist’
mysql> UPDATE EMPLOYEE SET SALARY=25000 WHERE DESIGNATION="TYPIST";
Query OK, 2 rows affected (0.08 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql>  SELECT * FROM EMPLOYEE;
+--------+----------+---------+------------+---------+--------+-------------+
| EMP_NO | EMP_NAME | ADDRESS | MOBILE_NO  | DEPT_NO | SALARY | DESIGNATION |
+--------+----------+---------+------------+---------+--------+-------------+
|    101 | SID      | KOLLAM  | 6549873214 |       1 |  25000 | ACCOUNTS    |
|    102 | JIM      | TVM     | 7894563214 |       2 |  25000 | TYPIST      |
|    103 | CARRY    | KOLLAM  | 7858479652 |       3 |  45000 | MANAGER     |
|    104 | TOM      | KOCHI   | 9645877856 |       4 |  35000 | ASSITANT    |
|    105 | JOHN     | KOTTYAM | 9745284679 |       5 |  25000 | TYPIST      |
+--------+----------+---------+------------+---------+--------+-------------+
5 rows in set (0.00 sec)

--Change the mobile no of employee named ‘JOHN’
mysql> UPDATE EMPLOYEE SET MOBILE_NO=9745284679 WHERE EMP_NAME="JOHN";
Query OK, 0 rows affected, 1 warning (0.33 sec)
Rows matched: 1  Changed: 0  Warnings: 1

mysql>  SELECT *FROM EMPLOYEE;
+--------+----------+---------+------------+---------+--------+-------------+
| EMP_NO | EMP_NAME | ADDRESS | MOBILE_NO  | DEPT_NO | SALARY | DESIGNATION |
+--------+----------+---------+------------+---------+--------+-------------+
|    101 | SID      | KOLLAM  | 6549873214 |       1 |  25000 | ACCOUNTS    |
|    102 | JIM      | TVM     | 7894563214 |       2 |  18000 | TYPIST      |
|    103 | CARRY    | KOLLAM  | 7858479652 |       3 |  45000 | MANAGER     |
|    104 | TOM      | KOCHI   | 9645877856 |       4 |  35000 | ASSITANT    |
|    105 | JOHN     | KOTTYAM | 9745284679 |       5 |  15000 | TYPIST      |
+--------+----------+---------+------------+---------+--------+-------------+
5 rows in set (0.00 sec)

--Delete all employees whose salaries are equal to Rs.35000
mysql> DELETE FROM EMPLOYEE WHERE SALARY=35000;
Query OK, 1 row affected (0.06 sec)

mysql>  SELECT * FROM EMPLOYEE;
+--------+----------+---------+------------+---------+--------+-------------+
| EMP_NO | EMP_NAME | ADDRESS | MOBILE_NO  | DEPT_NO | SALARY | DESIGNATION |
+--------+----------+---------+------------+---------+--------+-------------+
|    101 | SID      | KOLLAM  | 6549873214 |       1 |  25000 | ACCOUNTS    |
|    102 | JIM      | TVM     | 7894563214 |       2 |  25000 | TYPIST      |
|    103 | CARRY    | KOLLAM  | 7858479652 |       3 |  45000 | MANAGER     |
|    105 | JOHN     | KOTTYAM | 9745284679 |       5 |  25000 | TYPIST      |
+--------+----------+---------+------------+---------+--------+-------------+
4 rows in set (0.00 sec)

--Select the department that has total salary paid for its employees more than 25000
mysql> SELECT DEPT_NO FROM EMPLOYEE WHERE SALARY>25000 ;
+---------+
| DEPT_NO |
+---------+
|       3 |
+---------+
1 row in set (0.00 sec)