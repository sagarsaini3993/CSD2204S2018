MariaDB [csd2204s18]> create table Dept(
    -> dno integer(3),
    -> name varchar(15),
    -> loc varchar(20));
Query OK, 0 rows affected (0.25 sec)

MariaDB [csd2204s18]> show tables;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| c1                   |
| c3                   |
| customer             |
| dept                 |
| orders               |
| persons              |
+----------------------+
6 rows in set (0.00 sec)

MariaDB [csd2204s18]> create table Emp(
    -> empno integer(5),
    -> name varchar(50),
    -> jdate date,
    -> dept integer(3),
    -> desig varchar(20),
    -> basic integer(10,2),
    -> da integer(10,2),
    -> hra integer(10,2),
    -> pf integer(10,2),
    -> it integer(10,2));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '2),
da integer(10,2),
hra integer(10,2),
pf integer(10,2),
it integer(10,2))' at line 7
MariaDB [csd2204s18]> create table Emp(
    -> empno integer(5),
    -> name varchar(50),
    -> jdate date,
    -> dept integer(3),
    -> desig varchar(20),
    -> basic float(10,2),
    -> da float(10,2),
    -> hra float(10,2),
    -> pf float(10,2),
    -> it float(10,2));
Query OK, 0 rows affected (0.22 sec)

MariaDB [csd2204s18]> select * from Emp;
Empty set (0.00 sec)

MariaDB [csd2204s18]> desc Emp;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| empno | int(5)      | YES  |     | NULL    |       |
| name  | varchar(50) | YES  |     | NULL    |       |
| jdate | date        | YES  |     | NULL    |       |
| dept  | int(3)      | YES  |     | NULL    |       |
| desig | varchar(20) | YES  |     | NULL    |       |
| basic | float(10,2) | YES  |     | NULL    |       |
| da    | float(10,2) | YES  |     | NULL    |       |
| hra   | float(10,2) | YES  |     | NULL    |       |
| pf    | float(10,2) | YES  |     | NULL    |       |
| it    | float(10,2) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> create table AC_MAST(
    -> ac_type varchar(3);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 2
MariaDB [csd2204s18]> create table AC_MAST(
    -> ac_type varchar(3),
    -> ac_no integer(4),
    -> cust_no integer(5),
    -> bal float(10,2),
    -> od_limit float(10,2));
Query OK, 0 rows affected (0.25 sec)

MariaDB [csd2204s18]> create table CUST_MAST(
    -> cust_no integer(5),
    -> name varchar(50),
    -> addr1 varchar(50),
    -> addr2 varchar(50),
    -> addr3 varchar(50),
    -> city varchar(50),
    -> state varchar(20));
Query OK, 0 rows affected (0.50 sec)

MariaDB [csd2204s18]> create table TRANS(
    -> ac_type varchar(3),
    -> ac_no integer(4) primary key,
    -> tdate date primary key,
    -> counter integer(2),
    -> amount float(10,2),
    -> desc varchar(30));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'desc varchar(30))' at line 7
MariaDB [csd2204s18]> 