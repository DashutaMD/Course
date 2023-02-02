mysql> create database QAcourse;

mysql> use QAcourse;

mysql> create table employees
    -> (id serial primary key,
    -> employee_name Varchar(50) not null);

mysql> insert into employees (employee_name) values
    -> ('Reggie Batey'),
    -> ('Clara Poore'),
    -> ('Tammy Galindo'),
    -> ('Rickey Jones'),
    -> ('Jill Anspach'),
    -> ('Lacy Racicot'),
    -> ('David Macias'),
    -> ('Jessica Manns'),
    -> ('Amber Holcomb'),
    -> ('Betty Wells'),
    -> ('Miguel Fletcher'),
    -> ('Joseph Hodges'),
    -> ('Ida Bohannon'),
    -> ('Cindy Merrifield'),
    -> ('Mary Dowell'),
    -> ('Marie Thomas'),
    -> ('Donald Fierro'),
    -> ('Anna Wick'),
    -> ('Robert Harian'),
    -> ('Michael Mark'),
    -> ('Lucius Patterson'),
    -> ('Lorna Rose'),
    -> ('Karen Santiago'),
    -> ('Peggy Beachler'),
    -> ('Chester Baird'),
    -> ('Ronda Colley'),
    -> ('Robert Chapman'),
    -> ('Sandra Hibbard'),
    -> ('Steven Pagano'),
    -> ('Ramona Russell'),
    -> ('Ryan Morgan'),
    -> ('Shannon Daugherty'),
    -> ('Charlene Little'),
    -> ('Steve Lewandowski'),
    -> ('Donnie Shoemaker'),
    -> ('Veronica Treto'),
    -> ('Jonathon Belanger'),
    -> ('William Hughes'),
    -> ('Courtney Alston'),
    -> ('Isaac Walters'),
    -> ('Leon Ashcraft'),
    -> ('Daniel Patterson'),
    -> ('Randall Phillips'),
    -> ('James Williams'),
    -> ('Nancy Searles'),
    -> ('Edward Hilliard'),
    -> ('Joel Vandevelde'),
    -> ('Nancy Bravo'),
    -> ('Jesse Clark'),
    -> ('Gregory Magelssen'),
    -> ('Ella Cortez'),
    -> ('Michael Diaz'),
    -> ('Robert Walsh'),
    -> ('Valorie Seibert'),
    -> ('Yoshiko Miller'),
    -> ('Timothy Johnson'),
    -> ('Lita Webb'),
    -> ('Lindsay Barrera'),
    -> ('Jacqulyn Matthews'),
    -> ('Lee Rehart'),
    -> ('Fred Spencer'),
    -> ('Melinda Webster'),
    -> ('Shawn Pretti'),
    -> ('Betty Schaefer'),
    -> ('Barbara Teets'),
    -> ('Patricia Tomas'),
    -> ('Mattie Kelley'),
    -> ('Mary Yates'),
    -> ('Andrea Croes'),
    -> ('Amanda Riley');


mysql> create table salary
    -> (id serial primary key,
    -> monthly_salary int not null);

mysql> insert into salary (monthly_salary) values
    -> (1000),
    -> (1100),
    -> (1200),
    -> (1300),
    -> (1400),
    -> (1500),
    -> (1600),
    -> (1700),
    -> (1800),
    -> (1900),
    -> (2000),
    -> (2100),
    -> (2200),
    -> (2300),
    -> (2400),
    -> (2500);


mysql> create table employee_salary
    -> (id serial primary key,
    -> employee_id int not null,
    -> salary_id int not null);


mysql> select * from employee_salary;
+----+-------------+-----------+
| id | employee_id | salary_id |
+----+-------------+-----------+
|  1 |           3 |         7 |
|  2 |           1 |         4 |
|  3 |           5 |         9 |
|  4 |          40 |        13 |
|  5 |          23 |         4 |
|  6 |          11 |         2 |
|  7 |          52 |        10 |
|  8 |          15 |        13 |
|  9 |          26 |         4 |
| 10 |          16 |         1 |
| 11 |          33 |         7 |
| 12 |          54 |         8 |
| 13 |          60 |        11 |
| 14 |          63 |        10 |
| 15 |          25 |         3 |
| 16 |          26 |         4 |
| 17 |          27 |         5 |
| 18 |          28 |         6 |
| 19 |          29 |         7 |
| 20 |          81 |         8 |
| 21 |          82 |         9 |
| 22 |          90 |        10 |
| 23 |          95 |        11 |
| 24 |          96 |        12 |
| 25 |          97 |        13 |
| 26 |          98 |        14 |
| 27 |          99 |        15 |
| 28 |         100 |         1 |
| 29 |         101 |         2 |
| 30 |          66 |         3 |
| 31 |          67 |         4 |
| 32 |          68 |         5 |
| 33 |          69 |         6 |
| 34 |          70 |         7 |
| 35 |           1 |         8 |
| 36 |           2 |         9 |
| 37 |           2 |        10 |
| 38 |           3 |        11 |
| 39 |           4 |        12 |
| 40 |           5 |        13 |
+----+-------------+-----------+


mysql> create table roles
    -> (id serial primary key,
    -> role_name int not null unique);


mysql> ALTER TABLE roles MODIFY COLUMN role_name varchar(30);


mysql> desc roles;
+-----------+-----------------+------+-----+---------+----------------+
| Field     | Type            | Null | Key | Default | Extra          |
+-----------+-----------------+------+-----+---------+----------------+
| id        | bigint unsigned | NO   | PRI | NULL    | auto_increment |
| role_name | varchar(30)     | YES  | UNI | NULL    |                |
+-----------+-----------------+------+-----+---------+----------------+


mysql> insert into roles (role_name) values
    -> ('Junior Python developer'),
    -> ('Middle Python developer'),
    -> ('Senior Python developer'),
    -> ('Junior Java developer'),
    -> ('Middle Java developer'),
    -> ('Senior Java developer'),
    -> ('Junior JavaScript developer'),
    -> ('Middle JavaScript developer'),
    -> ('Senior JavaScript developer'),
    -> ('Junior Manual QA engineer'),
    -> ('Middle Manual QA engineer'),
    -> ('Senior Manual QA engineer'),
    -> ('Project Manager'),
    -> ('Designer'),
    -> ('HR'),
    -> ('CEO'),
    -> ('Sales manager'),
    -> ('Junior Automation QA engineer'),
    -> ('Middle Automation QA engineer'),
    -> ('Senior Automation QA engineer');


mysql> select *from roles order by id;
+----+-------------------------------+
| id | role_name                     |
+----+-------------------------------+
|  1 | Junior Python developer       |
|  2 | Middle Python developer       |
|  3 | Senior Python developer       |
|  4 | Junior Java developer         |
|  5 | Middle Java developer         |
|  6 | Senior Java developer         |
|  7 | Junior JavaScript developer   |
|  8 | Middle JavaScript developer   |
|  9 | Senior JavaScript developer   |
| 10 | Junior Manual QA engineer     |
| 11 | Middle Manual QA engineer     |
| 12 | Senior Manual QA engineer     |
| 13 | Project Manager               |
| 14 | Designer                      |
| 15 | HR                            |
| 16 | CEO                           |
| 17 | Sales manager                 |
| 18 | Junior Automation QA engineer |
| 19 | Middle Automation QA engineer |
| 20 | Senior Automation QA engineer |
+----+-------------------------------+


mysql>  create table roles_employee
    -> (id serial primary key,
    -> employee_id int not null unique,
    -> role_id int not null);


mysql> insert into roles_employee (employee_id, role_id) values
    -> (7,2),
    -> (20,4),
    -> (3,9),
    -> (5,13),
    -> (23,4),
    -> (11,2),
    -> (10,9),
    -> (22,13),
    -> (21,3),
    -> (34,4),
    -> (6,7),
    -> (66,12),
    -> (33,10),
    -> (30,15),
    -> (19,3),
    -> (18,2),
    -> (17,1),
    -> (16,20),
    -> (15,19),
    -> (14,18),
    -> (13,17),
    -> (12,16),
    -> (31,15),
    -> (35,14),
    -> (36,13),
    -> (37,12),
    -> (38,11),
    -> (39,10),
    -> (40,9),
    -> (41,8),
    -> (42,7),
    -> (43,6),
    -> (44,5),
    -> (45,4),
    -> (46,3),
    -> (47,2),
    -> (48,1),
    -> (49,20),
    -> (50,19),
    -> (51,18);
