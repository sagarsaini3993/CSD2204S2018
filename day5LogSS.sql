MariaDB [csd2204s18]> select * from customer;
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| c10    | jack sp         | sparrow  | new jersey | 102301     |   35 |
| co1    | ashley          | ash      | wdc        | 321200     |   34 |
| co2    | bob marley      | bm       | toronto    | 100100     |   23 |
| co3    | charlies theron | cher     | newyork    | 120134     |   20 |
| co4    | deneil jack     | dj       | brazil     | 341020     |   25 |
| co5    | donna newman    | new      | toronto    | 130120     |   50 |
| co6    | eston m.        | m.       | toronto    | 201023     |   65 |
| co7    | bobby chacko    | chak     | newyork    | 320300     |   70 |
| co8    | ashko charles   | ak       | usa        | 421044     |   72 |
| co9    | tony special    | specie   | gta        | 418921     |   62 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> Create table persons(
    -> ID integer(3),
    -> LastName varchar(255) NOT NULL,
    -> FirstName varchar(255) NOT NULL,
    -> Age integer(3),
    -> CONSTRAINT PK_Person PRIMARY KEY(ID,LastName)
    -> );
Query OK, 0 rows affected (0.33 sec)

MariaDB [csd2204s18]> select * from person;
ERROR 1146 (42S02): Table 'csd2204s18.person' doesn't exist
MariaDB [csd2204s18]> select * from persons;
Empty set (0.00 sec)

MariaDB [csd2204s18]> desc persons;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| ID        | int(3)       | NO   | PRI | NULL    |       |
| LastName  | varchar(255) | NO   | PRI | NULL    |       |
| FirstName | varchar(255) | NO   |     | NULL    |       |
| Age       | int(3)       | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
4 rows in set (0.03 sec)

MariaDB [csd2204s18]> show index from persons;
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| Table   | Non_unique | Key_name | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment |
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| persons |          0 | PRIMARY  |            1 | ID          | A         |           0 |     NULL | NULL   |      | BTREE      |         |               |
| persons |          0 | PRIMARY  |            2 | LastName    | A         |           0 |     NULL | NULL   |      | BTREE      |         |               |
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> create table orders(
    -> OrderId integer(3) NOT NULL,
    -> OrderNumber integer(3) NOT NULL,
    -> PersonId integer(3),
    -> PRIMARY KEY(OrderId),
    -> CONSTRAINT FK_PersonOrder FOREIGN KEY(PersonId)
    -> REFERENCES Persons(PersonId)
    -> );
ERROR 1005 (HY000): Can't create table `csd2204s18`.`orders` (errno: 150 "Foreign key constraint is incorrectly formed")
MariaDB [csd2204s18]> create table orders(
    -> OrderId integer(3) NOT NULL,
    -> OrderNumber integer(3) NOT NULL,
    -> PersonId integer(3),
    -> PRIMARY KEY(OrderId),
    -> CONSTRAINT FK_PersonOrder FOREIGN KEY(PersonId)
    -> REFERENCES Persons(ID)
    -> );
Query OK, 0 rows affected (0.23 sec)

MariaDB [csd2204s18]> show create table orders;
+--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Table  | Create Table                                                                                                                                                                                                                                                                                                      |
+--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| orders | CREATE TABLE `orders` (
  `OrderId` int(3) NOT NULL,
  `OrderNumber` int(3) NOT NULL,
  `PersonId` int(3) DEFAULT NULL,
  PRIMARY KEY (`OrderId`),
  KEY `FK_PersonOrder` (`PersonId`),
  CONSTRAINT `FK_PersonOrder` FOREIGN KEY (`PersonId`) REFERENCES `persons` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 |
+--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> show index from orders;
+--------+------------+----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| Table  | Non_unique | Key_name       | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment |
+--------+------------+----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| orders |          0 | PRIMARY        |            1 | OrderId     | A         |           0 |     NULL | NULL   |      | BTREE      |         |               |
| orders |          1 | FK_PersonOrder |            1 | PersonId    | A         |           0 |     NULL | NULL   | YES  | BTREE      |         |               |
+--------+------------+----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> desc customer;
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

MariaDB [csd2204s18]> create table c1 as select * from customer;
Query OK, 10 rows affected (0.39 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> create table c2 as select name,postalCode from customer where city = 'Toronto';
Query OK, 3 rows affected (0.25 sec)
Records: 3  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> desc c2;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| name       | varchar(50) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from c1;
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| c10    | jack sp         | sparrow  | new jersey | 102301     |   35 |
| co1    | ashley          | ash      | wdc        | 321200     |   34 |
| co2    | bob marley      | bm       | toronto    | 100100     |   23 |
| co3    | charlies theron | cher     | newyork    | 120134     |   20 |
| co4    | deneil jack     | dj       | brazil     | 341020     |   25 |
| co5    | donna newman    | new      | toronto    | 130120     |   50 |
| co6    | eston m.        | m.       | toronto    | 201023     |   65 |
| co7    | bobby chacko    | chak     | newyork    | 320300     |   70 |
| co8    | ashko charles   | ak       | usa        | 421044     |   72 |
| co9    | tony special    | specie   | gta        | 418921     |   62 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> show tables;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| c1                   |
| c2                   |
| customer             |
| orders               |
| persons              |
+----------------------+
5 rows in set (0.00 sec)

MariaDB [csd2204s18]> create table c3 LIKE Customer;
Query OK, 0 rows affected (0.25 sec)

MariaDB [csd2204s18]> desc c3;
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

MariaDB [csd2204s18]> select * from c3;
Empty set (0.00 sec)

MariaDB [csd2204s18]> insert into c3 select * from customer;
Query OK, 10 rows affected (0.03 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> select * from c3;
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| c10    | jack sp         | sparrow  | new jersey | 102301     |   35 |
| co1    | ashley          | ash      | wdc        | 321200     |   34 |
| co2    | bob marley      | bm       | toronto    | 100100     |   23 |
| co3    | charlies theron | cher     | newyork    | 120134     |   20 |
| co4    | deneil jack     | dj       | brazil     | 341020     |   25 |
| co5    | donna newman    | new      | toronto    | 130120     |   50 |
| co6    | eston m.        | m.       | toronto    | 201023     |   65 |
| co7    | bobby chacko    | chak     | newyork    | 320300     |   70 |
| co8    | ashko charles   | ak       | usa        | 421044     |   72 |
| co9    | tony special    | specie   | gta        | 418921     |   62 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> alter c3;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'c3' at line 1
MariaDB [csd2204s18]> alter table c3 ADD COLUMN country varchar(100);
Query OK, 0 rows affected (0.38 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> select * from c3;
+--------+-----------------+----------+------------+------------+------+---------+
| custId | name            | nickname | city       | postalCode | age  | country |
+--------+-----------------+----------+------------+------------+------+---------+
| c10    | jack sp         | sparrow  | new jersey | 102301     |   35 | NULL    |
| co1    | ashley          | ash      | wdc        | 321200     |   34 | NULL    |
| co2    | bob marley      | bm       | toronto    | 100100     |   23 | NULL    |
| co3    | charlies theron | cher     | newyork    | 120134     |   20 | NULL    |
| co4    | deneil jack     | dj       | brazil     | 341020     |   25 | NULL    |
| co5    | donna newman    | new      | toronto    | 130120     |   50 | NULL    |
| co6    | eston m.        | m.       | toronto    | 201023     |   65 | NULL    |
| co7    | bobby chacko    | chak     | newyork    | 320300     |   70 | NULL    |
| co8    | ashko charles   | ak       | usa        | 421044     |   72 | NULL    |
| co9    | tony special    | specie   | gta        | 418921     |   62 | NULL    |
+--------+-----------------+----------+------------+------------+------+---------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> alter table c3 MODIFY COLUMN Country varchar(40);
Query OK, 10 rows affected (0.56 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> desc c3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custId     | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| Country    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> alter table c3 CHANGE COLUMN Country country VARCHAR(40); 
Query OK, 0 rows affected (0.00 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> desc c3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custId     | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| country    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> alter table c3 CHANGE COLUMN custId customerId varchar(100);
Query OK, 10 rows affected (0.45 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> alter table c3 CHANGE COLUMN custId customerId varchar(5);
ERROR 1054 (42S22): Unknown column 'custId' in 'c3'
MariaDB [csd2204s18]> desc c1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custId     | varchar(5)  | NO   |     | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.02 sec)

MariaDB [csd2204s18]> alter table c1 add PRIMARY KEY(custId;)
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1
    -> alter table c1 add PRIMARY KEY(custId);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ')
alter table c1 add PRIMARY KEY(custId)' at line 1
MariaDB [csd2204s18]> alter table c1 add PRIMARY KEY(custId);
Query OK, 0 rows affected (2.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> desc c1;
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

MariaDB [csd2204s18]> alter table c2 DROP primary key;
ERROR 1091 (42000): Can't DROP 'PRIMARY'; check that column/key exists
MariaDB [csd2204s18]> desc c2;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| name       | varchar(50) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> alter table c2 add primary key(name);
Query OK, 3 rows affected (0.44 sec)
Records: 3  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> desc c2;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| name       | varchar(50) | NO   | PRI | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> alter table c2 drop primary key;
Query OK, 3 rows affected (0.55 sec)
Records: 3  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> desc c2;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| name       | varchar(50) | NO   |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> update c3 SET country = 'USA';
Query OK, 10 rows affected (0.06 sec)
Rows matched: 10  Changed: 10  Warnings: 0

MariaDB [csd2204s18]> select * from c3;
+------------+-----------------+----------+------------+------------+------+---------+
| customerId | name            | nickname | city       | postalCode | age  | country |
+------------+-----------------+----------+------------+------------+------+---------+
| c10        | jack sp         | sparrow  | new jersey | 102301     |   35 | USA     |
| co1        | ashley          | ash      | wdc        | 321200     |   34 | USA     |
| co2        | bob marley      | bm       | toronto    | 100100     |   23 | USA     |
| co3        | charlies theron | cher     | newyork    | 120134     |   20 | USA     |
| co4        | deneil jack     | dj       | brazil     | 341020     |   25 | USA     |
| co5        | donna newman    | new      | toronto    | 130120     |   50 | USA     |
| co6        | eston m.        | m.       | toronto    | 201023     |   65 | USA     |
| co7        | bobby chacko    | chak     | newyork    | 320300     |   70 | USA     |
| co8        | ashko charles   | ak       | usa        | 421044     |   72 | USA     |
| co9        | tony special    | specie   | gta        | 418921     |   62 | USA     |
+------------+-----------------+----------+------------+------------+------+---------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> update c3 Set country = 'Canada' WHERE city IN('Toronto', 'GTA');
Query OK, 4 rows affected (0.06 sec)
Rows matched: 4  Changed: 4  Warnings: 0

MariaDB [csd2204s18]> select * from c3;
+------------+-----------------+----------+------------+------------+------+---------+
| customerId | name            | nickname | city       | postalCode | age  | country |
+------------+-----------------+----------+------------+------------+------+---------+
| c10        | jack sp         | sparrow  | new jersey | 102301     |   35 | USA     |
| co1        | ashley          | ash      | wdc        | 321200     |   34 | USA     |
| co2        | bob marley      | bm       | toronto    | 100100     |   23 | Canada  |
| co3        | charlies theron | cher     | newyork    | 120134     |   20 | USA     |
| co4        | deneil jack     | dj       | brazil     | 341020     |   25 | USA     |
| co5        | donna newman    | new      | toronto    | 130120     |   50 | Canada  |
| co6        | eston m.        | m.       | toronto    | 201023     |   65 | Canada  |
| co7        | bobby chacko    | chak     | newyork    | 320300     |   70 | USA     |
| co8        | ashko charles   | ak       | usa        | 421044     |   72 | USA     |
| co9        | tony special    | specie   | gta        | 418921     |   62 | Canada  |
+------------+-----------------+----------+------------+------------+------+---------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> update c3 SET country = 'South america' WHERE city = 'brazil'; 
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> select * from c3;
+------------+-----------------+----------+------------+------------+------+---------------+
| customerId | name            | nickname | city       | postalCode | age  | country       |
+------------+-----------------+----------+------------+------------+------+---------------+
| c10        | jack sp         | sparrow  | new jersey | 102301     |   35 | USA           |
| co1        | ashley          | ash      | wdc        | 321200     |   34 | USA           |
| co2        | bob marley      | bm       | toronto    | 100100     |   23 | Canada        |
| co3        | charlies theron | cher     | newyork    | 120134     |   20 | USA           |
| co4        | deneil jack     | dj       | brazil     | 341020     |   25 | South america |
| co5        | donna newman    | new      | toronto    | 130120     |   50 | Canada        |
| co6        | eston m.        | m.       | toronto    | 201023     |   65 | Canada        |
| co7        | bobby chacko    | chak     | newyork    | 320300     |   70 | USA           |
| co8        | ashko charles   | ak       | usa        | 421044     |   72 | USA           |
| co9        | tony special    | specie   | gta        | 418921     |   62 | Canada        |
+------------+-----------------+----------+------------+------------+------+---------------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from  c2;
+--------------+------------+
| name         | postalCode |
+--------------+------------+
| bob marley   | 100100     |
| donna newman | 130120     |
| eston m.     | 201023     |
+--------------+------------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> delete from c2 WHERE name = 'bob marley';
Query OK, 1 row affected (0.05 sec)

MariaDB [csd2204s18]> select * from  c2;
+--------------+------------+
| name         | postalCode |
+--------------+------------+
| donna newman | 130120     |
| eston m.     | 201023     |
+--------------+------------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from  c2;
+--------------+------------+
| name         | postalCode |
+--------------+------------+
| donna newman | 130120     |
| eston m.     | 201023     |
+--------------+------------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> drop c2;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'c2' at line 1
MariaDB [csd2204s18]> drop table c2;
Query OK, 0 rows affected (0.14 sec)

MariaDB [csd2204s18]> show tables;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| c1                   |
| c3                   |
| customer             |
| orders               |
| persons              |
+----------------------+
5 rows in set (0.00 sec)

MariaDB [csd2204s18]> show tables asc;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'asc' at line 1
MariaDB [csd2204s18]> select * from c1;
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| c10    | jack sp         | sparrow  | new jersey | 102301     |   35 |
| co1    | ashley          | ash      | wdc        | 321200     |   34 |
| co2    | bob marley      | bm       | toronto    | 100100     |   23 |
| co3    | charlies theron | cher     | newyork    | 120134     |   20 |
| co4    | deneil jack     | dj       | brazil     | 341020     |   25 |
| co5    | donna newman    | new      | toronto    | 130120     |   50 |
| co6    | eston m.        | m.       | toronto    | 201023     |   65 |
| co7    | bobby chacko    | chak     | newyork    | 320300     |   70 |
| co8    | ashko charles   | ak       | usa        | 421044     |   72 |
| co9    | tony special    | specie   | gta        | 418921     |   62 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from c1 where custId IS NOT NULL;
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| c10    | jack sp         | sparrow  | new jersey | 102301     |   35 |
| co1    | ashley          | ash      | wdc        | 321200     |   34 |
| co2    | bob marley      | bm       | toronto    | 100100     |   23 |
| co3    | charlies theron | cher     | newyork    | 120134     |   20 |
| co4    | deneil jack     | dj       | brazil     | 341020     |   25 |
| co5    | donna newman    | new      | toronto    | 130120     |   50 |
| co6    | eston m.        | m.       | toronto    | 201023     |   65 |
| co7    | bobby chacko    | chak     | newyork    | 320300     |   70 |
| co8    | ashko charles   | ak       | usa        | 421044     |   72 |
| co9    | tony special    | specie   | gta        | 418921     |   62 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from c1 where custId IS NULL;
Empty set (0.00 sec)

MariaDB [csd2204s18]> tee C:/users/736242/downloads/practiceLogSS.sql
