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
