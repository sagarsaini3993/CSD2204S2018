MariaDB [csd2204s18]> 
MariaDB [csd2204s18]> 
MariaDB [csd2204s18]> create table Hostel(
    -> hostel_id integer(3),
    -> place varchar(20),
    -> phone_num integer(12),
    -> name varchar(25),
    -> postal_Code integer(8),
    -> email varchar(25),
    -> CONSTRAINT ADD PRIMARY KEY(HOSTEL_ID));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'ADD PRIMARY KEY(HOSTEL_ID))' at line 8
MariaDB [csd2204s18]> create table Hostel(
    -> hostel_id integer(3),
    -> place varchar(20),
    -> phone_num integer(12),
    -> name varchar(25),
    -> postal_Code integer(8),
    -> email varchar(25),
    -> CONSTRAINT PK_hostel_id PRIMARY KEY(hostel_id);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 8
MariaDB [csd2204s18]> create table Hostel(
    -> hostel_id integer(3),
    -> place varchar(20),
    -> phone_num integer(12),
    -> name varchar(25),
    -> postal_Code integer(8),
    -> email varchar(25));
Query OK, 0 rows affected (0.20 sec)

MariaDB [csd2204s18]> alter table hostel ADD PRIMARY KEY(hostel_id);
Query OK, 0 rows affected (0.46 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> desc hostel;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| hostel_id   | int(3)      | NO   | PRI | NULL    |       |
| place       | varchar(20) | YES  |     | NULL    |       |
| phone_num   | int(12)     | YES  |     | NULL    |       |
| name        | varchar(25) | YES  |     | NULL    |       |
| postal_Code | int(8)      | YES  |     | NULL    |       |
| email       | varchar(25) | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [csd2204s18]> create table student(
    -> student_id integer(4),
    -> name varchar(25),
    -> email varchar(25),
    -> phone_num integer(15);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 5
MariaDB [csd2204s18]> create table student(
    -> student_id integer(4),
    -> name varchar(25),
    -> email varchar(25),
    -> phone_num integer(15),
    -> course_id integer(4),
    -> fee varchar(10),
    -> mother_name varchar(20),
    -> father_name varchar(20),
    -> home_address varchar(60));
Query OK, 0 rows affected (0.45 sec)

MariaDB [csd2204s18]> alter table student ADD PRIMARY KEY(student_id);
Query OK, 0 rows affected (0.45 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> alter table student ADD FOREIGN KEY(course_id);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1
MariaDB [csd2204s18]> alter table student ADD FOREIGN KEY(course_id) REFERENCES student(course_id);
ERROR 1005 (HY000): Can't create table `csd2204s18`.`#sql-1b18_3` (errno: 150 "Foreign key constraint is incorrectly formed")
MariaDB [csd2204s18]> alter table student ADD FOREIGN KEY(course_id) REFERENCES course(course_id);
ERROR 1005 (HY000): Can't create table `csd2204s18`.`#sql-1b18_3` (errno: 150 "Foreign key constraint is incorrectly formed")
MariaDB [csd2204s18]> alter table student ADD FOREIGN KEY(course_id) REFERENCES hostel(course_id);
ERROR 1005 (HY000): Can't create table `csd2204s18`.`#sql-1b18_3` (errno: 150 "Foreign key constraint is incorrectly formed")
MariaDB [csd2204s18]> alter table student ADD FOREIGN KEY(course_id) REFERENCES hostel(student_id);
ERROR 1005 (HY000): Can't create table `csd2204s18`.`#sql-1b18_3` (errno: 150 "Foreign key constraint is incorrectly formed")
MariaDB [csd2204s18]> MariaDB [csd2204s18]> 
MariaDB [csd2204s18]> 
MariaDB [csd2204s18]> show tables;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| ac_mast              |
| c1                   |
| c3                   |
| cust_mast            |
| customer             |
| dept                 |
| emp                  |
| hostel               |
| manu                 |
| movie                |
| movies               |
| newtable             |
| orders               |
| persons              |
| products             |
| student              |
| trans                |
+----------------------+
17 rows in set (0.00 sec)

MariaDB [csd2204s18]> desc student;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| student_id   | int(4)      | NO   | PRI | NULL    |       |
| name         | varchar(25) | YES  |     | NULL    |       |
| email        | varchar(25) | YES  |     | NULL    |       |
| phone_num    | int(15)     | YES  |     | NULL    |       |
| course_id    | int(4)      | YES  |     | NULL    |       |
| fee          | varchar(10) | YES  |     | NULL    |       |
| mother_name  | varchar(20) | YES  |     | NULL    |       |
| father_name  | varchar(20) | YES  |     | NULL    |       |
| home_address | varchar(60) | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
9 rows in set (0.03 sec)

MariaDB [csd2204s18]> alter table student add FOREIGN KEY(course_id);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1
MariaDB [csd2204s18]> create table staff(
    -> staff_id integer(4) PRIMARY KEY,
    -> staff_name varchar(20),
    -> phone_num integer(15),
    -> email varchar(25));
Query OK, 0 rows affected (0.22 sec)

MariaDB [csd2204s18]> desc staff;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| staff_id   | int(4)      | NO   | PRI | NULL    |       |
| staff_name | varchar(20) | YES  |     | NULL    |       |
| phone_num  | int(15)     | YES  |     | NULL    |       |
| email      | varchar(25) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> create table course(
    -> course_id integer(4) PRIMARY KEY,
    -> course_name varchar(20),
    -> duration integer(3));
Query OK, 0 rows affected (0.42 sec)

MariaDB [csd2204s18]> desc course;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| course_id   | int(4)      | NO   | PRI | NULL    |       |
| course_name | varchar(20) | YES  |     | NULL    |       |
| duration    | int(3)      | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> create table events(
    -> event_handler varchar(20),
    -> event_name varchar(20),
    -> date date);
Query OK, 0 rows affected (0.22 sec)

MariaDB [csd2204s18]> desc events;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| event_handler | varchar(20) | YES  |     | NULL    |       |
| event_name    | varchar(20) | YES  |     | NULL    |       |
| date          | date        | YES  |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
3 rows in set (0.03 sec)

MariaDB [csd2204s18]> create table department(
    -> dept_id integer(3),
    -> place varchar(20),
    -> dept_name varchar(20));
Query OK, 0 rows affected (0.25 sec)

MariaDB [csd2204s18]> desc department;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| dept_id   | int(3)      | YES  |     | NULL    |       |
| place     | varchar(20) | YES  |     | NULL    |       |
| dept_name | varchar(20) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> alter table department add PRIMARY KEY(dept_id);
Query OK, 0 rows affected (0.50 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> desc department;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| dept_id   | int(3)      | NO   | PRI | NULL    |       |
| place     | varchar(20) | YES  |     | NULL    |       |
| dept_name | varchar(20) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> create table infrastructure(
    -> inf_id integer(3),
    -> inf_name varchar(20),
    -> place varchar(20),
    -> category varchar(20));
Query OK, 0 rows affected (0.27 sec)

MariaDB [csd2204s18]> alter table department add PRIMARY KEY(inf_id);
ERROR 1072 (42000): Key column 'inf_id' doesn't exist in table
MariaDB [csd2204s18]> alter table infrastructure add PRIMARY KEY(inf_id);
Query OK, 0 rows affected (0.49 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> desc infrastructure;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| inf_id   | int(3)      | NO   | PRI | NULL    |       |
| inf_name | varchar(20) | YES  |     | NULL    |       |
| place    | varchar(20) | YES  |     | NULL    |       |
| category | varchar(20) | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> alter table student ADD CONSTRAINT fk_course_id FOREIGN KEY (course_id);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1
MariaDB [csd2204s18]> alter table student ADD FOREIGN KEY(course_id) REFERENCES course(course_id);
Query OK, 0 rows affected (0.58 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> desc student;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| student_id   | int(4)      | NO   | PRI | NULL    |       |
| name         | varchar(25) | YES  |     | NULL    |       |
| email        | varchar(25) | YES  |     | NULL    |       |
| phone_num    | int(15)     | YES  |     | NULL    |       |
| course_id    | int(4)      | YES  | MUL | NULL    |       |
| fee          | varchar(10) | YES  |     | NULL    |       |
| mother_name  | varchar(20) | YES  |     | NULL    |       |
| father_name  | varchar(20) | YES  |     | NULL    |       |
| home_address | varchar(60) | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
9 rows in set (0.00 sec)

MariaDB [csd2204s18]> tee C:/Users/736242/Downloads/practiceLogSS.sql;
MariaDB [(none)]> 
MariaDB [(none)]> 
MariaDB [(none)]> 
MariaDB [(none)]> use csd2204s18;
Database changed
MariaDB [csd2204s18]> 
MariaDB [csd2204s18]> 
MariaDB [csd2204s18]> show tables;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| ac_mast              |
| c1                   |
| c3                   |
| countries            |
| course               |
| cust_mast            |
| customer             |
| department           |
| departments          |
| dept                 |
| emp                  |
| employees            |
| events               |
| hostel               |
| infrastructure       |
| job_history          |
| jobs                 |
| locations            |
| manu                 |
| movie                |
| movies               |
| newtable             |
| orders               |
| persons              |
| products             |
| regions              |
| staff                |
| student              |
| trans                |
+----------------------+
29 rows in set (0.00 sec)

MariaDB [csd2204s18]> insert into hostel values(
    -> );
Query OK, 1 row affected, 1 warning (0.13 sec)

MariaDB [csd2204s18]> desc hostel;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| hostel_id   | int(3)      | NO   | PRI | NULL    |       |
| place       | varchar(20) | YES  |     | NULL    |       |
| phone_num   | int(12)     | YES  |     | NULL    |       |
| name        | varchar(25) | YES  |     | NULL    |       |
| postal_Code | int(8)      | YES  |     | NULL    |       |
| email       | varchar(25) | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from hostel;
+-----------+-------+-----------+------+-------------+-------+
| hostel_id | place | phone_num | name | postal_Code | email |
+-----------+-------+-----------+------+-------------+-------+
|         0 | NULL  |      NULL | NULL |        NULL | NULL  |
+-----------+-------+-----------+------+-------------+-------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> delete from hostel; 
Query OK, 1 row affected (0.13 sec)

MariaDB [csd2204s18]> select * from hostel;
Empty set (0.02 sec)

MariaDB [csd2204s18]> insert into hostel values('1','Block A','43724372','ABC','100200','qwerty@gmail.com');
Query OK, 1 row affected (0.09 sec)

MariaDB [csd2204s18]> insert into hostel values('1','Block B','43724378','ASD','100300','ASD@gmail.com');
ERROR 1062 (23000): Duplicate entry '1' for key 'PRIMARY'
MariaDB [csd2204s18]> insert into hostel values('2','Block B','43724378','ASD','100300','ASD@gmail.com');
Query OK, 1 row affected (0.09 sec)

MariaDB [csd2204s18]> insert into hostel values('3','Block C','43724379','CVB','100800','GHI@gmail.com');
Query OK, 1 row affected (0.08 sec)

MariaDB [csd2204s18]> insert into hostel values('4','Block D','43724328','ZXC','100900','TYU@gmail.com');
Query OK, 1 row affected (0.06 sec)

MariaDB [csd2204s18]> select * from hostel;
+-----------+---------+-----------+------+-------------+------------------+
| hostel_id | place   | phone_num | name | postal_Code | email            |
+-----------+---------+-----------+------+-------------+------------------+
|         1 | Block A |  43724372 | ABC  |      100200 | qwerty@gmail.com |
|         2 | Block B |  43724378 | ASD  |      100300 | ASD@gmail.com    |
|         3 | Block C |  43724379 | CVB  |      100800 | GHI@gmail.com    |
|         4 | Block D |  43724328 | ZXC  |      100900 | TYU@gmail.com    |
+-----------+---------+-----------+------+-------------+------------------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from student;
Empty set (0.00 sec)

MariaDB [csd2204s18]> MariaDB [csd2204s18]> 
MariaDB [csd2204s18]> 
MariaDB [csd2204s18]> update hostel set name = 'Girls hostel', place = 'Havenbrook Rd' where hostel_id = '1';
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> select * from hostel;
+-----------+---------------+-----------+--------------+-------------+------------------+
| hostel_id | place         | phone_num | name         | postal_Code | email            |
+-----------+---------------+-----------+--------------+-------------+------------------+
|         1 | Havenbrook Rd |  43724372 | Girls hostel |      100200 | qwerty@gmail.com |
|         2 | Block B       |  43724378 | ASD          |      100300 | ASD@gmail.com    |
|         3 | Block C       |  43724379 | CVB          |      100800 | GHI@gmail.com    |
|         4 | Block D       |  43724328 | ZXC          |      100900 | TYU@gmail.com    |
+-----------+---------------+-----------+--------------+-------------+------------------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> update hostel set name = 'Boys hostel', place = 'Helen Rd' where hostel_id = '2';
Query OK, 1 row affected (0.08 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> select * from hostel;
+-----------+---------------+-----------+--------------+-------------+------------------+
| hostel_id | place         | phone_num | name         | postal_Code | email            |
+-----------+---------------+-----------+--------------+-------------+------------------+
|         1 | Havenbrook Rd |  43724372 | Girls hostel |      100200 | qwerty@gmail.com |
|         2 | Helen Rd      |  43724378 | Boys hostel  |      100300 | ASD@gmail.com    |
|         3 | Block C       |  43724379 | CVB          |      100800 | GHI@gmail.com    |
|         4 | Block D       |  43724328 | ZXC          |      100900 | TYU@gmail.com    |
+-----------+---------------+-----------+--------------+-------------+------------------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> delete from hostel WHERE hostel_id = '3';
Query OK, 1 row affected (0.07 sec)

MariaDB [csd2204s18]> select * from hostel;
+-----------+---------------+-----------+--------------+-------------+------------------+
| hostel_id | place         | phone_num | name         | postal_Code | email            |
+-----------+---------------+-----------+--------------+-------------+------------------+
|         1 | Havenbrook Rd |  43724372 | Girls hostel |      100200 | qwerty@gmail.com |
|         2 | Helen Rd      |  43724378 | Boys hostel  |      100300 | ASD@gmail.com    |
|         4 | Block D       |  43724328 | ZXC          |      100900 | TYU@gmail.com    |
+-----------+---------------+-----------+--------------+-------------+------------------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> delete from hostel WHERE hostel_id = '4';
Query OK, 1 row affected (0.06 sec)

MariaDB [csd2204s18]> select * from hostel;
+-----------+---------------+-----------+--------------+-------------+------------------+
| hostel_id | place         | phone_num | name         | postal_Code | email            |
+-----------+---------------+-----------+--------------+-------------+------------------+
|         1 | Havenbrook Rd |  43724372 | Girls hostel |      100200 | qwerty@gmail.com |
|         2 | Helen Rd      |  43724378 | Boys hostel  |      100300 | ASD@gmail.com    |
+-----------+---------------+-----------+--------------+-------------+------------------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> desc student;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| student_id   | int(4)      | NO   | PRI | NULL    |       |
| name         | varchar(25) | YES  |     | NULL    |       |
| email        | varchar(25) | YES  |     | NULL    |       |
| phone_num    | int(15)     | YES  |     | NULL    |       |
| course_id    | int(4)      | YES  | MUL | NULL    |       |
| fee          | varchar(10) | YES  |     | NULL    |       |
| mother_name  | varchar(20) | YES  |     | NULL    |       |
| father_name  | varchar(20) | YES  |     | NULL    |       |
| home_address | varchar(60) | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
9 rows in set (0.07 sec)

MariaDB [csd2204s18]> alter table student MODIFY name varchar(25) NOT NULL; 
Query OK, 0 rows affected (1.05 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> desc student;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| student_id   | int(4)      | NO   | PRI | NULL    |       |
| name         | varchar(25) | NO   |     | NULL    |       |
| email        | varchar(25) | YES  |     | NULL    |       |
| phone_num    | int(15)     | YES  |     | NULL    |       |
| course_id    | int(4)      | YES  | MUL | NULL    |       |
| fee          | varchar(10) | YES  |     | NULL    |       |
| mother_name  | varchar(20) | YES  |     | NULL    |       |
| father_name  | varchar(20) | YES  |     | NULL    |       |
| home_address | varchar(60) | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
9 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from student;
Empty set (0.00 sec)

MariaDB [csd2204s18]> alter table student DROP mother_name;
Query OK, 0 rows affected (0.44 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> select * from student;
Empty set (0.00 sec)

MariaDB [csd2204s18]> desc student;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| student_id   | int(4)      | NO   | PRI | NULL    |       |
| name         | varchar(25) | NO   |     | NULL    |       |
| email        | varchar(25) | YES  |     | NULL    |       |
| phone_num    | int(15)     | YES  |     | NULL    |       |
| course_id    | int(4)      | YES  | MUL | NULL    |       |
| fee          | varchar(10) | YES  |     | NULL    |       |
| father_name  | varchar(20) | YES  |     | NULL    |       |
| home_address | varchar(60) | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
8 rows in set (0.00 sec)

MariaDB [csd2204s18]> alter table student ADD DOB date, passsport_num varchar(10), SIN_num integer(10);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'varchar(10), SIN_num integer(10)' at line 1
MariaDB [csd2204s18]> alter table student ADD DOB date, passsport_num varchar(10);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'varchar(10)' at line 1
MariaDB [csd2204s18]> alter table student ADD DOB date;
Query OK, 0 rows affected (0.44 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> alter table student ADD passport_num varchar(10);
Query OK, 0 rows affected (0.59 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> alter table student ADD SIN_num integer(10);
Query OK, 0 rows affected (0.41 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> desc student;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| student_id   | int(4)      | NO   | PRI | NULL    |       |
| name         | varchar(25) | NO   |     | NULL    |       |
| email        | varchar(25) | YES  |     | NULL    |       |
| phone_num    | int(15)     | YES  |     | NULL    |       |
| course_id    | int(4)      | YES  | MUL | NULL    |       |
| fee          | varchar(10) | YES  |     | NULL    |       |
| father_name  | varchar(20) | YES  |     | NULL    |       |
| home_address | varchar(60) | YES  |     | NULL    |       |
| DOB          | date        | YES  |     | NULL    |       |
| passport_num | varchar(10) | YES  |     | NULL    |       |
| SIN_num      | int(10)     | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
11 rows in set (0.00 sec)

MariaDB [csd2204s18]> alter table student ADD nationality varchar(12);
Query OK, 0 rows affected (0.73 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> desc student;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| student_id   | int(4)      | NO   | PRI | NULL    |       |
| name         | varchar(25) | NO   |     | NULL    |       |
| email        | varchar(25) | YES  |     | NULL    |       |
| phone_num    | int(15)     | YES  |     | NULL    |       |
| course_id    | int(4)      | YES  | MUL | NULL    |       |
| fee          | varchar(10) | YES  |     | NULL    |       |
| father_name  | varchar(20) | YES  |     | NULL    |       |
| home_address | varchar(60) | YES  |     | NULL    |       |
| DOB          | date        | YES  |     | NULL    |       |
| passport_num | varchar(10) | YES  |     | NULL    |       |
| SIN_num      | int(10)     | YES  |     | NULL    |       |
| nationality  | varchar(12) | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
12 rows in set (0.00 sec)

MariaDB [csd2204s18]> desc staff;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| staff_id   | int(4)      | NO   | PRI | NULL    |       |
| staff_name | varchar(20) | YES  |     | NULL    |       |
| phone_num  | int(15)     | YES  |     | NULL    |       |
| email      | varchar(25) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.02 sec)

MariaDB [csd2204s18]> alter table staff ADD nationality varchar(12);
Query OK, 0 rows affected (0.45 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> alter table staff ADD SIN_num integer(10);
Query OK, 0 rows affected (0.75 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> alter table staff ADD gender varchar(10);
Query OK, 0 rows affected (0.70 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> desc staff;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| staff_id    | int(4)      | NO   | PRI | NULL    |       |
| staff_name  | varchar(20) | YES  |     | NULL    |       |
| phone_num   | int(15)     | YES  |     | NULL    |       |
| email       | varchar(25) | YES  |     | NULL    |       |
| nationality | varchar(12) | YES  |     | NULL    |       |
| SIN_num     | int(10)     | YES  |     | NULL    |       |
| gender      | varchar(10) | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> desc course;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| course_id   | int(4)      | NO   | PRI | NULL    |       |
| course_name | varchar(20) | YES  |     | NULL    |       |
| duration    | int(3)      | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
3 rows in set (0.03 sec)

MariaDB [csd2204s18]> alter table course add course_name varchar(20) NOT NULL;
ERROR 1060 (42S21): Duplicate column name 'course_name'
MariaDB [csd2204s18]> alter table course MODIFY course_name varchar(20) NOT NULL;
Query OK, 0 rows affected (0.56 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> desc infrastructure;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| inf_id   | int(3)      | NO   | PRI | NULL    |       |
| inf_name | varchar(20) | YES  |     | NULL    |       |
| place    | varchar(20) | YES  |     | NULL    |       |
| category | varchar(20) | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
4 rows in set (0.05 sec)

MariaDB [csd2204s18]> alter table infrastructure DROP category;
Query OK, 0 rows affected (0.56 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> desc infrastructure;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| inf_id   | int(3)      | NO   | PRI | NULL    |       |
| inf_name | varchar(20) | YES  |     | NULL    |       |
| place    | varchar(20) | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> desc department;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| dept_id   | int(3)      | NO   | PRI | NULL    |       |
| place     | varchar(20) | YES  |     | NULL    |       |
| dept_name | varchar(20) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> alter table department DROP place;
Query OK, 0 rows affected (0.39 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> alter table department ADD inf_id integer(3);
Query OK, 0 rows affected (0.39 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> alter table department MODIFY dept_id varchar(3);
Query OK, 0 rows affected (0.55 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> alter table department ADD floor varchar(10);
Query OK, 0 rows affected (0.28 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> desc events;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| event_handler | varchar(20) | YES  |     | NULL    |       |
| event_name    | varchar(20) | YES  |     | NULL    |       |
| date          | date        | YES  |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
3 rows in set (0.03 sec)

MariaDB [csd2204s18]> alter table events DROP date date;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'date' at line 1
MariaDB [csd2204s18]> alter table events DROP date;
Query OK, 0 rows affected (0.34 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> alter table events ADD start_date date;
Query OK, 0 rows affected (0.33 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> alter table events ADD end_date date;
Query OK, 0 rows affected (0.47 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> desc events;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| event_handler | varchar(20) | YES  |     | NULL    |       |
| event_name    | varchar(20) | YES  |     | NULL    |       |
| start_date    | date        | YES  |     | NULL    |       |
| end_date      | date        | YES  |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> desc hostel;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| hostel_id   | int(3)      | NO   | PRI | NULL    |       |
| place       | varchar(20) | YES  |     | NULL    |       |
| phone_num   | int(12)     | YES  |     | NULL    |       |
| name        | varchar(25) | YES  |     | NULL    |       |
| postal_Code | int(8)      | YES  |     | NULL    |       |
| email       | varchar(25) | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [csd2204s18]> desc staff;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| staff_id    | int(4)      | NO   | PRI | NULL    |       |
| staff_name  | varchar(20) | YES  |     | NULL    |       |
| phone_num   | int(15)     | YES  |     | NULL    |       |
| email       | varchar(25) | YES  |     | NULL    |       |
| nationality | varchar(12) | YES  |     | NULL    |       |
| SIN_num     | int(10)     | YES  |     | NULL    |       |
| gender      | varchar(10) | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> desc student;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| student_id   | int(4)      | NO   | PRI | NULL    |       |
| name         | varchar(25) | NO   |     | NULL    |       |
| email        | varchar(25) | YES  |     | NULL    |       |
| phone_num    | int(15)     | YES  |     | NULL    |       |
| course_id    | int(4)      | YES  | MUL | NULL    |       |
| fee          | varchar(10) | YES  |     | NULL    |       |
| father_name  | varchar(20) | YES  |     | NULL    |       |
| home_address | varchar(60) | YES  |     | NULL    |       |
| DOB          | date        | YES  |     | NULL    |       |
| passport_num | varchar(10) | YES  |     | NULL    |       |
| SIN_num      | int(10)     | YES  |     | NULL    |       |
| nationality  | varchar(12) | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
12 rows in set (0.02 sec)

MariaDB [csd2204s18]> desc infrastructure;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| inf_id   | int(3)      | NO   | PRI | NULL    |       |
| inf_name | varchar(20) | YES  |     | NULL    |       |
| place    | varchar(20) | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> desc department;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| dept_id   | varchar(3)  | NO   | PRI | NULL    |       |
| dept_name | varchar(20) | YES  |     | NULL    |       |
| inf_id    | int(3)      | YES  |     | NULL    |       |
| floor     | varchar(10) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> desc course;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| course_id   | int(4)      | NO   | PRI | NULL    |       |
| course_name | varchar(20) | NO   |     | NULL    |       |
| duration    | int(3)      | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from hostel;
+-----------+---------------+-----------+--------------+-------------+------------------+
| hostel_id | place         | phone_num | name         | postal_Code | email            |
+-----------+---------------+-----------+--------------+-------------+------------------+
|         1 | Havenbrook Rd |  43724372 | Girls hostel |      100200 | qwerty@gmail.com |
|         2 | Helen Rd      |  43724378 | Boys hostel  |      100300 | ASD@gmail.com    |
+-----------+---------------+-----------+--------------+-------------+------------------+
2 rows in set (0.05 sec)

MariaDB [csd2204s18]> select * from student;
Empty set (0.02 sec)

MariaDB [csd2204s18]> desc student;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| student_id   | int(4)      | NO   | PRI | NULL    |       |
| name         | varchar(25) | NO   |     | NULL    |       |
| email        | varchar(25) | YES  |     | NULL    |       |
| phone_num    | int(15)     | YES  |     | NULL    |       |
| course_id    | int(4)      | YES  | MUL | NULL    |       |
| fee          | varchar(10) | YES  |     | NULL    |       |
| father_name  | varchar(20) | YES  |     | NULL    |       |
| home_address | varchar(60) | YES  |     | NULL    |       |
| DOB          | date        | YES  |     | NULL    |       |
| passport_num | varchar(10) | YES  |     | NULL    |       |
| SIN_num      | int(10)     | YES  |     | NULL    |       |
| nationality  | varchar(12) | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
12 rows in set (0.00 sec)

MariaDB [csd2204s18]> insert into student values('1','raman','raman@gmail.com','64754564','101','7500','jagjinder singh','5 banting crescent','1992-01-29','897654564','64654','indian');
ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`csd2204s18`.`student`, CONSTRAINT `student_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`))
MariaDB [csd2204s18]> select * from coourse;
ERROR 1146 (42S02): Table 'csd2204s18.coourse' doesn't exist
MariaDB [csd2204s18]> select * from course;
Empty set (0.00 sec)

MariaDB [csd2204s18]> insert into student values('1','raman','raman@gmail.com','64754564','7500','jagjinder singh','5 banting crescent','1992-01-29','897654564','64654','indian');
ERROR 1136 (21S01): Column count doesn't match value count at row 1
MariaDB [csd2204s18]> insert into student values('1','raman','raman@gmail.com','64754564','','7500','jagjinder singh','5 banting crescent','1992-01-29','897654564','64654','indian');
ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`csd2204s18`.`student`, CONSTRAINT `student_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`))
MariaDB [csd2204s18]> desc course;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| course_id   | int(4)      | NO   | PRI | NULL    |       |
| course_name | varchar(20) | NO   |     | NULL    |       |
| duration    | int(3)      | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> alter table course MODIFY duration varchar(10);
Query OK, 0 rows affected (0.53 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> insert into course values('101','madt','14 months');
Query OK, 1 row affected (0.07 sec)

MariaDB [csd2204s18]> insert into course values('102','cpct','15 months');
Query OK, 1 row affected (0.07 sec)

MariaDB [csd2204s18]> insert into course values('103','pm','10 months');
Query OK, 1 row affected (0.04 sec)

MariaDB [csd2204s18]> insert into course values('104','qemt','16 months');
Query OK, 1 row affected (0.07 sec)

MariaDB [csd2204s18]> insert into course values('105','bm','14 months');
Query OK, 1 row affected (0.07 sec)

MariaDB [csd2204s18]> insert into course values('106','scmt','15 months');
Query OK, 1 row affected (0.14 sec)

MariaDB [csd2204s18]> insert into course values('107','embedded','16 months');
Query OK, 1 row affected (0.07 sec)

MariaDB [csd2204s18]> insert into course values('108','wdd','14 months');
Query OK, 1 row affected (0.04 sec)

MariaDB [csd2204s18]> insert into course values('109','hm','15 months');
Query OK, 1 row affected (0.07 sec)

MariaDB [csd2204s18]> insert into course values('110','android','13 months');
Query OK, 1 row affected (0.07 sec)

MariaDB [csd2204s18]> select * from course;
+-----------+-------------+-----------+
| course_id | course_name | duration  |
+-----------+-------------+-----------+
|       101 | madt        | 14 months |
|       102 | cpct        | 15 months |
|       103 | pm          | 10 months |
|       104 | qemt        | 16 months |
|       105 | bm          | 14 months |
|       106 | scmt        | 15 months |
|       107 | embedded    | 16 months |
|       108 | wdd         | 14 months |
|       109 | hm          | 15 months |
|       110 | android     | 13 months |
+-----------+-------------+-----------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> insert into student values('1','raman','raman@gmail.com','64754564','101','7500','jagjinder singh','5 banting crescent','1992-01-29','897654564','64654','indian');
Query OK, 1 row affected (0.07 sec)

MariaDB [csd2204s18]> insert into student values('2','aman','aman@gmail.com','98754564','102','7800','jinder singh','15 banting crescent','1992-10-21','8931354564','645654','indian');
Query OK, 1 row affected (0.07 sec)

MariaDB [csd2204s18]> insert into student values('3','maan','maan@gmail.com','78754564','103','6500','deep singh','15 queen st','1990-10-21','81354564','4645654','canada');
Query OK, 1 row affected (0.06 sec)

MariaDB [csd2204s18]> select * from student;
+------------+-------+-----------------+-----------+-----------+------+-----------------+---------------------+------------+--------------+---------+-------------+
| student_id | name  | email           | phone_num | course_id | fee  | father_name     | home_address        | DOB        | passport_num | SIN_num | nationality |
+------------+-------+-----------------+-----------+-----------+------+-----------------+---------------------+------------+--------------+---------+-------------+
|          1 | raman | raman@gmail.com |  64754564 |       101 | 7500 | jagjinder singh | 5 banting crescent  | 1992-01-29 | 897654564    |   64654 | indian      |
|          2 | aman  | aman@gmail.com  |  98754564 |       102 | 7800 | jinder singh    | 15 banting crescent | 1992-10-21 | 8931354564   |  645654 | indian      |
|          3 | maan  | maan@gmail.com  |  78754564 |       103 | 6500 | deep singh      | 15 queen st         | 1990-10-21 | 81354564     | 4645654 | canada      |
+------------+-------+-----------------+-----------+-----------+------+-----------------+---------------------+------------+--------------+---------+-------------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> insert into student values('4','gugu','gugugill@gmail.com','548754564','104','6200','preet singh','30 queen st','1980-11-22','6654564','5545654','canada');
Query OK, 1 row affected (0.06 sec)

MariaDB [csd2204s18]> insert into student values('5','tom','tom@yahoo.com','895623147','105','5600','peter','17 king street','1995-06-01','456789','3679514','USA');
Query OK, 1 row affected (0.07 sec)

MariaDB [csd2204s18]> insert into student values('6','sagar','sagar@gmail.com','32435354','106','3200','yoginder','20 kingknoll','1992-08-12','3546546','354354554','USA');
Query OK, 1 row affected (0.07 sec)

MariaDB [csd2204s18]> insert into student values('7','harman','harman@yahoo.com','32435644','107','3500','jaswinder','21 victoria','1990-08-12','5546546','354334554','USA');
Query OK, 1 row affected (0.07 sec)

MariaDB [csd2204s18]> insert into student values('8\','anjali','anjali@yahoo.com','38735644','107','3700','winder','21 king queen','1990-11-12','7846546','9534554','italy');
    '> ;
    '> \
    '> ;
    '> /;
    '> \;
    '> `;
    '> ;
    '> kill
    '> ;
    '> kill;
    '> MariaDB [csd2204s18]> insert into student values('8','anjali','anjali@yahoo.com','38735644','107','3700','winder','21 king queen','1990-11-12','7846546','9534554','italy');
Query OK, 1 row affected (0.07 sec)

MariaDB [csd2204s18]> insert into student values('9','himesh','himesh@ymail.com','38738944','103','6500','inder',' king queen','1993-1-12','784546','954554','italy\);
    '> ;
    '> /;
    '> \;
    '> \';
    '> kill;
    '> exit
    '> ;
    '> exit;
    '> ;
    '> tee C:/Users/736242/Downloads/Project_Sagar_Raman_Janis_Log.sql;
    '> MariaDB [(none)]> use csd2204s18;
Database changed
MariaDB [csd2204s18]> insert into student values('9','himesh','himesh@ymail.com','38738944','103','6500','inder',' king queen','1993-1-12','784546','954554','italy');
Query OK, 1 row affected (0.05 sec)

MariaDB [csd2204s18]> insert into student values('10','dilpreet','dilpreet@gmail.com','3878738944','110','6700','inder',' 16 basserian','1990-04-08','7884546','994554','spain');
Query OK, 1 row affected, 1 warning (0.05 sec)

MariaDB [csd2204s18]> select * from student;
+------------+----------+--------------------+------------+-----------+------+-----------------+---------------------+------------+--------------+-----------+-------------+
| student_id | name     | email              | phone_num  | course_id | fee  | father_name     | home_address        | DOB        | passport_num | SIN_num   | nationality |
+------------+----------+--------------------+------------+-----------+------+-----------------+---------------------+------------+--------------+-----------+-------------+
|          1 | raman    | raman@gmail.com    |   64754564 |       101 | 7500 | jagjinder singh | 5 banting crescent  | 1992-01-29 | 897654564    |     64654 | indian      |
|          2 | aman     | aman@gmail.com     |   98754564 |       102 | 7800 | jinder singh    | 15 banting crescent | 1992-10-21 | 8931354564   |    645654 | indian      |
|          3 | maan     | maan@gmail.com     |   78754564 |       103 | 6500 | deep singh      | 15 queen st         | 1990-10-21 | 81354564     |   4645654 | canada      |
|          4 | gugu     | gugugill@gmail.com |  548754564 |       104 | 6200 | preet singh     | 30 queen st         | 1980-11-22 | 6654564      |   5545654 | canada      |
|          5 | tom      | tom@yahoo.com      |  895623147 |       105 | 5600 | peter           | 17 king street      | 1995-06-01 | 456789       |   3679514 | USA         |
|          6 | sagar    | sagar@gmail.com    |   32435354 |       106 | 3200 | yoginder        | 20 kingknoll        | 1992-08-12 | 3546546      | 354354554 | USA         |
|          7 | harman   | harman@yahoo.com   |   32435644 |       107 | 3500 | jaswinder       | 21 victoria         | 1990-08-12 | 5546546      | 354334554 | USA         |
|          8 | anjali   | anjali@yahoo.com   |   38735644 |       107 | 3700 | winder          | 21 king queen       | 1990-11-12 | 7846546      |   9534554 | italy       |
|          9 | himesh   | himesh@ymail.com   |   38738944 |       103 | 6500 | inder           |  king queen         | 1993-01-12 | 784546       |    954554 | italy       |
|         10 | dilpreet | dilpreet@gmail.com | 2147483647 |       110 | 6700 | inder           |  16 basserian       | 1990-04-08 | 7884546      |    994554 | spain       |
+------------+----------+--------------------+------------+-----------+------+-----------------+---------------------+------------+--------------+-----------+-------------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> desc staff;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| staff_id    | int(4)      | NO   | PRI | NULL    |       |
| staff_name  | varchar(20) | YES  |     | NULL    |       |
| phone_num   | int(15)     | YES  |     | NULL    |       |
| email       | varchar(25) | YES  |     | NULL    |       |
| nationality | varchar(12) | YES  |     | NULL    |       |
| SIN_num     | int(10)     | YES  |     | NULL    |       |
| gender      | varchar(10) | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> insert into staff values('11','paramjeet','4372437896','param@hotmail.com','indian','89321746','female');
Query OK, 1 row affected, 1 warning (0.12 sec)

MariaDB [csd2204s18]> insert into staff values('12','ram','43724378745','ram@hotmail.com','indian','89321789','female');
Query OK, 1 row affected, 1 warning (0.07 sec)

MariaDB [csd2204s18]> insert into staff values('13','tom','43724379845','tom@hotmail.com','australian','89781789','male');
Query OK, 1 row affected, 1 warning (0.07 sec)

MariaDB [csd2204s18]> insert into staff values('14','peter','43725779845','peter@gmail.com','american','89781725','male');
Query OK, 1 row affected, 1 warning (0.06 sec)

MariaDB [csd2204s18]> insert into staff values('15','ashley','43725779289','ashley@gmail.com','american','89781764','female');
Query OK, 1 row affected, 1 warning (0.06 sec)

MariaDB [csd2204s18]> select * from staff;
+----------+------------+------------+-------------------+-------------+----------+--------+
| staff_id | staff_name | phone_num  | email             | nationality | SIN_num  | gender |
+----------+------------+------------+-------------------+-------------+----------+--------+
|       11 | paramjeet  | 2147483647 | param@hotmail.com | indian      | 89321746 | female |
|       12 | ram        | 2147483647 | ram@hotmail.com   | indian      | 89321789 | female |
|       13 | tom        | 2147483647 | tom@hotmail.com   | australian  | 89781789 | male   |
|       14 | peter      | 2147483647 | peter@gmail.com   | american    | 89781725 | male   |
|       15 | ashley     | 2147483647 | ashley@gmail.com  | american    | 89781764 | female |
+----------+------------+------------+-------------------+-------------+----------+--------+
5 rows in set (0.00 sec)

MariaDB [csd2204s18]> 