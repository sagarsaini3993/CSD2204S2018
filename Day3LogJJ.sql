MariaDB [(none)]> create database CSD2204S18;
Query OK, 1 row affected (0.00 sec)

MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| csd2204s18         |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| test               |
+--------------------+
6 rows in set (0.00 sec)

MariaDB [(none)]> create table Customer(
    -> custId varchar(5),
    -> name varchar(50),
    -> nickname varchar(10),
    -> city varchar(20),
    -> postalCode varchar(10),
    -> age integer(3));
ERROR 1046 (3D000): No database selected
MariaDB [(none)]> use CSD2204S18;
Database changed
MariaDB [CSD2204S18]> create table Customer(
    -> custId varchar(5) primary key,
    -> name varchar(50),
    -> nickname varchar(10),
    -> city varchar(20),
    -> postalCode varchar(10),
    -> age integer(3));
Query OK, 0 rows affected (0.23 sec)

MariaDB [CSD2204S18]> show tables;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| customer             |
+----------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> select age from customer;
Empty set (0.00 sec)

MariaDB [CSD2204S18]> show table customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'customer' at line 1
MariaDB [CSD2204S18]> show tables;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| customer             |
+----------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> select age, name from customer;
Empty set (0.00 sec)

MariaDB [CSD2204S18]> insert into customer(
    -> 1
    -> sagar
    -> ss
    -> toronto
    -> m2j1m6
    -> 25
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '1
sagar
ss
toronto
m2j1m6
25
)' at line 2
MariaDB [CSD2204S18]> desc customer;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custId     | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> insert into customer values(1, sagar, ss, toronto, M2J1M6, 25);
ERROR 1054 (42S22): Unknown column 'sagar' in 'field list'
MariaDB [CSD2204S18]> exit
