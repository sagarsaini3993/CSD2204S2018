MariaDB [(none)]> select * from products;
ERROR 1046 (3D000): No database selected
MariaDB [(none)]> use csd2204s18;
Database changed
MariaDB [csd2204s18]> select * from products;
+------+-----------------+-------+--------------+
| Code | Name            | Price | Manufacturer |
+------+-----------------+-------+--------------+
|    1 | Hard drive      |   240 |            5 |
|    2 | Memory          |   120 |            6 |
|    3 | ZIP drive       |   150 |            4 |
|    4 | Floppy disk     |     5 |            6 |
|    5 | Monitor         |   240 |            1 |
|    6 | DVD drive       |   180 |            2 |
|    7 | CD drive        |    90 |            2 |
|    8 | Printer         |   270 |            3 |
|    9 | Toner cartridge |    66 |            3 |
|   10 | DVD burner      |   180 |            2 |
|   11 | Printer         |    40 |            7 |
|   12 | Toner cartridge |    54 |            7 |
|   13 | DVD burner      |    78 |            7 |
+------+-----------------+-------+--------------+
13 rows in set (0.03 sec)

MariaDB [csd2204s18]> CREATE VIEW v1 as SELECT * from products;
Query OK, 0 rows affected (0.12 sec)

MariaDB [csd2204s18]> select * from products;
+------+-----------------+-------+--------------+
| Code | Name            | Price | Manufacturer |
+------+-----------------+-------+--------------+
|    1 | Hard drive      |   240 |            5 |
|    2 | Memory          |   120 |            6 |
|    3 | ZIP drive       |   150 |            4 |
|    4 | Floppy disk     |     5 |            6 |
|    5 | Monitor         |   240 |            1 |
|    6 | DVD drive       |   180 |            2 |
|    7 | CD drive        |    90 |            2 |
|    8 | Printer         |   270 |            3 |
|    9 | Toner cartridge |    66 |            3 |
|   10 | DVD burner      |   180 |            2 |
|   11 | Printer         |    40 |            7 |
|   12 | Toner cartridge |    54 |            7 |
|   13 | DVD burner      |    78 |            7 |
+------+-----------------+-------+--------------+
13 rows in set (0.00 sec)

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
| v1                   |
+----------------------+
30 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from v1;
+------+-----------------+-------+--------------+
| Code | Name            | Price | Manufacturer |
+------+-----------------+-------+--------------+
|    1 | Hard drive      |   240 |            5 |
|    2 | Memory          |   120 |            6 |
|    3 | ZIP drive       |   150 |            4 |
|    4 | Floppy disk     |     5 |            6 |
|    5 | Monitor         |   240 |            1 |
|    6 | DVD drive       |   180 |            2 |
|    7 | CD drive        |    90 |            2 |
|    8 | Printer         |   270 |            3 |
|    9 | Toner cartridge |    66 |            3 |
|   10 | DVD burner      |   180 |            2 |
|   11 | Printer         |    40 |            7 |
|   12 | Toner cartridge |    54 |            7 |
|   13 | DVD burner      |    78 |            7 |
+------+-----------------+-------+--------------+
13 rows in set (0.02 sec)

MariaDB [csd2204s18]> CREATE VIEW v1 as SELECT * from products WHERE price > 100;
ERROR 1050 (42S01): Table 'v1' already exists
MariaDB [csd2204s18]> CREATE OR REPLACE VIEW v1 as SELECT * from products WHERE price > 100;
Query OK, 0 rows affected (0.08 sec)

MariaDB [csd2204s18]> select * from v1;
+------+------------+-------+--------------+
| Code | Name       | Price | Manufacturer |
+------+------------+-------+--------------+
|    1 | Hard drive |   240 |            5 |
|    2 | Memory     |   120 |            6 |
|    3 | ZIP drive  |   150 |            4 |
|    5 | Monitor    |   240 |            1 |
|    6 | DVD drive  |   180 |            2 |
|    8 | Printer    |   270 |            3 |
|   10 | DVD burner |   180 |            2 |
+------+------------+-------+--------------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> INSERT into v1 values(14,'USB Port',89,2);
Query OK, 1 row affected (0.10 sec)

MariaDB [csd2204s18]> select * from v1;
+------+------------+-------+--------------+
| Code | Name       | Price | Manufacturer |
+------+------------+-------+--------------+
|    1 | Hard drive |   240 |            5 |
|    2 | Memory     |   120 |            6 |
|    3 | ZIP drive  |   150 |            4 |
|    5 | Monitor    |   240 |            1 |
|    6 | DVD drive  |   180 |            2 |
|    8 | Printer    |   270 |            3 |
|   10 | DVD burner |   180 |            2 |
+------+------------+-------+--------------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from products;
+------+-----------------+-------+--------------+
| Code | Name            | Price | Manufacturer |
+------+-----------------+-------+--------------+
|    1 | Hard drive      |   240 |            5 |
|    2 | Memory          |   120 |            6 |
|    3 | ZIP drive       |   150 |            4 |
|    4 | Floppy disk     |     5 |            6 |
|    5 | Monitor         |   240 |            1 |
|    6 | DVD drive       |   180 |            2 |
|    7 | CD drive        |    90 |            2 |
|    8 | Printer         |   270 |            3 |
|    9 | Toner cartridge |    66 |            3 |
|   10 | DVD burner      |   180 |            2 |
|   11 | Printer         |    40 |            7 |
|   12 | Toner cartridge |    54 |            7 |
|   13 | DVD burner      |    78 |            7 |
|   14 | USB Port        |    89 |            2 |
+------+-----------------+-------+--------------+
14 rows in set (0.00 sec)

MariaDB [csd2204s18]> DELETE from v1 WHERE code = 20;
Query OK, 0 rows affected (0.00 sec)

MariaDB [csd2204s18]> select * from products;
+------+-----------------+-------+--------------+
| Code | Name            | Price | Manufacturer |
+------+-----------------+-------+--------------+
|    1 | Hard drive      |   240 |            5 |
|    2 | Memory          |   120 |            6 |
|    3 | ZIP drive       |   150 |            4 |
|    4 | Floppy disk     |     5 |            6 |
|    5 | Monitor         |   240 |            1 |
|    6 | DVD drive       |   180 |            2 |
|    7 | CD drive        |    90 |            2 |
|    8 | Printer         |   270 |            3 |
|    9 | Toner cartridge |    66 |            3 |
|   10 | DVD burner      |   180 |            2 |
|   11 | Printer         |    40 |            7 |
|   12 | Toner cartridge |    54 |            7 |
|   13 | DVD burner      |    78 |            7 |
|   14 | USB Port        |    89 |            2 |
+------+-----------------+-------+--------------+
14 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from v1;
+------+------------+-------+--------------+
| Code | Name       | Price | Manufacturer |
+------+------------+-------+--------------+
|    1 | Hard drive |   240 |            5 |
|    2 | Memory     |   120 |            6 |
|    3 | ZIP drive  |   150 |            4 |
|    5 | Monitor    |   240 |            1 |
|    6 | DVD drive  |   180 |            2 |
|    8 | Printer    |   270 |            3 |
|   10 | DVD burner |   180 |            2 |
+------+------------+-------+--------------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> DELETE from v1 WHERE code = 14;
Query OK, 0 rows affected (0.00 sec)

MariaDB [csd2204s18]> SELECT name, price from products WHERE name LIKE '%drive%';
+------------+-------+
| name       | price |
+------------+-------+
| Hard drive |   240 |
| ZIP drive  |   150 |
| DVD drive  |   180 |
| CD drive   |    90 |
+------------+-------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> CREATE OR REPLACE VIEW v2 as SELECT name, price from products WHERE name LIKE '%drive%';
Query OK, 0 rows affected (0.06 sec)

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
| v1                   |
| v2                   |
+----------------------+
31 rows in set (0.00 sec)

MariaDB [csd2204s18]> SELECT products.code, manu.name from manuinner join PRODUCTS ON products.manufacturer = manu.code;
ERROR 1146 (42S02): Table 'csd2204s18.manuinner' doesn't exist
MariaDB [csd2204s18]> SELECT products.code, manu.name from manu inner join PRODUCTS ON products.manufacturer = manu.code;
+------+-------------------+
| code | name              |
+------+-------------------+
|    5 | Sony              |
|    6 | Creative Labs     |
|    7 | Creative Labs     |
|   10 | Creative Labs     |
|   14 | Creative Labs     |
|    8 | Hewlett-Packard   |
|    9 | Hewlett-Packard   |
|    3 | Iomega            |
|    1 | Fujitsu           |
|    2 | Winchester        |
|    4 | Winchester        |
|   11 | moxDroid Labs Inc |
|   12 | moxDroid Labs Inc |
|   13 | moxDroid Labs Inc |
+------+-------------------+
14 rows in set (0.03 sec)

MariaDB [csd2204s18]> SELECT products.code, products.name, manu.name from manu inner join PRODUCTS ON products.manufacturer = manu.code;
+------+-----------------+-------------------+
| code | name            | name              |
+------+-----------------+-------------------+
|    1 | Hard drive      | Fujitsu           |
|    2 | Memory          | Winchester        |
|    3 | ZIP drive       | Iomega            |
|    4 | Floppy disk     | Winchester        |
|    5 | Monitor         | Sony              |
|    6 | DVD drive       | Creative Labs     |
|    7 | CD drive        | Creative Labs     |
|    8 | Printer         | Hewlett-Packard   |
|    9 | Toner cartridge | Hewlett-Packard   |
|   10 | DVD burner      | Creative Labs     |
|   11 | Printer         | moxDroid Labs Inc |
|   12 | Toner cartridge | moxDroid Labs Inc |
|   13 | DVD burner      | moxDroid Labs Inc |
|   14 | USB Port        | Creative Labs     |
+------+-----------------+-------------------+
14 rows in set (0.00 sec)

MariaDB [csd2204s18]> SELECT products.code, products.name "Products" , manu.name from manu inner join PRODUCTS ON products.manufacturer = manu.code;
+------+-----------------+-------------------+
| code | Products        | name              |
+------+-----------------+-------------------+
|    1 | Hard drive      | Fujitsu           |
|    2 | Memory          | Winchester        |
|    3 | ZIP drive       | Iomega            |
|    4 | Floppy disk     | Winchester        |
|    5 | Monitor         | Sony              |
|    6 | DVD drive       | Creative Labs     |
|    7 | CD drive        | Creative Labs     |
|    8 | Printer         | Hewlett-Packard   |
|    9 | Toner cartridge | Hewlett-Packard   |
|   10 | DVD burner      | Creative Labs     |
|   11 | Printer         | moxDroid Labs Inc |
|   12 | Toner cartridge | moxDroid Labs Inc |
|   13 | DVD burner      | moxDroid Labs Inc |
|   14 | USB Port        | Creative Labs     |
+------+-----------------+-------------------+
14 rows in set (0.00 sec)

MariaDB [csd2204s18]> CREATE OR REPLACE VIEW v3 as SELECT products.code, products.name "Products" , manu.name from manu inner join PRODUCTS ON products.manufacturer = manu.code;
Query OK, 0 rows affected (0.06 sec)

MariaDB [csd2204s18]> CREATE OR REPLACE VIEW v4 as SELECT first_name, last_name, salary FROM employees WHERE salary >  ALL (SELECT avg(salary) FROM employees GROUP BY department_id);
Query OK, 0 rows affected (0.08 sec)

MariaDB [csd2204s18]> select * from v4;
+------------+-----------+----------+
| first_name | last_name | salary   |
+------------+-----------+----------+
| Steven     | King      | 24000.00 |
+------------+-----------+----------+
1 row in set (0.03 sec)

MariaDB [csd2204s18]> DROP view v5;
ERROR 1051 (42S02): Unknown table 'csd2204s18.v5'
MariaDB [csd2204s18]> DROP view  IF EXISTS v5;
Query OK, 0 rows affected, 1 warning (0.00 sec)

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
| v1                   |
| v2                   |
| v3                   |
| v4                   |
+----------------------+
33 rows in set (0.00 sec)

MariaDB [csd2204s18]> DROP view  IF EXISTS v1;
Query OK, 0 rows affected (0.01 sec)

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
| v2                   |
| v3                   |
| v4                   |
+----------------------+
32 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from manu;
+------+-------------------+
| Code | Name              |
+------+-------------------+
|    1 | Sony              |
|    2 | Creative Labs     |
|    3 | Hewlett-Packard   |
|    4 | Iomega            |
|    5 | Fujitsu           |
|    6 | Winchester        |
|    7 | moxDroid Labs Inc |
|    8 | Dell              |
|    9 | Bell Labs         |
+------+-------------------+
9 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from products;
+------+-----------------+-------+--------------+
| Code | Name            | Price | Manufacturer |
+------+-----------------+-------+--------------+
|    1 | Hard drive      |   240 |            5 |
|    2 | Memory          |   120 |            6 |
|    3 | ZIP drive       |   150 |            4 |
|    4 | Floppy disk     |     5 |            6 |
|    5 | Monitor         |   240 |            1 |
|    6 | DVD drive       |   180 |            2 |
|    7 | CD drive        |    90 |            2 |
|    8 | Printer         |   270 |            3 |
|    9 | Toner cartridge |    66 |            3 |
|   10 | DVD burner      |   180 |            2 |
|   11 | Printer         |    40 |            7 |
|   12 | Toner cartridge |    54 |            7 |
|   13 | DVD burner      |    78 |            7 |
|   14 | USB Port        |    89 |            2 |
+------+-----------------+-------+--------------+
14 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from product;
ERROR 1146 (42S02): Table 'csd2204s18.product' doesn't exist
MariaDB [csd2204s18]> select manu.code,manu.name from  manu
    -> ;
+------+-------------------+
| code | name              |
+------+-------------------+
|    1 | Sony              |
|    2 | Creative Labs     |
|    3 | Hewlett-Packard   |
|    4 | Iomega            |
|    5 | Fujitsu           |
|    6 | Winchester        |
|    7 | moxDroid Labs Inc |
|    8 | Dell              |
|    9 | Bell Labs         |
+------+-------------------+
9 rows in set (0.00 sec)

MariaDB [csd2204s18]> select manu.code from  manu;
+------+
| code |
+------+
|    1 |
|    2 |
|    3 |
|    4 |
|    5 |
|    6 |
|    7 |
|    8 |
|    9 |
+------+
9 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from  manu;
+------+-------------------+
| Code | Name              |
+------+-------------------+
|    1 | Sony              |
|    2 | Creative Labs     |
|    3 | Hewlett-Packard   |
|    4 | Iomega            |
|    5 | Fujitsu           |
|    6 | Winchester        |
|    7 | moxDroid Labs Inc |
|    8 | Dell              |
|    9 | Bell Labs         |
+------+-------------------+
9 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from  products;
+------+-----------------+-------+--------------+
| Code | Name            | Price | Manufacturer |
+------+-----------------+-------+--------------+
|    1 | Hard drive      |   240 |            5 |
|    2 | Memory          |   120 |            6 |
|    3 | ZIP drive       |   150 |            4 |
|    4 | Floppy disk     |     5 |            6 |
|    5 | Monitor         |   240 |            1 |
|    6 | DVD drive       |   180 |            2 |
|    7 | CD drive        |    90 |            2 |
|    8 | Printer         |   270 |            3 |
|    9 | Toner cartridge |    66 |            3 |
|   10 | DVD burner      |   180 |            2 |
|   11 | Printer         |    40 |            7 |
|   12 | Toner cartridge |    54 |            7 |
|   13 | DVD burner      |    78 |            7 |
|   14 | USB Port        |    89 |            2 |
+------+-----------------+-------+--------------+
14 rows in set (0.00 sec)

MariaDB [csd2204s18]> select manu.code, manu.name, products.price from manu WHERE price > 100 INNER JOIN products on manu.code = products.code;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'INNER JOIN products on manu.code = products.code' at line 1
MariaDB [csd2204s18]> select manu.code, manu.name, products.price from manu WHERE price > 100 INNER JOIN products on manu.code = products.name;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'INNER JOIN products on manu.code = products.name' at line 1
MariaDB [csd2204s18]> 
MariaDB [csd2204s18]> 
MariaDB [csd2204s18]> select * from  products;
+------+-----------------+-------+--------------+
| Code | Name            | Price | Manufacturer |
+------+-----------------+-------+--------------+
|    1 | Hard drive      |   240 |            5 |
|    2 | Memory          |   120 |            6 |
|    3 | ZIP drive       |   150 |            4 |
|    4 | Floppy disk     |     5 |            6 |
|    5 | Monitor         |   240 |            1 |
|    6 | DVD drive       |   180 |            2 |
|    7 | CD drive        |    90 |            2 |
|    8 | Printer         |   270 |            3 |
|    9 | Toner cartridge |    66 |            3 |
|   10 | DVD burner      |   180 |            2 |
|   11 | Printer         |    40 |            7 |
|   12 | Toner cartridge |    54 |            7 |
|   13 | DVD burner      |    78 |            7 |
|   14 | USB Port        |    89 |            2 |
+------+-----------------+-------+--------------+
14 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from  manu;
+------+-------------------+
| Code | Name              |
+------+-------------------+
|    1 | Sony              |
|    2 | Creative Labs     |
|    3 | Hewlett-Packard   |
|    4 | Iomega            |
|    5 | Fujitsu           |
|    6 | Winchester        |
|    7 | moxDroid Labs Inc |
|    8 | Dell              |
|    9 | Bell Labs         |
+------+-------------------+
9 rows in set (0.00 sec)

MariaDB [csd2204s18]> select products.code, products.price, manu.name from products INNER JOIN manu on manu.code = products.code;
+------+-------+-------------------+
| code | price | name              |
+------+-------+-------------------+
|    1 |   240 | Sony              |
|    2 |   120 | Creative Labs     |
|    3 |   150 | Hewlett-Packard   |
|    4 |     5 | Iomega            |
|    5 |   240 | Fujitsu           |
|    6 |   180 | Winchester        |
|    7 |    90 | moxDroid Labs Inc |
|    8 |   270 | Dell              |
|    9 |    66 | Bell Labs         |
+------+-------+-------------------+
9 rows in set (0.00 sec)

MariaDB [csd2204s18]> select products.code, products.price, manu.name from manu INNER JOIN products on manu.code = products.code;
+------+-------+-------------------+
| code | price | name              |
+------+-------+-------------------+
|    1 |   240 | Sony              |
|    2 |   120 | Creative Labs     |
|    3 |   150 | Hewlett-Packard   |
|    4 |     5 | Iomega            |
|    5 |   240 | Fujitsu           |
|    6 |   180 | Winchester        |
|    7 |    90 | moxDroid Labs Inc |
|    8 |   270 | Dell              |
|    9 |    66 | Bell Labs         |
+------+-------+-------------------+
9 rows in set (0.00 sec)

MariaDB [csd2204s18]> select products.code, products.price, manu.name from manu LEFT JOIN products on manu.code = products.code;
+------+-------+-------------------+
| code | price | name              |
+------+-------+-------------------+
|    1 |   240 | Sony              |
|    2 |   120 | Creative Labs     |
|    3 |   150 | Hewlett-Packard   |
|    4 |     5 | Iomega            |
|    5 |   240 | Fujitsu           |
|    6 |   180 | Winchester        |
|    7 |    90 | moxDroid Labs Inc |
|    8 |   270 | Dell              |
|    9 |    66 | Bell Labs         |
+------+-------+-------------------+
9 rows in set (0.00 sec)

MariaDB [csd2204s18]> select products.code, products.price, manu.name from manu RIGHT JOIN products on manu.code = products.code;
+------+-------+-------------------+
| code | price | name              |
+------+-------+-------------------+
|    1 |   240 | Sony              |
|    2 |   120 | Creative Labs     |
|    3 |   150 | Hewlett-Packard   |
|    4 |     5 | Iomega            |
|    5 |   240 | Fujitsu           |
|    6 |   180 | Winchester        |
|    7 |    90 | moxDroid Labs Inc |
|    8 |   270 | Dell              |
|    9 |    66 | Bell Labs         |
|   10 |   180 | NULL              |
|   11 |    40 | NULL              |
|   12 |    54 | NULL              |
|   13 |    78 | NULL              |
|   14 |    89 | NULL              |
+------+-------+-------------------+
14 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from  manu;
+------+-------------------+
| Code | Name              |
+------+-------------------+
|    1 | Sony              |
|    2 | Creative Labs     |
|    3 | Hewlett-Packard   |
|    4 | Iomega            |
|    5 | Fujitsu           |
|    6 | Winchester        |
|    7 | moxDroid Labs Inc |
|    8 | Dell              |
|    9 | Bell Labs         |
+------+-------------------+
9 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from  products;
+------+-----------------+-------+--------------+
| Code | Name            | Price | Manufacturer |
+------+-----------------+-------+--------------+
|    1 | Hard drive      |   240 |            5 |
|    2 | Memory          |   120 |            6 |
|    3 | ZIP drive       |   150 |            4 |
|    4 | Floppy disk     |     5 |            6 |
|    5 | Monitor         |   240 |            1 |
|    6 | DVD drive       |   180 |            2 |
|    7 | CD drive        |    90 |            2 |
|    8 | Printer         |   270 |            3 |
|    9 | Toner cartridge |    66 |            3 |
|   10 | DVD burner      |   180 |            2 |
|   11 | Printer         |    40 |            7 |
|   12 | Toner cartridge |    54 |            7 |
|   13 | DVD burner      |    78 |            7 |
|   14 | USB Port        |    89 |            2 |
+------+-----------------+-------+--------------+
14 rows in set (0.00 sec)

MariaDB [csd2204s18]> select manu.name, products.manufacturer from manu INNER JOIN products on products.code = manu.code;
+-------------------+--------------+
| name              | manufacturer |
+-------------------+--------------+
| Sony              |            5 |
| Creative Labs     |            6 |
| Hewlett-Packard   |            4 |
| Iomega            |            6 |
| Fujitsu           |            1 |
| Winchester        |            2 |
| moxDroid Labs Inc |            2 |
| Dell              |            3 |
| Bell Labs         |            3 |
+-------------------+--------------+
9 rows in set (0.00 sec)

MariaDB [csd2204s18]> select manu.name, products.manufacturer from manu RIGHT JOIN products on products.code = manu.code;
+-------------------+--------------+
| name              | manufacturer |
+-------------------+--------------+
| Fujitsu           |            1 |
| Winchester        |            2 |
| moxDroid Labs Inc |            2 |
| NULL              |            2 |
| NULL              |            2 |
| Dell              |            3 |
| Bell Labs         |            3 |
| Hewlett-Packard   |            4 |
| Sony              |            5 |
| Creative Labs     |            6 |
| Iomega            |            6 |
| NULL              |            7 |
| NULL              |            7 |
| NULL              |            7 |
+-------------------+--------------+
14 rows in set (0.00 sec)

MariaDB [csd2204s18]> select manu.name, products.manufacturer, products.price from manu RIGHT JOIN products on products.code = manu.code WHERE manufacturer > 100;
Empty set (0.00 sec)

MariaDB [csd2204s18]> select manu.name, products.manufacturer, products.price from manu RIGHT JOIN products on products.code = manu.code WHERE price > 100;
+-----------------+--------------+-------+
| name            | manufacturer | price |
+-----------------+--------------+-------+
| Sony            |            5 |   240 |
| Creative Labs   |            6 |   120 |
| Hewlett-Packard |            4 |   150 |
| Fujitsu         |            1 |   240 |
| Winchester      |            2 |   180 |
| Dell            |            3 |   270 |
| NULL            |            2 |   180 |
+-----------------+--------------+-------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> select manu.name, products.manufacturer, products.price from manu RIGHT JOIN products on products.code = manu.code WHERE price > 10 GROUP BY manufacturer ;
+-----------------+--------------+-------+
| name            | manufacturer | price |
+-----------------+--------------+-------+
| Fujitsu         |            1 |   240 |
| Winchester      |            2 |   180 |
| Dell            |            3 |   270 |
| Hewlett-Packard |            4 |   150 |
| Sony            |            5 |   240 |
| Creative Labs   |            6 |   120 |
| NULL            |            7 |    40 |
+-----------------+--------------+-------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from  products;
+------+-----------------+-------+--------------+
| Code | Name            | Price | Manufacturer |
+------+-----------------+-------+--------------+
|    1 | Hard drive      |   240 |            5 |
|    2 | Memory          |   120 |            6 |
|    3 | ZIP drive       |   150 |            4 |
|    4 | Floppy disk     |     5 |            6 |
|    5 | Monitor         |   240 |            1 |
|    6 | DVD drive       |   180 |            2 |
|    7 | CD drive        |    90 |            2 |
|    8 | Printer         |   270 |            3 |
|    9 | Toner cartridge |    66 |            3 |
|   10 | DVD burner      |   180 |            2 |
|   11 | Printer         |    40 |            7 |
|   12 | Toner cartridge |    54 |            7 |
|   13 | DVD burner      |    78 |            7 |
|   14 | USB Port        |    89 |            2 |
+------+-----------------+-------+--------------+
14 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from  manu;
+------+-------------------+
| Code | Name              |
+------+-------------------+
|    1 | Sony              |
|    2 | Creative Labs     |
|    3 | Hewlett-Packard   |
|    4 | Iomega            |
|    5 | Fujitsu           |
|    6 | Winchester        |
|    7 | moxDroid Labs Inc |
|    8 | Dell              |
|    9 | Bell Labs         |
+------+-------------------+
9 rows in set (0.00 sec)

MariaDB [csd2204s18]> create view v5 as select * from products;
Query OK, 0 rows affected (0.05 sec)

MariaDB [csd2204s18]> select * from  v5;
+------+-----------------+-------+--------------+
| Code | Name            | Price | Manufacturer |
+------+-----------------+-------+--------------+
|    1 | Hard drive      |   240 |            5 |
|    2 | Memory          |   120 |            6 |
|    3 | ZIP drive       |   150 |            4 |
|    4 | Floppy disk     |     5 |            6 |
|    5 | Monitor         |   240 |            1 |
|    6 | DVD drive       |   180 |            2 |
|    7 | CD drive        |    90 |            2 |
|    8 | Printer         |   270 |            3 |
|    9 | Toner cartridge |    66 |            3 |
|   10 | DVD burner      |   180 |            2 |
|   11 | Printer         |    40 |            7 |
|   12 | Toner cartridge |    54 |            7 |
|   13 | DVD burner      |    78 |            7 |
|   14 | USB Port        |    89 |            2 |
+------+-----------------+-------+--------------+
14 rows in set (0.00 sec)

MariaDB [csd2204s18]> create view v5 as select * from products where price > 100;
ERROR 1050 (42S01): Table 'v5' already exists
MariaDB [csd2204s18]> create or replace view v5 as select * from products where price > 100;
Query OK, 0 rows affected (0.06 sec)

MariaDB [csd2204s18]> select * from v2;
+------------+-------+
| name       | price |
+------------+-------+
| Hard drive |   240 |
| ZIP drive  |   150 |
| DVD drive  |   180 |
| CD drive   |    90 |
+------------+-------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> create or replace v6 from manu where code > 6;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'v6 from manu where code > 6' at line 1
MariaDB [csd2204s18]> create or replace v6 as SELECT * from manu where code > 6;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'v6 as SELECT * from manu where code > 6' at line 1
MariaDB [csd2204s18]> create or replace VIEW v6 as SELECT * from manu where code > 6;
Query OK, 0 rows affected (0.03 sec)

MariaDB [csd2204s18]> select * from v6;
+------+-------------------+
| Code | Name              |
+------+-------------------+
|    7 | moxDroid Labs Inc |
|    8 | Dell              |
|    9 | Bell Labs         |
+------+-------------------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from trans;
Empty set (0.05 sec)

MariaDB [csd2204s18]> desc trans;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| ac_type | varchar(3)  | NO   | PRI | NULL    |       |
| ac_no   | int(4)      | NO   | PRI | NULL    |       |
| tdate   | date        | NO   | PRI | NULL    |       |
| counter | int(2)      | YES  |     | NULL    |       |
| amount  | float(10,2) | YES  |     | NULL    |       |
| descr   | varchar(30) | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [csd2204s18]> desc trans;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| ac_type | varchar(3)  | NO   | PRI | NULL    |       |
| ac_no   | int(4)      | NO   | PRI | NULL    |       |
| tdate   | date        | NO   | PRI | NULL    |       |
| counter | int(2)      | YES  |     | NULL    |       |
| amount  | float(10,2) | YES  |     | NULL    |       |
| descr   | varchar(30) | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [csd2204s18]> insert into TRANS (ac_type, ac_no, tdate, counter, amount, descr) values ('Saving', 8853, '2017/12/02', 7, '7369.32', 'nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras');insert into TRANS (ac_type, ac_no, tdate, counter, amount, descr) values ('Saving', 8792, '2017/12/27', 7, '5587.62', 'duis aliquam convallis nunc proin at turpis a pede posuere nonummy');insert into TRANS (ac_type, ac_no, tdate, counter, amount, descr) values ('Saving', 7729, '2017/05/27', 5, '7508.77', 'vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae');insert into TRANS (ac_type, ac_no, tdate, counter, amount, descr) values ('Saving', 4850, '2018/05/08', 5, '3919.65', 'velit donec diam neque vestibulum eget vulputate ut ultrices');insert into TRANS (ac_type, ac_no, tdate, counter, amount, descr) values ('Saving', 9166, '2018/03/13', 2, '8600.48', 'gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam');insert into TRANS (ac_type, ac_no, tdate, counter, amount, descr) values ('Saving', 8261, '2018/03/30', 6, '432.05', 'leo odio porttitor id consequat in consequat ut nulla sed accumsan');insert into TRANS (ac_type, ac_no, tdate, counter, amount, descr) values ('Saving', 9079, '2017/12/20', 6, '4900.59', 'magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean');insert into TRANS (ac_type, ac_no, tdate, counter, amount, descr) values ('Saving', 1304, '2017/11/08', 9, '1083.63', 'vel sem sed sagittis nam congue risus semper porta volutpat quam pede');insert into TRANS (ac_type, ac_no, tdate, counter, amount, descr) values ('Saving', 5514, '2018/03/18', 7, '6978.82', 'eros vestibulum ac est lacinia nisi');insert into TRANS (ac_type, ac_no, tdate, counter, amount, descr) values ('Saving', 5686, '2017/07/28', 10, '1532.47', 'ut erat id mauris vulputate elementum nullam varius nulla');insert into TRANS (ac_type, ac_no, tdate, counter, amount, descr) values ('Saving', 4882, '2018/02/16', 10, '4528.13', 'a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis');
Query OK, 1 row affected, 2 warnings (0.08 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

Query OK, 1 row affected, 2 warnings (0.06 sec)

Query OK, 1 row affected, 2 warnings (0.05 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

MariaDB [csd2204s18]> select * from trans;
+---------+-------+------------+---------+---------+--------------------------------+
| ac_type | ac_no | tdate      | counter | amount  | descr                          |
+---------+-------+------------+---------+---------+--------------------------------+
| Sav     |  1304 | 2017-11-08 |       9 | 1083.63 | vel sem sed sagittis nam congu |
| Sav     |  4850 | 2018-05-08 |       5 | 3919.65 | velit donec diam neque vestibu |
| Sav     |  4882 | 2018-02-16 |      10 | 4528.13 | a nibh in quis justo maecenas  |
| Sav     |  5514 | 2018-03-18 |       7 | 6978.82 | eros vestibulum ac est lacinia |
| Sav     |  5686 | 2017-07-28 |      10 | 1532.47 | ut erat id mauris vulputate el |
| Sav     |  7729 | 2017-05-27 |       5 | 7508.77 | vestibulum ante ipsum primis i |
| Sav     |  8261 | 2018-03-30 |       6 |  432.05 | leo odio porttitor id consequa |
| Sav     |  8792 | 2017-12-27 |       7 | 5587.62 | duis aliquam convallis nunc pr |
| Sav     |  8853 | 2017-12-02 |       7 | 7369.32 | nulla ut erat id mauris vulput |
| Sav     |  9079 | 2017-12-20 |       6 | 4900.59 | magnis dis parturient montes n |
| Sav     |  9166 | 2018-03-13 |       2 | 8600.48 | gravida nisi at nibh in hac ha |
+---------+-------+------------+---------+---------+--------------------------------+
11 rows in set (0.00 sec)

MariaDB [csd2204s18]> alter table trans MODIFY ac_type varchar(10);
Query OK, 11 rows affected (0.97 sec)
Records: 11  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> select * from trans;
+---------+-------+------------+---------+---------+--------------------------------+
| ac_type | ac_no | tdate      | counter | amount  | descr                          |
+---------+-------+------------+---------+---------+--------------------------------+
| Sav     |  1304 | 2017-11-08 |       9 | 1083.63 | vel sem sed sagittis nam congu |
| Sav     |  4850 | 2018-05-08 |       5 | 3919.65 | velit donec diam neque vestibu |
| Sav     |  4882 | 2018-02-16 |      10 | 4528.13 | a nibh in quis justo maecenas  |
| Sav     |  5514 | 2018-03-18 |       7 | 6978.82 | eros vestibulum ac est lacinia |
| Sav     |  5686 | 2017-07-28 |      10 | 1532.47 | ut erat id mauris vulputate el |
| Sav     |  7729 | 2017-05-27 |       5 | 7508.77 | vestibulum ante ipsum primis i |
| Sav     |  8261 | 2018-03-30 |       6 |  432.05 | leo odio porttitor id consequa |
| Sav     |  8792 | 2017-12-27 |       7 | 5587.62 | duis aliquam convallis nunc pr |
| Sav     |  8853 | 2017-12-02 |       7 | 7369.32 | nulla ut erat id mauris vulput |
| Sav     |  9079 | 2017-12-20 |       6 | 4900.59 | magnis dis parturient montes n |
| Sav     |  9166 | 2018-03-13 |       2 | 8600.48 | gravida nisi at nibh in hac ha |
+---------+-------+------------+---------+---------+--------------------------------+
11 rows in set (0.02 sec)

MariaDB [csd2204s18]> delete from trans;
Query OK, 11 rows affected (0.09 sec)

MariaDB [csd2204s18]> select * from trans;
Empty set (0.00 sec)

MariaDB [csd2204s18]> insert into TRANS (ac_type, ac_no, tdate, counter, amount, descr) values ('Saving', 8853, '2017/12/02', 7, '7369.32', 'nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras');insert into TRANS (ac_type, ac_no, tdate, counter, amount, descr) values ('Saving', 8792, '2017/12/27', 7, '5587.62', 'duis aliquam convallis nunc proin at turpis a pede posuere nonummy');insert into TRANS (ac_type, ac_no, tdate, counter, amount, descr) values ('Saving', 7729, '2017/05/27', 5, '7508.77', 'vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae');insert into TRANS (ac_type, ac_no, tdate, counter, amount, descr) values ('Saving', 4850, '2018/05/08', 5, '3919.65', 'velit donec diam neque vestibulum eget vulputate ut ultrices');insert into TRANS (ac_type, ac_no, tdate, counter, amount, descr) values ('Saving', 9166, '2018/03/13', 2, '8600.48', 'gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam');insert into TRANS (ac_type, ac_no, tdate, counter, amount, descr) values ('Saving', 8261, '2018/03/30', 6, '432.05', 'leo odio porttitor id consequat in consequat ut nulla sed accumsan');insert into TRANS (ac_type, ac_no, tdate, counter, amount, descr) values ('Saving', 9079, '2017/12/20', 6, '4900.59', 'magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean');insert into TRANS (ac_type, ac_no, tdate, counter, amount, descr) values ('Saving', 1304, '2017/11/08', 9, '1083.63', 'vel sem sed sagittis nam congue risus semper porta volutpat quam pede');insert into TRANS (ac_type, ac_no, tdate, counter, amount, descr) values ('Saving', 5514, '2018/03/18', 7, '6978.82', 'eros vestibulum ac est lacinia nisi');insert into TRANS (ac_type, ac_no, tdate, counter, amount, descr) values ('Saving', 5686, '2017/07/28', 10, '1532.47', 'ut erat id mauris vulputate elementum nullam varius nulla');insert into TRANS (ac_type, ac_no, tdate, counter, amount, descr) values ('Saving', 4882, '2018/02/16', 10, '4528.13', 'a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis');\
Query OK, 1 row affected, 1 warning (0.06 sec)

Query OK, 1 row affected, 1 warning (0.03 sec)

Query OK, 1 row affected, 1 warning (0.01 sec)

Query OK, 1 row affected, 1 warning (0.02 sec)

Query OK, 1 row affected, 1 warning (0.03 sec)

Query OK, 1 row affected, 1 warning (0.03 sec)

Query OK, 1 row affected, 1 warning (0.05 sec)

Query OK, 1 row affected, 1 warning (0.02 sec)

Query OK, 1 row affected, 1 warning (0.03 sec)

Query OK, 1 row affected, 1 warning (0.03 sec)

Query OK, 1 row affected, 1 warning (0.03 sec)

MariaDB [csd2204s18]> select * from trans;
+---------+-------+------------+---------+---------+--------------------------------+
| ac_type | ac_no | tdate      | counter | amount  | descr                          |
+---------+-------+------------+---------+---------+--------------------------------+
| Saving  |  1304 | 2017-11-08 |       9 | 1083.63 | vel sem sed sagittis nam congu |
| Saving  |  4850 | 2018-05-08 |       5 | 3919.65 | velit donec diam neque vestibu |
| Saving  |  4882 | 2018-02-16 |      10 | 4528.13 | a nibh in quis justo maecenas  |
| Saving  |  5514 | 2018-03-18 |       7 | 6978.82 | eros vestibulum ac est lacinia |
| Saving  |  5686 | 2017-07-28 |      10 | 1532.47 | ut erat id mauris vulputate el |
| Saving  |  7729 | 2017-05-27 |       5 | 7508.77 | vestibulum ante ipsum primis i |
| Saving  |  8261 | 2018-03-30 |       6 |  432.05 | leo odio porttitor id consequa |
| Saving  |  8792 | 2017-12-27 |       7 | 5587.62 | duis aliquam convallis nunc pr |
| Saving  |  8853 | 2017-12-02 |       7 | 7369.32 | nulla ut erat id mauris vulput |
| Saving  |  9079 | 2017-12-20 |       6 | 4900.59 | magnis dis parturient montes n |
| Saving  |  9166 | 2018-03-13 |       2 | 8600.48 | gravida nisi at nibh in hac ha |
+---------+-------+------------+---------+---------+--------------------------------+
11 rows in set (0.00 sec)

MariaDB [csd2204s18]> tee C:/Users/736242/Downloads/PracticeLogSS.sql
