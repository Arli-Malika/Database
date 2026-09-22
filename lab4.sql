postgres=# CREATE DATABASE lab4;
CREATE DATABASE
postgres=# \c lab4
You are now connected to database "lab4" as user "postgres".
lab4=# CREATE TABLE students (
lab4(#     student_id SERIAL PRIMARY KEY,
lab4(#     name VARCHAR(50),
lab4(#     email VARCHAR(100),
lab4(#     faculty VARCHAR(50)
lab4(# );
CREATE TABLE
lab4=# INSERT INTO students (name, email, faculty) VALUES
lab4-# ('Alymbek', 'alymbek@example.com', 'COMSEH'),
lab4-# ('Timur', 'timur@example.com', 'MED'),
lab4-# ('Beka', 'beka@example.com', 'MAT');
INSERT 0 3
lab4=# \dt
            List of tables
 Schema |   Name   | Type  |  Owner
--------+----------+-------+----------
 public | students | table | postgres
(1 row)


lab4=# \d students
                                          Table "public.students"
   Column   |          Type          | Collation | Nullable |                   Default
------------+------------------------+-----------+----------+----------------------------------------------
 student_id | integer                |           | not null | nextval('students_student_id_seq'::regclass)
 name       | character varying(50)  |           |          |
 email      | character varying(100) |           |          |
 faculty    | character varying(50)  |           |          |
Indexes:
    "students_pkey" PRIMARY KEY, btree (student_id)


lab4=# SELECT * FROM students;
 student_id |  name   |        email        | faculty
------------+---------+---------------------+---------
          1 | Alymbek | alymbek@example.com | COMSEH
          2 | Timur   | timur@example.com   | MED
          3 | Beka    | beka@example.com    | MAT
(3 rows)


lab4=# SELECT name, email FROM students;
  name   |        email
---------+---------------------
 Alymbek | alymbek@example.com
 Timur   | timur@example.com
 Beka    | beka@example.com
(3 rows)


lab4=# SELECT name, email FROM students WHERE name = 'Timur';
 name  |       email
-------+-------------------
 Timur | timur@example.com
(1 row)


lab4=# SELECT name, faculty FROM students WHERE faculty = 'MED';
 name  | faculty
-------+---------
 Timur | MED
(1 row)


lab4=# SELECT student_id, faculty FROM students;
 student_id | faculty
------------+---------
          1 | COMSEH
          2 | MED
          3 | MAT
(3 rows)


lab4=# SELECT name, email FROM students ORDER BY;
ERROR:  syntax error at or near ";"
LINE 1: SELECT name, email FROM students ORDER BY;
                                                 ^
lab4=# SELECT name, email FROM students ORDER BY name;
  name   |        email
---------+---------------------
 Alymbek | alymbek@example.com
 Beka    | beka@example.com
 Timur   | timur@example.com
(3 rows)


lab4=# SELECT name, email FROM students ORDER BY name DESC;
  name   |        email
---------+---------------------
 Timur   | timur@example.com
 Beka    | beka@example.com
 Alymbek | alymbek@example.com
(3 rows)


lab4=# SELECT name, email FROM students LIMIT 2;
  name   |        email
---------+---------------------
 Alymbek | alymbek@example.com
 Timur   | timur@example.com
(2 rows)


lab4=# SELECT name, email FROM students LIMIT 1;
  name   |        email
---------+---------------------
 Alymbek | alymbek@example.com
(1 row)


lab4=# -- This query retrieves all students from the MAT faculty.
lab4=# SELECT name, faculty FROM students WHERE faculty = 'MAT';
 name | faculty
------+---------
 Beka | MAT
(1 row)


lab4=# \q