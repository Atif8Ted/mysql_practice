mysql> create database tutorial2;
Query OK, 1 row affected (0.01 sec)

mysql> show databases ;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
| tutorial1          |
| tutorial2          |
+--------------------+
6 rows in set (0.00 sec)

mysql> use tutorial2;
Database changed
mysql> create table users (name text);
Query OK, 0 rows affected (0.61 sec)

mysql> show tables ;
+---------------------+
| Tables_in_tutorial2 |
+---------------------+
| users               |
+---------------------+
1 row in set (0.00 sec)

mysql> desc users;
+-------+------+------+-----+---------+-------+
| Field | Type | Null | Key | Default | Extra |
+-------+------+------+-----+---------+-------+
| name  | text | YES  |     | NULL    |       |
+-------+------+------+-----+---------+-------+
1 row in set (0.02 sec)

mysql> insert into users(name) values ("Atif");
Query OK, 1 row affected (0.22 sec)

mysql> desc users;
+-------+------+------+-----+---------+-------+
| Field | Type | Null | Key | Default | Extra |
+-------+------+------+-----+---------+-------+
| name  | text | YES  |     | NULL    |       |
+-------+------+------+-----+---------+-------+
1 row in set (0.00 sec)

mysql> insert into users(name) values ("Nitin");
Query OK, 1 row affected (0.31 sec)

mysql> select * from users
    -> ;
+-------+
| name  |
+-------+
| Atif  |
| Nitin |
+-------+
2 rows in set (0.00 sec)


mysql> desc users;
+-------+------+------+-----+---------+-------+
| Field | Type | Null | Key | Default | Extra |
+-------+------+------+-----+---------+-------+
| name  | text | YES  |     | NULL    |       |
+-------+------+------+-----+---------+-------+
1 row in set (0.00 sec)

mysql> drop table users;
Query OK, 0 rows affected (0.38 sec)

mysql> show tables;
Empty set (0.00 sec)

mysql> create table users(id int ,name text);
Query OK, 0 rows affected (0.71 sec)

mysql> desc tables;
ERROR 1146 (42S02): Table "tutorial2.tables' doesn't exist ;"
mysql> desc users;
+-------+---------+------+-----+---------+-------+
| Field | Type    | Null | Key | Default | Extra |
+-------+---------+------+-----+---------+-------+
| id    | int(11) | YES  |     | NULL    |       |
| name  | text    | YES  |     | NULL    |       |
+-------+---------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> insert into users(id,name) values(1,"Atif");
Query OK, 1 row affected (0.33 sec)

mysql> select * from users;
+------+------+
| id   | name |
+------+------+
|    1 | Atif |
+------+------+
1 row in set (0.00 sec)

mysql> insert into users(id,name) values(2,"Vicky");
Query OK, 1 row affected (0.12 sec)

mysql> select * from users;
+------+-------+
| id   | name  |
+------+-------+
|    1 | Atif  |
|    2 | Vicky |
+------+-------+
2 rows in set (0.00 sec)

