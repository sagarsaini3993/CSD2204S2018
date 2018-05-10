MariaDB [(none)]> use csd2204s18;
Database changed
MariaDB [csd2204s18]> show table customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'customer' at line 1
MariaDB [csd2204s18]> show tables;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| customer             |
+----------------------+
1 row in set (0.03 sec)

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
6 rows in set (0.08 sec)

MariaDB [csd2204s18]> insert into customer values('C01','Ashley','MDC','321200','34');
ERROR 1136 (21S01): Column count doesn't match value count at row 1
MariaDB [csd2204s18]> inert into customer values('C01','Ashley','Ash','MDC','321200','34');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'inert into customer values('C01','Ashley','Ash','MDC','321200','34')' at line 1
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

MariaDB [csd2204s18]> insert into customer values('C01','Ashley','Ash','MDC','321200','34');
Query OK, 1 row affected (0.11 sec)

MariaDB [csd2204s18]> insert into customer values('C02','Bob Marley','Bm','Toronto','100100','23');
Query OK, 1 row affected (0.05 sec)

MariaDB [csd2204s18]> insert into customer values('C03','Charlies Theron','Cher','New York','120134','20');
Query OK, 1 row affected (0.03 sec)

MariaDB [csd2204s18]> insert into customer values('C04','Denial Jack','DJ','Brazil','341020','25');
Query OK, 1 row affected (0.05 sec)

MariaDB [csd2204s18]> insert into customer values('C05','Donna Newman','New','Toronto','130120','50');
Query OK, 1 row affected (0.02 sec)

MariaDB [csd2204s18]> insert into customer values('C06','Eston M','M','Toronto','201023','65');
Query OK, 1 row affected (0.03 sec)

MariaDB [csd2204s18]> insert into customer values('C07','Bobby Chacko','Chac','New York','320300','70');
Query OK, 1 row affected (0.01 sec)

MariaDB [csd2204s18]> insert into customer values('C08','Ashko Charles','AK','USA','421044','72');
Query OK, 1 row affected (0.05 sec)

MariaDB [csd2204s18]> insert into customer values('C09','Tony Special','Specia','GTA','418921','62');
Query OK, 1 row affected (0.03 sec)

MariaDB [csd2204s18]> insert into customer values('C10','JAck Sp','Sparrow','New Jersey','102301','35');
Query OK, 1 row affected (0.03 sec)

MariaDB [csd2204s18]> select * from customer;
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | Ashley          | Ash      | MDC        | 321200     |   34 |
| C02    | Bob Marley      | Bm       | Toronto    | 100100     |   23 |
| C03    | Charlies Theron | Cher     | New York   | 120134     |   20 |
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C05    | Donna Newman    | New      | Toronto    | 130120     |   50 |
| C06    | Eston M         | M        | Toronto    | 201023     |   65 |
| C07    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 |
| C09    | Tony Special    | Specia   | GTA        | 418921     |   62 |
| C10    | JAck Sp         | Sparrow  | New Jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.02 sec)

MariaDB [csd2204s18]> select name,nickname from customer;
+-----------------+----------+
| name            | nickname |
+-----------------+----------+
| Ashley          | Ash      |
| Bob Marley      | Bm       |
| Charlies Theron | Cher     |
| Denial Jack     | DJ       |
| Donna Newman    | New      |
| Eston M         | M        |
| Bobby Chacko    | Chac     |
| Ashko Charles   | AK       |
| Tony Special    | Specia   |
| JAck Sp         | Sparrow  |
+-----------------+----------+
10 rows in set (0.01 sec)

MariaDB [csd2204s18]> select city,postalCode from customer;
+------------+------------+
| city       | postalCode |
+------------+------------+
| MDC        | 321200     |
| Toronto    | 100100     |
| New York   | 120134     |
| Brazil     | 341020     |
| Toronto    | 130120     |
| Toronto    | 201023     |
| New York   | 320300     |
| USA        | 421044     |
| GTA        | 418921     |
| New Jersey | 102301     |
+------------+------------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where name = 'Ashley';
+--------+--------+----------+------+------------+------+
| custId | name   | nickname | city | postalCode | age  |
+--------+--------+----------+------+------------+------+
| C01    | Ashley | Ash      | MDC  | 321200     |   34 |
+--------+--------+----------+------+------------+------+
1 row in set (0.06 sec)

MariaDB [csd2204s18]> select * from customer where name = 'AK';
Empty set (0.00 sec)

MariaDB [csd2204s18]> selectname, city  from customer where name ='Eston';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'selectname, city  from customer where name ='Eston'' at line 1
MariaDB [csd2204s18]> selectname, city  from customer where name ='Eston M';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'selectname, city  from customer where name ='Eston M'' at line 1
MariaDB [csd2204s18]> select name,city  from customer where name ='Eston M';
+---------+---------+
| name    | city    |
+---------+---------+
| Eston M | Toronto |
+---------+---------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select name,city  from customer where City ='Toronto';
+--------------+---------+
| name         | city    |
+--------------+---------+
| Bob Marley   | Toronto |
| Donna Newman | Toronto |
| Eston M      | Toronto |
+--------------+---------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> selectname, city  from customer where city<>'Toronto';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'selectname, city  from customer where city<>'Toronto'' at line 1
MariaDB [csd2204s18]> select name, city  from customer where city<>'Toronto';
+-----------------+------------+
| name            | city       |
+-----------------+------------+
| Ashley          | MDC        |
| Charlies Theron | New York   |
| Denial Jack     | Brazil     |
| Bobby Chacko    | New York   |
| Ashko Charles   | USA        |
| Tony Special    | GTA        |
| JAck Sp         | New Jersey |
+-----------------+------------+
7 rows in set (0.02 sec)

MariaDB [csd2204s18]> select * from cutomer where age<'50';
ERROR 1146 (42S02): Table 'csd2204s18.cutomer' doesn't exist
MariaDB [csd2204s18]> select * from customer where age<'50';
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | Ashley          | Ash      | MDC        | 321200     |   34 |
| C02    | Bob Marley      | Bm       | Toronto    | 100100     |   23 |
| C03    | Charlies Theron | Cher     | New York   | 120134     |   20 |
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C10    | JAck Sp         | Sparrow  | New Jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
5 rows in set (0.02 sec)

MariaDB [csd2204s18]> select * from customer where name>'Ashley';
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C02    | Bob Marley      | Bm       | Toronto    | 100100     |   23 |
| C03    | Charlies Theron | Cher     | New York   | 120134     |   20 |
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C05    | Donna Newman    | New      | Toronto    | 130120     |   50 |
| C06    | Eston M         | M        | Toronto    | 201023     |   65 |
| C07    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| C09    | Tony Special    | Specia   | GTA        | 418921     |   62 |
| C10    | JAck Sp         | Sparrow  | New Jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
8 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where name <'Donna';
+--------+-----------------+----------+----------+------------+------+
| custId | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| C01    | Ashley          | Ash      | MDC      | 321200     |   34 |
| C02    | Bob Marley      | Bm       | Toronto  | 100100     |   23 |
| C03    | Charlies Theron | Cher     | New York | 120134     |   20 |
| C04    | Denial Jack     | DJ       | Brazil   | 341020     |   25 |
| C07    | Bobby Chacko    | Chac     | New York | 320300     |   70 |
| C08    | Ashko Charles   | AK       | USA      | 421044     |   72 |
+--------+-----------------+----------+----------+------------+------+
6 rows in set (0.00 sec)

MariaDB [csd2204s18]> select name,city from customer where name = 'Ashley' OR city = 'Toronto';
+--------------+---------+
| name         | city    |
+--------------+---------+
| Ashley       | MDC     |
| Bob Marley   | Toronto |
| Donna Newman | Toronto |
| Eston M      | Toronto |
+--------------+---------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> select name,city from customer where name = 'Ashley' || city = 'Toronto';
+--------------+---------+
| name         | city    |
+--------------+---------+
| Ashley       | MDC     |
| Bob Marley   | Toronto |
| Donna Newman | Toronto |
| Eston M      | Toronto |
+--------------+---------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> select name,city from customer where city='Toronto' or 'New York';
+--------------+---------+
| name         | city    |
+--------------+---------+
| Bob Marley   | Toronto |
| Donna Newman | Toronto |
| Eston M      | Toronto |
+--------------+---------+
3 rows in set, 4 warnings (0.00 sec)

MariaDB [csd2204s18]> select  name, age from cutomer where city = 'Toronto' AND age>'50';
ERROR 1146 (42S02): Table 'csd2204s18.cutomer' doesn't exist
MariaDB [csd2204s18]> select  name, age from customer where city = 'Toronto' AND age>'50';
+---------+------+
| name    | age  |
+---------+------+
| Eston M |   65 |
+---------+------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select  name, age from customer where city = 'Toronto' && age>'50';
+---------+------+
| name    | age  |
+---------+------+
| Eston M |   65 |
+---------+------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where city ='Toronto';
+--------+--------------+----------+---------+------------+------+
| custId | name         | nickname | city    | postalCode | age  |
+--------+--------------+----------+---------+------------+------+
| C02    | Bob Marley   | Bm       | Toronto | 100100     |   23 |
| C05    | Donna Newman | New      | Toronto | 130120     |   50 |
| C06    | Eston M      | M        | Toronto | 201023     |   65 |
+--------+--------------+----------+---------+------------+------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> select count(*) from customer where city = 'Toronto';
+----------+
| count(*) |
+----------+
|        3 |
+----------+
1 row in set (0.03 sec)

MariaDB [csd2204s18]> select count(*) "number of customers in Toronto" from customer where city = 'Toronto';
+--------------------------------+
| number of customers in Toronto |
+--------------------------------+
|                              3 |
+--------------------------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select count(*)  "number of customers with age more than 50" from customer where age <50;
+-------------------------------------------+
| number of customers with age more than 50 |
+-------------------------------------------+
|                                         5 |
+-------------------------------------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select count(*)  "number of customers with age more than 50" from customer where age >50;
+-------------------------------------------+
| number of customers with age more than 50 |
+-------------------------------------------+
|                                         4 |
+-------------------------------------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where age>30 && age <70;
+--------+--------------+----------+------------+------------+------+
| custId | name         | nickname | city       | postalCode | age  |
+--------+--------------+----------+------------+------------+------+
| C01    | Ashley       | Ash      | MDC        | 321200     |   34 |
| C05    | Donna Newman | New      | Toronto    | 130120     |   50 |
| C06    | Eston M      | M        | Toronto    | 201023     |   65 |
| C09    | Tony Special | Specia   | GTA        | 418921     |   62 |
| C10    | JAck Sp      | Sparrow  | New Jersey | 102301     |   35 |
+--------+--------------+----------+------------+------------+------+
5 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where age between 30 && 70;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '&& 70' at line 1
MariaDB [csd2204s18]> select * from customer where age between 30 && 70;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '&& 70' at line 1
MariaDB [csd2204s18]> 
MariaDB [csd2204s18]> select * from customer where age between '30' && '70';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '&& '70'' at line 1
MariaDB [csd2204s18]> select * from customer where age between 30 and 70;
+--------+--------------+----------+------------+------------+------+
| custId | name         | nickname | city       | postalCode | age  |
+--------+--------------+----------+------------+------------+------+
| C01    | Ashley       | Ash      | MDC        | 321200     |   34 |
| C05    | Donna Newman | New      | Toronto    | 130120     |   50 |
| C06    | Eston M      | M        | Toronto    | 201023     |   65 |
| C07    | Bobby Chacko | Chac     | New York   | 320300     |   70 |
| C09    | Tony Special | Specia   | GTA        | 418921     |   62 |
| C10    | JAck Sp      | Sparrow  | New Jersey | 102301     |   35 |
+--------+--------------+----------+------------+------------+------+
6 rows in set (0.02 sec)

MariaDB [csd2204s18]> select * from customer where age not between 30 and 70;
+--------+-----------------+----------+----------+------------+------+
| custId | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| C02    | Bob Marley      | Bm       | Toronto  | 100100     |   23 |
| C03    | Charlies Theron | Cher     | New York | 120134     |   20 |
| C04    | Denial Jack     | DJ       | Brazil   | 341020     |   25 |
| C08    | Ashko Charles   | AK       | USA      | 421044     |   72 |
+--------+-----------------+----------+----------+------------+------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> select name, max(age) from customer;
+--------+----------+
| name   | max(age) |
+--------+----------+
| Ashley |       72 |
+--------+----------+
1 row in set (0.06 sec)

MariaDB [csd2204s18]> select name from customer age=72;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '=72' at line 1
MariaDB [csd2204s18]> select * from customer age=72;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '=72' at line 1
MariaDB [csd2204s18]> select * from custome rwhere age=72;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'age=72' at line 1
MariaDB [csd2204s18]> select * from customer where age=72;
+--------+---------------+----------+------+------------+------+
| custId | name          | nickname | city | postalCode | age  |
+--------+---------------+----------+------+------------+------+
| C08    | Ashko Charles | AK       | USA  | 421044     |   72 |
+--------+---------------+----------+------+------------+------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select min(age) from customer;
+----------+
| min(age) |
+----------+
|       20 |
+----------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select avg(age) from customer;
+----------+
| avg(age) |
+----------+
|  45.6000 |
+----------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select 'list of customers whose name="B";
    '> select * from customer where name like 'B%';
    '> select * from customer where name like 'B%';
    '> 
    '> ;
    '> 
    '> 
    '> 
    '> 
    '> select * from customer where name like 'B%';
    '> ';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '%';
select * from customer where name like 'B%';

;




select * from customer w' at line 1
MariaDB [csd2204s18]> select * from customer where name like '%n';
+--------+-----------------+----------+----------+------------+------+
| custId | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| C03    | Charlies Theron | Cher     | New York | 120134     |   20 |
| C05    | Donna Newman    | New      | Toronto  | 130120     |   50 |
+--------+-----------------+----------+----------+------------+------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where city like 'New York' and 'New Jersey';
Empty set, 4 warnings (0.00 sec)

MariaDB [csd2204s18]> select * from customer where city like 'New %';
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C03    | Charlies Theron | Cher     | New York   | 120134     |   20 |
| C07    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| C10    | JAck Sp         | Sparrow  | New Jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where name like '--n%';
Empty set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where name like '__n%';
+--------+--------------+----------+---------+------------+------+
| custId | name         | nickname | city    | postalCode | age  |
+--------+--------------+----------+---------+------------+------+
| C04    | Denial Jack  | DJ       | Brazil  | 341020     |   25 |
| C05    | Donna Newman | New      | Toronto | 130120     |   50 |
| C09    | Tony Special | Specia   | GTA     | 418921     |   62 |
+--------+--------------+----------+---------+------------+------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where name like '__n_a%';
+--------+--------------+----------+---------+------------+------+
| custId | name         | nickname | city    | postalCode | age  |
+--------+--------------+----------+---------+------------+------+
| C04    | Denial Jack  | DJ       | Brazil  | 341020     |   25 |
| C05    | Donna Newman | New      | Toronto | 130120     |   50 |
+--------+--------------+----------+---------+------------+------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer limit 4;
+--------+-----------------+----------+----------+------------+------+
| custId | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| C01    | Ashley          | Ash      | MDC      | 321200     |   34 |
| C02    | Bob Marley      | Bm       | Toronto  | 100100     |   23 |
| C03    | Charlies Theron | Cher     | New York | 120134     |   20 |
| C04    | Denial Jack     | DJ       | Brazil   | 341020     |   25 |
+--------+-----------------+----------+----------+------------+------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer limit 2;
+--------+------------+----------+---------+------------+------+
| custId | name       | nickname | city    | postalCode | age  |
+--------+------------+----------+---------+------------+------+
| C01    | Ashley     | Ash      | MDC     | 321200     |   34 |
| C02    | Bob Marley | Bm       | Toronto | 100100     |   23 |
+--------+------------+----------+---------+------------+------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where age 20,25,65,72;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '20,25,65,72' at line 1
MariaDB [csd2204s18]> select * from customer where age IN  (20,25,65,72);
+--------+-----------------+----------+----------+------------+------+
| custId | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| C03    | Charlies Theron | Cher     | New York | 120134     |   20 |
| C04    | Denial Jack     | DJ       | Brazil   | 341020     |   25 |
| C06    | Eston M         | M        | Toronto  | 201023     |   65 |
| C08    | Ashko Charles   | AK       | USA      | 421044     |   72 |
+--------+-----------------+----------+----------+------------+------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where City IN ('Toronto','GTA','USA','MDC');
+--------+---------------+----------+---------+------------+------+
| custId | name          | nickname | city    | postalCode | age  |
+--------+---------------+----------+---------+------------+------+
| C01    | Ashley        | Ash      | MDC     | 321200     |   34 |
| C02    | Bob Marley    | Bm       | Toronto | 100100     |   23 |
| C05    | Donna Newman  | New      | Toronto | 130120     |   50 |
| C06    | Eston M       | M        | Toronto | 201023     |   65 |
| C08    | Ashko Charles | AK       | USA     | 421044     |   72 |
| C09    | Tony Special  | Specia   | GTA     | 418921     |   62 |
+--------+---------------+----------+---------+------------+------+
6 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where City IN ('N%','G%','G%','N%');
Empty set (0.00 sec)

MariaDB [csd2204s18]> select distinct(city)'unique cities' from customer;
+---------------+
| unique cities |
+---------------+
| MDC           |
| Toronto       |
| New York      |
| Brazil        |
| USA           |
| GTA           |
| New Jersey    |
+---------------+
7 rows in set (0.03 sec)

MariaDB [csd2204s18]> select distinct(city) from customer;
+------------+
| city       |
+------------+
| MDC        |
| Toronto    |
| New York   |
| Brazil     |
| USA        |
| GTA        |
| New Jersey |
+------------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> select count (distinct(city)) from customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'distinct(city)) from customer' at line 1
MariaDB [csd2204s18]> select count(distinct(city)) from customer;
+-----------------------+
| count(distinct(city)) |
+-----------------------+
|                     7 |
+-----------------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer order by name;
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 |
| C01    | Ashley          | Ash      | MDC        | 321200     |   34 |
| C02    | Bob Marley      | Bm       | Toronto    | 100100     |   23 |
| C07    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| C03    | Charlies Theron | Cher     | New York   | 120134     |   20 |
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C05    | Donna Newman    | New      | Toronto    | 130120     |   50 |
| C06    | Eston M         | M        | Toronto    | 201023     |   65 |
| C10    | JAck Sp         | Sparrow  | New Jersey | 102301     |   35 |
| C09    | Tony Special    | Specia   | GTA        | 418921     |   62 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.03 sec)

MariaDB [csd2204s18]> select * from customer order by name desc;
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C09    | Tony Special    | Specia   | GTA        | 418921     |   62 |
| C10    | JAck Sp         | Sparrow  | New Jersey | 102301     |   35 |
| C06    | Eston M         | M        | Toronto    | 201023     |   65 |
| C05    | Donna Newman    | New      | Toronto    | 130120     |   50 |
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C03    | Charlies Theron | Cher     | New York   | 120134     |   20 |
| C07    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| C02    | Bob Marley      | Bm       | Toronto    | 100100     |   23 |
| C01    | Ashley          | Ash      | MDC        | 321200     |   34 |
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer order by name asc;
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 |
| C01    | Ashley          | Ash      | MDC        | 321200     |   34 |
| C02    | Bob Marley      | Bm       | Toronto    | 100100     |   23 |
| C07    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| C03    | Charlies Theron | Cher     | New York   | 120134     |   20 |
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C05    | Donna Newman    | New      | Toronto    | 130120     |   50 |
| C06    | Eston M         | M        | Toronto    | 201023     |   65 |
| C10    | JAck Sp         | Sparrow  | New Jersey | 102301     |   35 |
| C09    | Tony Special    | Specia   | GTA        | 418921     |   62 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer order by age desc;
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 |
| C07    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| C06    | Eston M         | M        | Toronto    | 201023     |   65 |
| C09    | Tony Special    | Specia   | GTA        | 418921     |   62 |
| C05    | Donna Newman    | New      | Toronto    | 130120     |   50 |
| C10    | JAck Sp         | Sparrow  | New Jersey | 102301     |   35 |
| C01    | Ashley          | Ash      | MDC        | 321200     |   34 |
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C02    | Bob Marley      | Bm       | Toronto    | 100100     |   23 |
| C03    | Charlies Theron | Cher     | New York   | 120134     |   20 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer order by age asc;
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C03    | Charlies Theron | Cher     | New York   | 120134     |   20 |
| C02    | Bob Marley      | Bm       | Toronto    | 100100     |   23 |
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C01    | Ashley          | Ash      | MDC        | 321200     |   34 |
| C10    | JAck Sp         | Sparrow  | New Jersey | 102301     |   35 |
| C05    | Donna Newman    | New      | Toronto    | 130120     |   50 |
| C09    | Tony Special    | Specia   | GTA        | 418921     |   62 |
| C06    | Eston M         | M        | Toronto    | 201023     |   65 |
| C07    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer order by age desc limit 1;
+--------+---------------+----------+------+------------+------+
| custId | name          | nickname | city | postalCode | age  |
+--------+---------------+----------+------+------------+------+
| C08    | Ashko Charles | AK       | USA  | 421044     |   72 |
+--------+---------------+----------+------+------------+------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer order by age Asc limit 1;
+--------+-----------------+----------+----------+------------+------+
| custId | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| C03    | Charlies Theron | Cher     | New York | 120134     |   20 |
+--------+-----------------+----------+----------+------------+------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer order by age Asc limit 3;
+--------+-----------------+----------+----------+------------+------+
| custId | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| C03    | Charlies Theron | Cher     | New York | 120134     |   20 |
| C02    | Bob Marley      | Bm       | Toronto  | 100100     |   23 |
| C04    | Denial Jack     | DJ       | Brazil   | 341020     |   25 |
+--------+-----------------+----------+----------+------------+------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer order by age Asc limit 2;
+--------+-----------------+----------+----------+------------+------+
| custId | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| C03    | Charlies Theron | Cher     | New York | 120134     |   20 |
| C02    | Bob Marley      | Bm       | Toronto  | 100100     |   23 |
+--------+-----------------+----------+----------+------------+------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from (select * from customer order by age desc limit 2) AS t order by age asc limit 1;
+--------+--------------+----------+----------+------------+------+
| custId | name         | nickname | city     | postalCode | age  |
+--------+--------------+----------+----------+------------+------+
| C07    | Bobby Chacko | Chac     | New York | 320300     |   70 |
+--------+--------------+----------+----------+------------+------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select * from (select * from customer order by age desc limit 2) AS t order by age asc limit 2;
+--------+---------------+----------+----------+------------+------+
| custId | name          | nickname | city     | postalCode | age  |
+--------+---------------+----------+----------+------------+------+
| C07    | Bobby Chacko  | Chac     | New York | 320300     |   70 |
| C08    | Ashko Charles | AK       | USA      | 421044     |   72 |
+--------+---------------+----------+----------+------------+------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from (select * from customer order by age desc limit 2) AS t order by age asc limit 3;
+--------+---------------+----------+----------+------------+------+
| custId | name          | nickname | city     | postalCode | age  |
+--------+---------------+----------+----------+------------+------+
| C07    | Bobby Chacko  | Chac     | New York | 320300     |   70 |
| C08    | Ashko Charles | AK       | USA      | 421044     |   72 |
+--------+---------------+----------+----------+------------+------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from (select * from customer order by age desc limit 2) AS t order by age asc limit 4;
+--------+---------------+----------+----------+------------+------+
| custId | name          | nickname | city     | postalCode | age  |
+--------+---------------+----------+----------+------------+------+
| C07    | Bobby Chacko  | Chac     | New York | 320300     |   70 |
| C08    | Ashko Charles | AK       | USA      | 421044     |   72 |
+--------+---------------+----------+----------+------------+------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from (select * from customer order by age desc limit 2) AS t order by age asc limit 5;
+--------+---------------+----------+----------+------------+------+
| custId | name          | nickname | city     | postalCode | age  |
+--------+---------------+----------+----------+------------+------+
| C07    | Bobby Chacko  | Chac     | New York | 320300     |   70 |
| C08    | Ashko Charles | AK       | USA      | 421044     |   72 |
+--------+---------------+----------+----------+------------+------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from (select * from customer order by age desc limit 5) AS t order by age asc limit 1;
+--------+--------------+----------+---------+------------+------+
| custId | name         | nickname | city    | postalCode | age  |
+--------+--------------+----------+---------+------------+------+
| C05    | Donna Newman | New      | Toronto | 130120     |   50 |
+--------+--------------+----------+---------+------------+------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select * from (select * from customer order by age asc limit 5) AS t order by age asc limit 1;
+--------+-----------------+----------+----------+------------+------+
| custId | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| C03    | Charlies Theron | Cher     | New York | 120134     |   20 |
+--------+-----------------+----------+----------+------------+------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select * from (select * from customer order by age asc limit 2) AS t order by age asc limit 1;
+--------+-----------------+----------+----------+------------+------+
| custId | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| C03    | Charlies Theron | Cher     | New York | 120134     |   20 |
+--------+-----------------+----------+----------+------------+------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select * from (select * from customer order by age asc limit 2) AS t order by age desc limit 1;
+--------+------------+----------+---------+------------+------+
| custId | name       | nickname | city    | postalCode | age  |
+--------+------------+----------+---------+------------+------+
| C02    | Bob Marley | Bm       | Toronto | 100100     |   23 |
+--------+------------+----------+---------+------------+------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select max(age)+10*20/2 from customer;
+------------------+
| max(age)+10*20/2 |
+------------------+
|         172.0000 |
+------------------+
1 row in set (0.02 sec)

MariaDB [csd2204s18]> exit
