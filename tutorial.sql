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


mysql> desc users;
+-------+---------+------+-----+---------+-------+
| Field | Type    | Null | Key | Default | Extra |
+-------+---------+------+-----+---------+-------+
| id    | int(11) | YES  |     | NULL    |       |
| name  | text    | YES  |     | NULL    |       |
+-------+---------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> insert into users(id,name) values(3,null);
Query OK, 1 row affected (0.11 sec)

mysql> select * from users;
+------+-------+
| id   | name  |
+------+-------+
|    1 | Atif  |
|    2 | Vicky |
|    3 | NULL  |
+------+-------+
3 rows in set (0.00 sec)

mysql> insert into users(id,name) values(null,null);
Query OK, 1 row affected (0.08 sec)

mysql> select * from users;
+------+-------+
| id   | name  |
+------+-------+
|    1 | Atif  |
|    2 | Vicky |
|    3 | NULL  |
| NULL | NULL  |
+------+-------+
4 rows in set (0.00 sec)

mysql> insert into users(id) values(3);
Query OK, 1 row affected (0.09 sec)

mysql> select * from users;
+------+-------+
| id   | name  |
+------+-------+
|    1 | Atif  |
|    2 | Vicky |
|    3 | NULL  |
| NULL | NULL  |
|    3 | NULL  |
+------+-------+
5 rows in set (0.04 sec)

mysql> drop users;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'users' at line 1
mysql> drop table users;
Query OK, 0 rows affected (0.30 sec)

mysql> desc tables;
ERROR 1146 (42S02): Table 'tutorial2.tables' doesn't exist
mysql> show tables;
Empty set (0.00 sec)

mysql> create table users (id int not null, username text not null);
Query OK, 0 rows affected (0.52 sec)

mysql> desc users;
+----------+---------+------+-----+---------+-------+
| Field    | Type    | Null | Key | Default | Extra |
+----------+---------+------+-----+---------+-------+
| id       | int(11) | NO   |     | NULL    |       |
| username | text    | NO   |     | NULL    |       |
+----------+---------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> insert into users(id) values(3);
ERROR 1364 (HY000): Field 'username' doesn't have a default value
mysql> insert into users(id,name) values(null,null);
ERROR 1054 (42S22): Unknown column 'name' in 'field list'
mysql> insert into users(id,username) values(null,null);
ERROR 1048 (23000): Column 'id' cannot be null
mysql> insert into users(id) values(9);
ERROR 1364 (HY000): Field "username' doesn't have a default value"
mysql> select * from users;
Empty set (0.00 sec)

mysql> insert into users(username) values("new");
ERROR 1364 (HY000): Field 'id' doesn't have a default value
mysql> select * from users;
Empty set (0.00 sec)

mysql>  '





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
6 rows in set (0.08 sec)

mysql> use tutorial2
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> use tutorial2;
Database changed
mysql> show tables ;
+---------------------+
| Tables_in_tutorial2 |
+---------------------+
| users               |
+---------------------+
1 row in set (0.00 sec)

mysql> ## Storage engines#######
mysql> show engines ;
+--------------------+---------+----------------------------------------------------------------+--------------+------+------------+
| Engine             | Support | Comment                                                        | Transactions | XA   | Savepoints |
+--------------------+---------+----------------------------------------------------------------+--------------+------+------------+
| InnoDB             | DEFAULT | Supports transactions, row-level locking, and foreign keys     | YES          | YES  | YES        |
| MRG_MYISAM         | YES     | Collection of identical MyISAM tables                          | NO           | NO   | NO         |
| MEMORY             | YES     | Hash based, stored in memory, useful for temporary tables      | NO           | NO   | NO         |
| BLACKHOLE          | YES     | /dev/null storage engine (anything you write to it disappears) | NO           | NO   | NO         |
| MyISAM             | YES     | MyISAM storage engine                                          | NO           | NO   | NO         |
| CSV                | YES     | CSV storage engine                                             | NO           | NO   | NO         |
| ARCHIVE            | YES     | Archive storage engine                                         | NO           | NO   | NO         |
| PERFORMANCE_SCHEMA | YES     | Performance Schema                                             | NO           | NO   | NO         |
| FEDERATED          | NO      | Federated MySQL storage engine                                 | NULL         | NULL | NULL       |
+--------------------+---------+----------------------------------------------------------------+--------------+------+------------+
9 rows in set (0.00 sec)

mysql> show table status ;
+-------+--------+---------+------------+------+----------------+-------------+-----------------+--------------+-----------+----------------+---------------------+-------------+------------+-------------------+----------+----------------+---------+
| Name  | Engine | Version | Row_format | Rows | Avg_row_length | Data_length | Max_data_length | Index_length | Data_free | Auto_increment | Create_time         | Update_time | Check_time | Collation         | Checksum | Create_options | Comment |
+-------+--------+---------+------------+------+----------------+-------------+-----------------+--------------+-----------+----------------+---------------------+-------------+------------+-------------------+----------+----------------+---------+
| users | InnoDB |      10 | Dynamic    |    0 |              0 |       16384 |               0 |            0 |         0 |           NULL | 2018-04-25 19:59:09 | NULL        | NULL       | latin1_swedish_ci |     NULL |                |         |
+-------+--------+---------+------------+------+----------------+-------------+-----------------+--------------+-----------+----------------+---------------------+-------------+------------+-------------------+----------+----------------+---------+
1 row in set (0.00 sec)

mysql> create table test(id int) engine =MYISAM ;
Query OK, 0 rows affected (0.07 sec)

mysql> show table statues;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'statues' at line 1
mysql> show table status;
+-------+--------+---------+------------+------+----------------+-------------+------------------+--------------+-----------+----------------+---------------------+---------------------+------------+-------------------+----------+----------------+---------+
| Name  | Engine | Version | Row_format | Rows | Avg_row_length | Data_length | Max_data_length  | Index_length | Data_free | Auto_increment | Create_time         | Update_time         | Check_time | Collation         | Checksum | Create_options | Comment |
+-------+--------+---------+------------+------+----------------+-------------+------------------+--------------+-----------+----------------+---------------------+---------------------+------------+-------------------+----------+----------------+---------+
| test  | MyISAM |      10 | Fixed      |    0 |              0 |           0 | 1970324836974591 |         1024 |         0 |           NULL | 2018-04-25 23:47:34 | 2018-04-25 23:47:34 | NULL       | latin1_swedish_ci |     NULL |                |         |
| users | InnoDB |      10 | Dynamic    |    0 |              0 |       16384 |                0 |            0 |         0 |           NULL | 2018-04-25 19:59:09 | NULL                | NULL       | latin1_swedish_ci |     NULL |                |         |
+-------+--------+---------+------------+------+----------------+-------------+------------------+--------------+-----------+----------------+---------------------+---------------------+------------+-------------------+----------+----------------+---------+
2 rows in set (0.00 sec)

mysql> drop table test;
Query OK, 0 rows affected (0.00 sec)

mysql> set default_storage_engine=MYISUM;
ERROR 1286 (42000): Unknown storage engine 'MYISUM'
mysql> set default_storage_engine=MYISAM;
Query OK, 0 rows affected (0.00 sec)

mysql> show tables;
+---------------------+
| Tables_in_tutorial2 |
+---------------------+
| users               |
+---------------------+
1 row in set (0.00 sec)

mysql> show tables status;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'status' at line 1
mysql> show table status;
+-------+--------+---------+------------+------+----------------+-------------+-----------------+--------------+-----------+----------------+---------------------+-------------+------------+-------------------+----------+----------------+---------+
| Name  | Engine | Version | Row_format | Rows | Avg_row_length | Data_length | Max_data_length | Index_length | Data_free | Auto_increment | Create_time         | Update_time | Check_time | Collation         | Checksum | Create_options | Comment |
+-------+--------+---------+------------+------+----------------+-------------+-----------------+--------------+-----------+----------------+---------------------+-------------+------------+-------------------+----------+----------------+---------+
| users | InnoDB |      10 | Dynamic    |    0 |              0 |       16384 |               0 |            0 |         0 |           NULL | 2018-04-25 19:59:09 | NULL        | NULL       | latin1_swedish_ci |     NULL |                |         |
+-------+--------+---------+------------+------+----------------+-------------+-----------------+--------------+-----------+----------------+---------------------+-------------+------------+-------------------+----------+----------------+---------+
1 row in set (0.00 sec)

mysql> show engines;
+--------------------+---------+----------------------------------------------------------------+--------------+------+------------+
| Engine             | Support | Comment                                                        | Transactions | XA   | Savepoints |
+--------------------+---------+----------------------------------------------------------------+--------------+------+------------+
| InnoDB             | YES     | Supports transactions, row-level locking, and foreign keys     | YES          | YES  | YES        |
| MRG_MYISAM         | YES     | Collection of identical MyISAM tables                          | NO           | NO   | NO         |
| MEMORY             | YES     | Hash based, stored in memory, useful for temporary tables      | NO           | NO   | NO         |
| BLACKHOLE          | YES     | /dev/null storage engine (anything you write to it disappears) | NO           | NO   | NO         |
| MyISAM             | DEFAULT | MyISAM storage engine                                          | NO           | NO   | NO         |
| CSV                | YES     | CSV storage engine                                             | NO           | NO   | NO         |
| ARCHIVE            | YES     | Archive storage engine                                         | NO           | NO   | NO         |
| PERFORMANCE_SCHEMA | YES     | Performance Schema                                             | NO           | NO   | NO         |
| FEDERATED          | NO      | Federated MySQL storage engine                                 | NULL         | NULL | NULL       |
+--------------------+---------+----------------------------------------------------------------+--------------+------+------------+
9 rows in set (0.00 sec)

mysql> create table test (id,int);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'int)' at line 1
mysql> create table test (id int);
Query OK, 0 rows affected (0.13 sec)

mysql> 
mysql> show table status;
+-------+--------+---------+------------+------+----------------+-------------+------------------+--------------+-----------+----------------+---------------------+---------------------+------------+-------------------+----------+----------------+---------+
| Name  | Engine | Version | Row_format | Rows | Avg_row_length | Data_length | Max_data_length  | Index_length | Data_free | Auto_increment | Create_time         | Update_time         | Check_time | Collation         | Checksum | Create_options | Comment |
+-------+--------+---------+------------+------+----------------+-------------+------------------+--------------+-----------+----------------+---------------------+---------------------+------------+-------------------+----------+----------------+---------+
| test  | MyISAM |      10 | Fixed      |    0 |              0 |           0 | 1970324836974591 |         1024 |         0 |           NULL | 2018-04-25 23:51:06 | 2018-04-25 23:51:06 | NULL       | latin1_swedish_ci |     NULL |                |         |
| users | InnoDB |      10 | Dynamic    |    0 |              0 |       16384 |                0 |            0 |         0 |           NULL | 2018-04-25 19:59:09 | NULL                | NULL       | latin1_swedish_ci |     NULL |                |         |
+-------+--------+---------+------------+------+----------------+-------------+------------------+--------------+-----------+----------------+---------------------+---------------------+------------+-------------------+----------+----------------+---------+
2 rows in set (0.00 sec)

mysql> set default_storage_engine=InnoDB;
Query OK, 0 rows affected (0.00 sec)

mysql> show engines;
+--------------------+---------+----------------------------------------------------------------+--------------+------+------------+
| Engine             | Support | Comment                                                        | Transactions | XA   | Savepoints |
+--------------------+---------+----------------------------------------------------------------+--------------+------+------------+
| InnoDB             | DEFAULT | Supports transactions, row-level locking, and foreign keys     | YES          | YES  | YES        |
| MRG_MYISAM         | YES     | Collection of identical MyISAM tables                          | NO           | NO   | NO         |
| MEMORY             | YES     | Hash based, stored in memory, useful for temporary tables      | NO           | NO   | NO         |
| BLACKHOLE          | YES     | /dev/null storage engine (anything you write to it disappears) | NO           | NO   | NO         |
| MyISAM             | YES     | MyISAM storage engine                                          | NO           | NO   | NO         |
| CSV                | YES     | CSV storage engine                                             | NO           | NO   | NO         |
| ARCHIVE            | YES     | Archive storage engine                                         | NO           | NO   | NO         |
| PERFORMANCE_SCHEMA | YES     | Performance Schema                                             | NO           | NO   | NO         |
| FEDERATED          | NO      | Federated MySQL storage engine                                 | NULL         | NULL | NULL       |
+--------------------+---------+----------------------------------------------------------------+--------------+------+------------+
9 rows in set (0.00 sec)

mysql> 


mysql> ### Primary Keys ####
mysql> drop table users;
cQuery OK, 0 rows affected (1.06 sec)

mysql> create table users (id int primary key,name text,email text);
Query OK, 0 rows affected (0.60 sec)

mysql> desc users;
+-------+---------+------+-----+---------+-------+
| Field | Type    | Null | Key | Default | Extra |
+-------+---------+------+-----+---------+-------+
| id    | int(11) | NO   | PRI | NULL    |       |
| name  | text    | YES  |     | NULL    |       |
| email | text    | YES  |     | NULL    |       |
+-------+---------+------+-----+---------+-------+
3 rows in set (0.08 sec)

mysql> ## primary key can''t be null by default;
mysql> insert into users (id,name,email) values(0,'Atif','atif@me.com');
Query OK, 1 row affected (0.15 sec)

mysql> insert into users (id,name,email) values(1,'vicky','vicky@me.com');
Query OK, 1 row affected (0.07 sec)

mysql> select * from users;
+----+-------+--------------+
| id | name  | email        |
+----+-------+--------------+
|  0 | Atif  | atif@me.com  |
|  1 | vicky | vicky@me.com |
+----+-------+--------------+
2 rows in set (0.00 sec)

mysql> insert into users (id,name,email) values(0,'new','atif@me.com');
ERROR 1062 (23000): Duplicate entry '0' for key 'PRIMARY'
mysql> insert into users (id,name,email) values(null,'new','atif@me.com');
ERROR 1048 (23000): Column 'id' cannot be null
mysql> 


mysql> ####
mysql> ####
mysql> ###
mysql> ### Auto incrementing primary keys ####
mysql> drop users;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'users' at line 1
mysql> create table users (id int primary key auto_increment,name text);
ERROR 1050 (42S01): Table 'users' already exists
mysql> show tables;
+---------------------+
| Tables_in_tutorial2 |
+---------------------+
| test                |
| users               |
+---------------------+
2 rows in set (0.01 sec)

mysql> drop table users;
Query OK, 0 rows affected (0.30 sec)

mysql> create table users (id int primary key auto_increment,name text);
Query OK, 0 rows affected (0.48 sec)

mysql> desc users;
+-------+---------+------+-----+---------+----------------+
| Field | Type    | Null | Key | Default | Extra          |
+-------+---------+------+-----+---------+----------------+
| id    | int(11) | NO   | PRI | NULL    | auto_increment |
| name  | text    | YES  |     | NULL    |                |
+-------+---------+------+-----+---------+----------------+
2 rows in set (0.06 sec)

mysql> insert into users(id,name) values('Atif');
ERROR 1136 (21S01): Column count doesn''t match value count at row 1
mysql> insert into users(name) values('Atif');
Query OK, 1 row affected (0.11 sec)

mysql> select * from users;
+----+------+
| id | name |
+----+------+
|  1 | Atif |
+----+------+
1 row in set (0.00 sec)

mysql> insert into users(name) values('Asif');
Query OK, 1 row affected (0.16 sec)

mysql> select * from users;
+----+------+
| id | name |
+----+------+
|  1 | Atif |
|  2 | Asif |
+----+------+
2 rows in set (0.00 sec)

mysql> insert into users(id,name) values(4,'KAsif');
Query OK, 1 row affected (0.07 sec)

mysql> select * from users;
+----+-------+
| id | name  |
+----+-------+
|  1 | Atif  |
|  2 | Asif  |
|  4 | KAsif |
+----+-------+
3 rows in set (0.00 sec)

mysql> insert into users(name) values('Sania');
Query OK, 1 row affected (0.07 sec)

mysql> select * from users;
+----+-------+
| id | name  |
+----+-------+
|  1 | Atif  |
|  2 | Asif  |
|  4 | KAsif |
|  5 | Sania |
+----+-------+
4 rows in set (0.00 sec)

mysql> insert into users(id,name) values(0,'User8');
Query OK, 1 row affected (0.12 sec)

mysql> select * from users;
+----+-------+
| id | name  |
+----+-------+
|  1 | Atif  |
|  2 | Asif  |
|  4 | KAsif |
|  5 | Sania |
|  6 | User8 |
+----+-------+
5 rows in set (0.00 sec)

mysql> ## it does not take 0 and increments the used id and add that to the increment id ; 
mysql> ##### Narowing down select statements
mysql> 
mysql> select * from users;
+----+-------+
| id | name  |
+----+-------+
|  1 | Atif  |
|  2 | Asif  |
|  4 | KAsif |
|  5 | Sania |
|  6 | User8 |
+----+-------+
5 rows in set (0.00 sec)

mysql> select * from users where id =1;
+----+------+
| id | name |
+----+------+
|  1 | Atif |
+----+------+
1 row in set (0.03 sec)

mysql> select * from users where name='Sania';
+----+-------+
| id | name  |
+----+-------+
|  5 | Sania |
+----+-------+
1 row in set (0.01 sec)

mysql> select id from users where name='Sania';
+----+
| id |
+----+
|  5 |
+----+
1 row in set (0.00 sec)

mysql> select name,id from users where name='Sania';
+-------+----+
| name  | id |
+-------+----+
| Sania |  5 |
+-------+----+
1 row in set (0.00 sec)

mysql> select id,name from users where name='Sania';
+----+-------+
| id | name  |
+----+-------+
|  5 | Sania |
+----+-------+
1 row in set (0.00 sec)

mysql> ### narrowing del ###
mysql> select * from users;
+----+-------+
| id | name  |
+----+-------+
|  1 | Atif  |
|  2 | Asif  |
|  4 | KAsif |
|  5 | Sania |
|  6 | User8 |
+----+-------+
5 rows in set (0.00 sec)

mysql> delete from users where id =6;
Query OK, 1 row affected (0.09 sec)

mysql> select * from users;
+----+-------+
| id | name  |
+----+-------+
|  1 | Atif  |
|  2 | Asif  |
|  4 | KAsif |
|  5 | Sania |
+----+-------+
4 rows in set (0.00 sec)

mysql> delete from users where name='KAsif';
Query OK, 1 row affected (0.09 sec)

mysql> select * from users;
+----+-------+
| id | name  |
+----+-------+
|  1 | Atif  |
|  2 | Asif  |
|  5 | Sania |
+----+-------+
3 rows in set (0.00 sec)

mysql> insert into users(name) values('vicky');
Query OK, 1 row affected (0.03 sec)

mysql> insert into users(name) values('vicky');
Query OK, 1 row affected (0.11 sec)

mysql> insert into users(name) values('vicky');
Query OK, 1 row affected (0.05 sec)

mysql> delete from users where name='vicky';
Query OK, 3 rows affected (0.11 sec)

mysql> insert into users(name) values('vicky');
Query OK, 1 row affected (0.03 sec)

mysql> insert into users(name) values('vicky');
Query OK, 1 row affected (0.08 sec)

mysql> insert into users(name) values('vicky');
Query OK, 1 row affected (0.07 sec)

mysql> select * from users;
+----+-------+
| id | name  |
+----+-------+
|  1 | Atif  |
|  2 | Asif  |
|  5 | Sania |
| 10 | vicky |
| 11 | vicky |
| 12 | vicky |
+----+-------+
6 rows in set (0.00 sec)

mysql> delete from users where name='vicky';
Query OK, 3 rows affected (0.08 sec)

mysql> select * from users;
+----+-------+
| id | name  |
+----+-------+
|  1 | Atif  |
|  2 | Asif  |
|  5 | Sania |
+----+-------+
3 rows in set (0.00 sec)

mysql>  



------------lecture 17----
mysql> use tutorial1;
Database changed
mysql> show tables;
Empty set (0.00 sec)

mysql> create table users (id int primary key auto_increment, name text, age int);
Query OK, 0 rows affected (0.20 sec)

mysql> desc users;
+-------+---------+------+-----+---------+----------------+
| Field | Type    | Null | Key | Default | Extra          |
+-------+---------+------+-----+---------+----------------+
| id    | int(11) | NO   | PRI | NULL    | auto_increment |
| name  | text    | YES  |     | NULL    |                |
| age   | int(11) | YES  |     | NULL    |                |
+-------+---------+------+-----+---------+----------------+
3 rows in set (0.04 sec)

mysql> insert into users(name ,age) values('Bob',46);
Query OK, 1 row affected (0.04 sec)

mysql> select * from users;
+----+------+------+
| id | name | age  |
+----+------+------+
|  1 | Bob  |   46 |
+----+------+------+
1 row in set (0.02 sec)

mysql> #### comparision operators ####
mysql> # -----------------------------#
mysql> select count(*) from users;
+----------+
| count(*) |
+----------+
|        1 |
+----------+
1 row in set (0.04 sec)

mysql> insert into users(name ,age) values('Atif',22);
Query OK, 1 row affected (0.02 sec)

mysql> insert into users(name ,age) values('Rajesh',25);
Query OK, 1 row affected (0.01 sec)

mysql> insert into users(name ,age) values('Negi',21);
Query OK, 1 row affected (0.04 sec)

mysql> select * from users;
+----+--------+------+
| id | name   | age  |
+----+--------+------+
|  1 | Bob    |   46 |
|  2 | Atif   |   22 |
|  3 | Rajesh |   25 |
|  4 | Negi   |   21 |
+----+--------+------+
4 rows in set (0.00 sec)

mysql> select name from users where age =22;
+------+
| name |
+------+
| Atif |
+------+
1 row in set (0.03 sec)

mysql> select name from users where age <30;
+--------+
| name   |
+--------+
| Atif   |
| Rajesh |
| Negi   |
+--------+
3 rows in set (0.00 sec)

mysql> select name from users where age >30;
+------+
| name |
+------+
| Bob  |
+------+
1 row in set (0.00 sec)

mysql> select name from users where age >=46;
+------+
| name |
+------+
| Bob  |
+------+
1 row in set (0.00 sec)

mysql> select name from users where age >46;
Empty set (0.00 sec)

mysql> select name from users where age !46;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '!46' at line 1
mysql> select name from users where age !=46;
+--------+
| name   |
+--------+
| Atif   |
| Rajesh |
| Negi   |
+--------+
3 rows in set (0.00 sec)

mysql> select name from users where name ='Bob';
+------+
| name |
+------+
| Bob  |
+------+
1 row in set (0.00 sec)

mysql> select name from users where name !='Bob';
+--------+
| name   |
+--------+
| Atif   |
| Rajesh |
| Negi   |
+--------+
3 rows in set (0.00 sec)

mysql> select name from users where name <>'Bob';
+--------+
| name   |
+--------+
| Atif   |
| Rajesh |
| Negi   |
+--------+
3 rows in set (0.00 sec)

mysql> select name from users where age <>46;
+--------+
| name   |
+--------+
| Atif   |
| Rajesh |
| Negi   |
+--------+
3 rows in set (0.00 sec)

mysql> select name from users where name is null;
Empty set (0.00 sec)

mysql> select name from users where name is  not null;
+--------+
| name   |
+--------+
| Bob    |
| Atif   |
| Rajesh |
| Negi   |
+--------+
4 rows in set (0.00 sec)

mysql> select name from users where name like'%esh';
+--------+
| name   |
+--------+
| Rajesh |
+--------+
1 row in set (0.00 sec)

mysql> select name from users where name like'%';
+--------+
| name   |
+--------+
| Bob    |
| Atif   |
| Rajesh |
| Negi   |
+--------+
4 rows in set (0.00 sec)

mysql> select name from users where name like'%ob';
+------+
| name |
+------+
| Bob  |
+------+
1 row in set (0.00 sec)

mysql> select name from users where name like'%o%';
+------+
| name |
+------+
| Bob  |
+------+
1 row in set (0.00 sec)

mysql> select name from users where name like'%i%';
+------+
| name |
+------+
| Atif |
| Negi |
+------+
2 rows in set (0.00 sec)

mysql> select name from users where name not like'%i%';
+--------+
| name   |
+--------+
| Bob    |
| Rajesh |
+--------+
2 rows in set (0.00 sec)

mysql>


mysql> ###### 18 . Logical operators ###
mysql> select * from users where age <30;
+----+--------+------+
| id | name   | age  |
+----+--------+------+
|  2 | Atif   |   22 |
|  3 | Rajesh |   25 |
|  4 | Negi   |   21 |
+----+--------+------+
3 rows in set (0.00 sec)

mysql> select * from users where age >30 and name='Bob';
+----+------+------+
| id | name | age  |
+----+------+------+
|  1 | Bob  |   46 |
+----+------+------+
1 row in set (0.01 sec)

mysql> select * from users where age <30 and age >21;
+----+--------+------+
| id | name   | age  |
+----+--------+------+
|  2 | Atif   |   22 |
|  3 | Rajesh |   25 |
+----+--------+------+
2 rows in set (0.00 sec)

mysql> select * from users where age <30 and name like '%i%';
+----+------+------+
| id | name | age  |
+----+------+------+
|  2 | Atif |   22 |
|  4 | Negi |   21 |
+----+------+------+
2 rows in set (0.00 sec)

mysql> select * from users where !(age <30) and name like '%i%';
Empty set (0.01 sec)

mysql> select * from users where not(age <30);
+----+------+------+
| id | name | age  |
+----+------+------+
|  1 | Bob  |   46 |
+----+------+------+
1 row in set (0.00 sec)

mysql> select * from users where (age>45);
+----+------+------+
| id | name | age  |
+----+------+------+
|  1 | Bob  |   46 |
+----+------+------+
1 row in set (0.00 sec)

mysql> select * from users where not (age>45);
+----+--------+------+
| id | name   | age  |
+----+--------+------+
|  2 | Atif   |   22 |
|  3 | Rajesh |   25 |
|  4 | Negi   |   21 |
+----+--------+------+
3 rows in set (0.00 sec)

mysql> ### 19. Exclusive or ###
mysql>
mysql> select * from users;
+----+--------+------+
| id | name   | age  |
+----+--------+------+
|  1 | Bob    |   46 |
|  2 | Atif   |   22 |
|  3 | Rajesh |   25 |
|  4 | Negi   |   21 |
+----+--------+------+
4 rows in set (0.00 sec)

mysql> select * froom users where age <30 or name ='Bob';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'froom users where age <30 or name ='Bob'' at line 1
mysql> select * from users where age <30 or name ='Bob';
+----+--------+------+
| id | name   | age  |
+----+--------+------+
|  1 | Bob    |   46 |
|  2 | Atif   |   22 |
|  3 | Rajesh |   25 |
|  4 | Negi   |   21 |
+----+--------+------+
4 rows in set (0.00 sec)

mysql> select * from users where age <30 xor name ='Bob';
+----+--------+------+
| id | name   | age  |
+----+--------+------+
|  1 | Bob    |   46 |
|  2 | Atif   |   22 |
|  3 | Rajesh |   25 |
|  4 | Negi   |   21 |
+----+--------+------+
4 rows in set (0.01 sec)

mysql> select * from users where age <30 xor name ='Atif';
+----+--------+------+
| id | name   | age  |
+----+--------+------+
|  3 | Rajesh |   25 |
|  4 | Negi   |   21 |
+----+--------+------+
2 rows in set (0.00 sec)

mysql> ## Xor will print where one of the statements is correct but when a result is matching both statement as correct it will skip;
mysql> insert into users(name,age) values ('Revan',20);
Query OK, 1 row affected (0.02 sec)

mysql> #### Beginning update statements ###
mysql>
mysql> #----------------------------------#
mysql> # CRUD (create ,retrieve, update , delete)
mysql> update users set name ='Bob';
Query OK, 4 rows affected (0.05 sec)
Rows matched: 5  Changed: 4  Warnings: 0

mysql> select * from users;
+----+------+------+
| id | name | age  |
+----+------+------+
|  1 | Bob  |   46 |
|  2 | Bob  |   22 |
|  3 | Bob  |   25 |
|  4 | Bob  |   21 |
|  5 | Bob  |   20 |
+----+------+------+
5 rows in set (0.00 sec)

mysql> insert into users(name,age) values ('Revan',20);
Query OK, 1 row affected (0.04 sec)

mysql> select * from users;
+----+-------+------+
| id | name  | age  |
+----+-------+------+
|  1 | Bob   |   46 |
|  2 | Bob   |   22 |
|  3 | Bob   |   25 |
|  4 | Bob   |   21 |
|  5 | Bob   |   20 |
|  6 | Revan |   20 |
+----+-------+------+
6 rows in set (0.00 sec)

mysql> update users set name ='Atif' where age = 22 ;
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from users;
+----+-------+------+
| id | name  | age  |
+----+-------+------+
|  1 | Bob   |   46 |
|  2 | Atif  |   22 |
|  3 | Bob   |   25 |
|  4 | Bob   |   21 |
|  5 | Bob   |   20 |
|  6 | Revan |   20 |
+----+-------+------+
6 rows in set (0.00 sec)

mysql> update users set name='Rajesh' where age =25;
Query OK, 1 row affected (0.04 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from users;
+----+--------+------+
| id | name   | age  |
+----+--------+------+
|  1 | Bob    |   46 |
|  2 | Atif   |   22 |
|  3 | Rajesh |   25 |
|  4 | Bob    |   21 |
|  5 | Bob    |   20 |
|  6 | Revan  |   20 |
+----+--------+------+
6 rows in set (0.00 sec)

mysql> sql_safe_updates status;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'sql_safe_updates status' at line 1
mysql> sql_safe_updates
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'sql_safe_updates' at line 1
mysql>


mysql> ### 24 . Order By #####
mysql> #---------------------#
mysql> select * from users ;
+----+--------+------+
| id | name   | age  |
+----+--------+------+
|  1 | Bob    |   46 |
|  2 | Atif   |   22 |
|  3 | Rajesh |   25 |
|  4 | Bob    |   21 |
|  5 | Bob    |   20 |
|  6 | Revan  |   20 |
+----+--------+------+
6 rows in set (0.00 sec)

mysql> select * from users order by name;
+----+--------+------+
| id | name   | age  |
+----+--------+------+
|  2 | Atif   |   22 |
|  1 | Bob    |   46 |
|  4 | Bob    |   21 |
|  5 | Bob    |   20 |
|  3 | Rajesh |   25 |
|  6 | Revan  |   20 |
+----+--------+------+
6 rows in set (0.01 sec)

mysql> select * from users where id=3 order by name;
+----+--------+------+
| id | name   | age  |
+----+--------+------+
|  3 | Rajesh |   25 |
+----+--------+------+
1 row in set (0.00 sec)

mysql> select * from users where id<6 order by name;
+----+--------+------+
| id | name   | age  |
+----+--------+------+
|  2 | Atif   |   22 |
|  1 | Bob    |   46 |
|  4 | Bob    |   21 |
|  5 | Bob    |   20 |
|  3 | Rajesh |   25 |
+----+--------+------+
5 rows in set (0.00 sec)

mysql> select * from users where id<6 order by name asc;
+----+--------+------+
| id | name   | age  |
+----+--------+------+
|  2 | Atif   |   22 |
|  1 | Bob    |   46 |
|  4 | Bob    |   21 |
|  5 | Bob    |   20 |
|  3 | Rajesh |   25 |
+----+--------+------+
5 rows in set (0.00 sec)

mysql> select * from users where id<6 order by name desc;
+----+--------+------+
| id | name   | age  |
+----+--------+------+
|  3 | Rajesh |   25 |
|  1 | Bob    |   46 |
|  4 | Bob    |   21 |
|  5 | Bob    |   20 |
|  2 | Atif   |   22 |
+----+--------+------+
5 rows in set (0.00 sec)

mysql> select * from users where id<6 order by id desc;
+----+--------+------+
| id | name   | age  |
+----+--------+------+
|  5 | Bob    |   20 |
|  4 | Bob    |   21 |
|  3 | Rajesh |   25 |
|  2 | Atif   |   22 |
|  1 | Bob    |   46 |
+----+--------+------+
5 rows in set (0.00 sec)

mysql> select * from users where id<6 order by age desc;
+----+--------+------+
| id | name   | age  |
+----+--------+------+
|  1 | Bob    |   46 |
|  3 | Rajesh |   25 |
|  2 | Atif   |   22 |
|  4 | Bob    |   21 |
|  5 | Bob    |   20 |
+----+--------+------+
5 rows in set (0.00 sec)

mysql> select * from users where id<6 order by age asc;
+----+--------+------+
| id | name   | age  |
+----+--------+------+
|  5 | Bob    |   20 |
|  4 | Bob    |   21 |
|  2 | Atif   |   22 |
|  3 | Rajesh |   25 |
|  1 | Bob    |   46 |
+----+--------+------+
5 rows in set (0.00 sec)

mysql> select * from users where id<6 order by age asc name desc;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'name desc' at line 1
mysql> select * from users where id<6 order by age asc, name desc;
+----+--------+------+
| id | name   | age  |
+----+--------+------+
|  5 | Bob    |   20 |
|  4 | Bob    |   21 |
|  2 | Atif   |   22 |
|  3 | Rajesh |   25 |
|  1 | Bob    |   46 |
+----+--------+------+
5 rows in set (0.01 sec)

mysql> select * from users where id<6 order by age , name desc;
+----+--------+------+
| id | name   | age  |
+----+--------+------+
|  5 | Bob    |   20 |
|  4 | Bob    |   21 |
|  2 | Atif   |   22 |
|  3 | Rajesh |   25 |
|  1 | Bob    |   46 |
+----+--------+------+
5 rows in set (0.00 sec)

mysql> select * from users where id<6 order by age , name ,id ;
+----+--------+------+
| id | name   | age  |
+----+--------+------+
|  5 | Bob    |   20 |
|  4 | Bob    |   21 |
|  2 | Atif   |   22 |
|  3 | Rajesh |   25 |
|  1 | Bob    |   46 |
+----+--------+------+
5 rows in set (0.00 sec)

mysql>


