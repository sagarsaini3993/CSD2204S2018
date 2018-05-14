MariaDB [csd2204s18]> select * from customer ORDER BY name DESC, city ASC;
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| co9    | tony special    | specie   | gta        | 418921     |   62 |
| c10    | jack sp         | sparrow  | new jersey | 102301     |   35 |
| co6    | eston m.        | m.       | toronto    | 201023     |   65 |
| co5    | donna newman    | new      | toronto    | 130120     |   50 |
| co4    | deneil jack     | dj       | brazil     | 341020     |   25 |
| co3    | charlies theron | cher     | newyork    | 120134     |   20 |
| co7    | bobby chacko    | chak     | newyork    | 320300     |   70 |
| co2    | bob marley      | bm       | toronto    | 100100     |   23 |
| co1    | ashley          | ash      | wdc        | 321200     |   34 |
| co8    | ashko charles   | ak       | usa        | 421044     |   72 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.02 sec)

MariaDB [csd2204s18]> alter table customer set custID = 'c09' where name = 'tony special';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'set custID = 'c09' where name = 'tony special'' at line 1
MariaDB [csd2204s18]> select * from customer order by custId desc limit 3;
+--------+---------------+----------+---------+------------+------+
| custId | name          | nickname | city    | postalCode | age  |
+--------+---------------+----------+---------+------------+------+
| co9    | tony special  | specie   | gta     | 418921     |   62 |
| co8    | ashko charles | ak       | usa     | 421044     |   72 |
| co7    | bobby chacko  | chak     | newyork | 320300     |   70 |
+--------+---------------+----------+---------+------------+------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> update customer set custId = 'c09' where name = 'tony special';
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> update customer set custId = 'c08' where name = 'ashko charles';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> update customer set custId = 'c07' where name = 'bobby chacko';
Query OK, 1 row affected (0.09 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> update customer set custId = 'c06' where name = 'eston m.';
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> update customer set custId = 'c05' where name = 'donna newman';
Query OK, 1 row affected (0.08 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> update customer set custId = 'c04' where name = 'Denial Jack';
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0

MariaDB [csd2204s18]> update customer set custId = 'c03' where name = 'Charlies Theron';
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> update customer set custId = 'c02' where name = 'Bob marley';
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> update customer set custId = 'c01' where name = 'ashley';
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> select * from customer;
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| c01    | ashley          | ash      | wdc        | 321200     |   34 |
| c02    | bob marley      | bm       | toronto    | 100100     |   23 |
| c03    | charlies theron | cher     | newyork    | 120134     |   20 |
| c05    | donna newman    | new      | toronto    | 130120     |   50 |
| c06    | eston m.        | m.       | toronto    | 201023     |   65 |
| c07    | bobby chacko    | chak     | newyork    | 320300     |   70 |
| c08    | ashko charles   | ak       | usa        | 421044     |   72 |
| c09    | tony special    | specie   | gta        | 418921     |   62 |
| c10    | jack sp         | sparrow  | new jersey | 102301     |   35 |
| co4    | deneil jack     | dj       | brazil     | 341020     |   25 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> update customer set custId = 'c04' where name = 'deniel jack';
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0

MariaDB [csd2204s18]> update customer set custId = 'c04' where name = 'deneil jack';
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> update customer set name = 'Denial Jack' where nickname = 'dj';
Query OK, 1 row affected (0.08 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> select * from customer;
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| c01    | ashley          | ash      | wdc        | 321200     |   34 |
| c02    | bob marley      | bm       | toronto    | 100100     |   23 |
| c03    | charlies theron | cher     | newyork    | 120134     |   20 |
| c04    | Denial Jack     | dj       | brazil     | 341020     |   25 |
| c05    | donna newman    | new      | toronto    | 130120     |   50 |
| c06    | eston m.        | m.       | toronto    | 201023     |   65 |
| c07    | bobby chacko    | chak     | newyork    | 320300     |   70 |
| c08    | ashko charles   | ak       | usa        | 421044     |   72 |
| c09    | tony special    | specie   | gta        | 418921     |   62 |
| c10    | jack sp         | sparrow  | new jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer GROUP BY city;
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| c04    | Denial Jack     | dj       | brazil     | 341020     |   25 |
| c09    | tony special    | specie   | gta        | 418921     |   62 |
| c10    | jack sp         | sparrow  | new jersey | 102301     |   35 |
| c03    | charlies theron | cher     | newyork    | 120134     |   20 |
| c02    | bob marley      | bm       | toronto    | 100100     |   23 |
| c08    | ashko charles   | ak       | usa        | 421044     |   72 |
| c01    | ashley          | ash      | wdc        | 321200     |   34 |
+--------+-----------------+----------+------------+------------+------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> select city from customer group by city;
+------------+
| city       |
+------------+
| brazil     |
| gta        |
| new jersey |
| newyork    |
| toronto    |
| usa        |
| wdc        |
+------------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> select (Count)city "Unique cities" from customer group by city;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '"Unique cities" from customer group by city' at line 1
MariaDB [csd2204s18]> select Count(city) "Unique cities" from customer group by city;
+---------------+
| Unique cities |
+---------------+
|             1 |
|             1 |
|             1 |
|             2 |
|             3 |
|             1 |
|             1 |
+---------------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> select city,Count(city) "Unique cities" from customer group by city;
+------------+---------------+
| city       | Unique cities |
+------------+---------------+
| brazil     |             1 |
| gta        |             1 |
| new jersey |             1 |
| newyork    |             2 |
| toronto    |             3 |
| usa        |             1 |
| wdc        |             1 |
+------------+---------------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> select distinct cities as 'Unique cities' from customer;
ERROR 1054 (42S22): Unknown column 'cities' in 'field list'
MariaDB [csd2204s18]> select distinct(city) as 'Unique cities' from customer;
+---------------+
| Unique cities |
+---------------+
| wdc           |
| toronto       |
| newyork       |
| brazil        |
| usa           |
| gta           |
| new jersey    |
+---------------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> select city, count(city) "No. of customers" from customer group by city having city like 'New%';
+------------+------------------+
| city       | No. of customers |
+------------+------------------+
| new jersey |                1 |
| newyork    |                2 |
+------------+------------------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> select city, count(city) "No. of customers" from customer group by city having count(city) > 2;
+---------+------------------+
| city    | No. of customers |
+---------+------------------+
| toronto |                3 |
+---------+------------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where name REGEXP '^D';
+--------+--------------+----------+---------+------------+------+
| custId | name         | nickname | city    | postalCode | age  |
+--------+--------------+----------+---------+------------+------+
| c04    | Denial Jack  | dj       | brazil  | 341020     |   25 |
| c05    | donna newman | new      | toronto | 130120     |   50 |
+--------+--------------+----------+---------+------------+------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where name REGEXP 'n$';
+--------+-----------------+----------+---------+------------+------+
| custId | name            | nickname | city    | postalCode | age  |
+--------+-----------------+----------+---------+------------+------+
| c03    | charlies theron | cher     | newyork | 120134     |   20 |
| c05    | donna newman    | new      | toronto | 130120     |   50 |
+--------+-----------------+----------+---------+------------+------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where name REGEXP '^..a';
+--------+-----------------+----------+---------+------------+------+
| custId | name            | nickname | city    | postalCode | age  |
+--------+-----------------+----------+---------+------------+------+
| c03    | charlies theron | cher     | newyork | 120134     |   20 |
+--------+-----------------+----------+---------+------------+------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where postalCode REGEXP '^[A-Z]';
Empty set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where postalCode REGEXP '^A+';
Empty set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where nickname REGEXP '^A+';
+--------+---------------+----------+------+------------+------+
| custId | name          | nickname | city | postalCode | age  |
+--------+---------------+----------+------+------------+------+
| c01    | ashley        | ash      | wdc  | 321200     |   34 |
| c08    | ashko charles | ak       | usa  | 421044     |   72 |
+--------+---------------+----------+------+------------+------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where nickname REGEXP '^A*';
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| c01    | ashley          | ash      | wdc        | 321200     |   34 |
| c02    | bob marley      | bm       | toronto    | 100100     |   23 |
| c03    | charlies theron | cher     | newyork    | 120134     |   20 |
| c04    | Denial Jack     | dj       | brazil     | 341020     |   25 |
| c05    | donna newman    | new      | toronto    | 130120     |   50 |
| c06    | eston m.        | m.       | toronto    | 201023     |   65 |
| c07    | bobby chacko    | chak     | newyork    | 320300     |   70 |
| c08    | ashko charles   | ak       | usa        | 421044     |   72 |
| c09    | tony special    | specie   | gta        | 418921     |   62 |
| c10    | jack sp         | sparrow  | new jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where nickname REGEXP '^.{4}';
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| c03    | charlies theron | cher     | newyork    | 120134     |   20 |
| c07    | bobby chacko    | chak     | newyork    | 320300     |   70 |
| c09    | tony special    | specie   | gta        | 418921     |   62 |
| c10    | jack sp         | sparrow  | new jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where nickname REGEXP '^A{4}';
Empty set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where nickname REGEXP '^A{2}';
Empty set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where nickname REGEXP '^A{1}';
+--------+---------------+----------+------+------------+------+
| custId | name          | nickname | city | postalCode | age  |
+--------+---------------+----------+------+------------+------+
| c01    | ashley        | ash      | wdc  | 321200     |   34 |
| c08    | ashko charles | ak       | usa  | 421044     |   72 |
+--------+---------------+----------+------+------------+------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where nickname rLIKE '^.{4}';
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| c03    | charlies theron | cher     | newyork    | 120134     |   20 |
| c07    | bobby chacko    | chak     | newyork    | 320300     |   70 |
| c09    | tony special    | specie   | gta        | 418921     |   62 |
| c10    | jack sp         | sparrow  | new jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where city rLIKE '^.{4}';
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| c02    | bob marley      | bm       | toronto    | 100100     |   23 |
| c03    | charlies theron | cher     | newyork    | 120134     |   20 |
| c04    | Denial Jack     | dj       | brazil     | 341020     |   25 |
| c05    | donna newman    | new      | toronto    | 130120     |   50 |
| c06    | eston m.        | m.       | toronto    | 201023     |   65 |
| c07    | bobby chacko    | chak     | newyork    | 320300     |   70 |
| c10    | jack sp         | sparrow  | new jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> select CURDATE;
ERROR 1054 (42S22): Unknown column 'CURDATE' in 'field list'
MariaDB [csd2204s18]> select CURDATE();
+------------+
| CURDATE()  |
+------------+
| 2018-05-14 |
+------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select NOW();
+---------------------+
| NOW()               |
+---------------------+
| 2018-05-14 09:15:28 |
+---------------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> alter table customer ADD COLUMN dob DATE;
Query OK, 0 rows affected (0.34 sec)
Records: 0  Duplicates: 0  Warnings: 0

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
| dob        | date        | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> update customer set dob = '1991-01-10' WHERE custId = 'C01';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> select * from customer;
+--------+-----------------+----------+------------+------------+------+------------+
| custId | name            | nickname | city       | postalCode | age  | dob        |
+--------+-----------------+----------+------------+------------+------+------------+
| c01    | ashley          | ash      | wdc        | 321200     |   34 | 1991-01-10 |
| c02    | bob marley      | bm       | toronto    | 100100     |   23 | NULL       |
| c03    | charlies theron | cher     | newyork    | 120134     |   20 | NULL       |
| c04    | Denial Jack     | dj       | brazil     | 341020     |   25 | NULL       |
| c05    | donna newman    | new      | toronto    | 130120     |   50 | NULL       |
| c06    | eston m.        | m.       | toronto    | 201023     |   65 | NULL       |
| c07    | bobby chacko    | chak     | newyork    | 320300     |   70 | NULL       |
| c08    | ashko charles   | ak       | usa        | 421044     |   72 | NULL       |
| c09    | tony special    | specie   | gta        | 418921     |   62 | NULL       |
| c10    | jack sp         | sparrow  | new jersey | 102301     |   35 | NULL       |
+--------+-----------------+----------+------------+------------+------+------------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> update customer set dob = '1996-04-15' WHERE custId = 'C02';
Query OK, 1 row affected (0.13 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> update customer set dob = '1994-05-09' WHERE custId = 'C03';
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> update customer set dob = '1995-11-03' WHERE custId = 'C04';
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> update customer set dob = '1995-01-16' WHERE custId = 'C05';
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> update customer set dob = '1995-10-22' WHERE custId = 'C06';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> update customer set dob = '1992-11-07' WHERE custId = 'C07';
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> update customer set dob = '1996-05-07' WHERE custId = 'C08';
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> update customer set dob = '1985-08-28' WHERE custId = 'C09';
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> update customer set dob = '1995-07-17' WHERE custId = 'C10';
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> select name,dob,TIMESTAMPDIFF(YEAR,dob,CURDATE()) "age" FROM customer;
+-----------------+------------+------+
| name            | dob        | age  |
+-----------------+------------+------+
| ashley          | 1991-01-10 |   27 |
| bob marley      | 1996-04-15 |   22 |
| charlies theron | 1994-05-09 |   24 |
| Denial Jack     | 1995-11-03 |   22 |
| donna newman    | 1995-01-16 |   23 |
| eston m.        | 1995-10-22 |   22 |
| bobby chacko    | 1992-11-07 |   25 |
| ashko charles   | 1996-05-07 |   22 |
| tony special    | 1985-08-28 |   32 |
| jack sp         | 1995-07-17 |   22 |
+-----------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer;
+--------+-----------------+----------+------------+------------+------+------------+
| custId | name            | nickname | city       | postalCode | age  | dob        |
+--------+-----------------+----------+------------+------------+------+------------+
| c01    | ashley          | ash      | wdc        | 321200     |   34 | 1991-01-10 |
| c02    | bob marley      | bm       | toronto    | 100100     |   23 | 1996-04-15 |
| c03    | charlies theron | cher     | newyork    | 120134     |   20 | 1994-05-09 |
| c04    | Denial Jack     | dj       | brazil     | 341020     |   25 | 1995-11-03 |
| c05    | donna newman    | new      | toronto    | 130120     |   50 | 1995-01-16 |
| c06    | eston m.        | m.       | toronto    | 201023     |   65 | 1995-10-22 |
| c07    | bobby chacko    | chak     | newyork    | 320300     |   70 | 1992-11-07 |
| c08    | ashko charles   | ak       | usa        | 421044     |   72 | 1996-05-07 |
| c09    | tony special    | specie   | gta        | 418921     |   62 | 1985-08-28 |
| c10    | jack sp         | sparrow  | new jersey | 102301     |   35 | 1995-07-17 |
+--------+-----------------+----------+------------+------------+------+------------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> select name,dob,TIMESTAMPDIFF(DAY,dob,CURDATE()) "age" FROM customer;
+-----------------+------------+-------+
| name            | dob        | age   |
+-----------------+------------+-------+
| ashley          | 1991-01-10 |  9986 |
| bob marley      | 1996-04-15 |  8064 |
| charlies theron | 1994-05-09 |  8771 |
| Denial Jack     | 1995-11-03 |  8228 |
| donna newman    | 1995-01-16 |  8519 |
| eston m.        | 1995-10-22 |  8240 |
| bobby chacko    | 1992-11-07 |  9319 |
| ashko charles   | 1996-05-07 |  8042 |
| tony special    | 1985-08-28 | 11947 |
| jack sp         | 1995-07-17 |  8337 |
+-----------------+------------+-------+
10 rows in set (0.02 sec)

MariaDB [csd2204s18]> select name, dob, TIMESTAMPDIFF(YEAR,dob,CURDATE()) "age" FROM customer where age = '22';
Empty set (0.00 sec)

MariaDB [csd2204s18]> select name, dob, TIMESTAMPDIFF(YEAR,dob,CURDATE()) "age" FROM customer HAVING age = '22';
+---------------+------------+------+
| name          | dob        | age  |
+---------------+------------+------+
| bob marley    | 1996-04-15 |   22 |
| Denial Jack   | 1995-11-03 |   22 |
| eston m.      | 1995-10-22 |   22 |
| ashko charles | 1996-05-07 |   22 |
| jack sp       | 1995-07-17 |   22 |
+---------------+------------+------+
5 rows in set (0.00 sec)

