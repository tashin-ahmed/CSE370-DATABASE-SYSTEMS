MariaDB [(none)]> CREATE DATABASE Marathon_24301401;
Query OK, 1 row affected (0.003 sec)

MariaDB [(none)]> use Marathon_24301401;
Database changed
MariaDB [Marathon_24301401]> Create TABLE runners;
ERROR 1113 (42000): A table must have at least 1 column
MariaDB [Marathon_24301401]> CREATE TABLE runners 
    -> (student_id INT PRIMARY KEY,
    -> student_name VARCHAR(50),
    -> email VARCHAR(50),
    -> distance_covered INT,
    -> time_taken_mins INT );
Query OK, 0 rows affected (0.031 sec)

MariaDB [Marathon_24301401]> INSERT INTO runners
    -> (student_id,student_name,email,distance_covered,time_taken_mins)
    -> VALUES
    -> (101,"Mikasa Ackerman","mikasa.a@g.bracu.ac.bd",5,35),
    -> (102,"Edward Elric","e.elric@iub.ac.bd",10,59),
    -> (103,"Riza Hawkeye","riza.h@ewu.ac.bd",5,38),
    -> (104,"Bruce Wayne","b.wayne@g.bracu.ac.bd",10,63),
    -> (105,"Peter Parker
    "> 
    "> \c
    "> \h
    "> ";
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 8
MariaDB [Marathon_24301401]> INSERT INTO runners 
    -> (student_id, student_name, email, distance_covered, time_taken_mins) 
    -> VALUES 
    -> (101, "Mikasa Ackerman", "mikasa.a@g.bracu.ac.bd", 5, 35),
    -> (102, "Edward Elric", "e.elric@iub.ac.bd", 10, 59),
    -> (103, "Riza Hawkeye", "riza.h@ewu.ac.bd", 5, 38),
    -> (104, "Bruce Wayne", "b.wayne@g.bracu.ac.bd", 10, 63),
    -> (105, "Peter Parker", "p.parker@iub.ac.bd", 5, 33),
    -> (106, "Alphonse Elric", "a.elric@iub.ac.bd", 10, 55),
    -> (107, "Son Goku", "son.goku@g.bracu.ac.bd", 5, 46),
    -> (108, "Gon Freecss", "gon.f@g.bracu.ac.bd", 10, 68),
    -> (109, "Tanjiro Kamado", "tanjiro.k@g.bracu.ac.bd", 5, 29),
    -> (110, "Roy Mustang", "roy.m@ewu.ac.bd", 10, 83);
Query OK, 10 rows affected (0.011 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [Marathon_24301401]> SELECT * FROM runners ;
+------------+-----------------+-------------------------+------------------+-----------------+
| student_id | student_name    | email                   | distance_covered | time_taken_mins |
+------------+-----------------+-------------------------+------------------+-----------------+
|        101 | Mikasa Ackerman | mikasa.a@g.bracu.ac.bd  |                5 |              35 |
|        102 | Edward Elric    | e.elric@iub.ac.bd       |               10 |              59 |
|        103 | Riza Hawkeye    | riza.h@ewu.ac.bd        |                5 |              38 |
|        104 | Bruce Wayne     | b.wayne@g.bracu.ac.bd   |               10 |              63 |
|        105 | Peter Parker    | p.parker@iub.ac.bd      |                5 |              33 |
|        106 | Alphonse Elric  | a.elric@iub.ac.bd       |               10 |              55 |
|        107 | Son Goku        | son.goku@g.bracu.ac.bd  |                5 |              46 |
|        108 | Gon Freecss     | gon.f@g.bracu.ac.bd     |               10 |              68 |
|        109 | Tanjiro Kamado  | tanjiro.k@g.bracu.ac.bd |                5 |              29 |
|        110 | Roy Mustang     | roy.m@ewu.ac.bd         |               10 |              83 |
+------------+-----------------+-------------------------+------------------+-----------------+
10 rows in set (0.010 sec)

MariaDB [Marathon_24301401]> SELECT * FROM runners WHERE distance_covered > 7;
+------------+----------------+-----------------------+------------------+-----------------+
| student_id | student_name   | email                 | distance_covered | time_taken_mins |
+------------+----------------+-----------------------+------------------+-----------------+
|        102 | Edward Elric   | e.elric@iub.ac.bd     |               10 |              59 |
|        104 | Bruce Wayne    | b.wayne@g.bracu.ac.bd |               10 |              63 |
|        106 | Alphonse Elric | a.elric@iub.ac.bd     |               10 |              55 |
|        108 | Gon Freecss    | gon.f@g.bracu.ac.bd   |               10 |              68 |
|        110 | Roy Mustang    | roy.m@ewu.ac.bd       |               10 |              83 |
+------------+----------------+-----------------------+------------------+-----------------+
5 rows in set (0.006 sec)

MariaDB [Marathon_24301401]> SELECT LOWER(student_name) FROM runners ORDER BY time_taken_mins DESC;
+---------------------+
| LOWER(student_name) |
+---------------------+
| roy mustang         |
| gon freecss         |
| bruce wayne         |
| edward elric        |
| alphonse elric      |
| son goku            |
| riza hawkeye        |
| mikasa ackerman     |
| peter parker        |
| tanjiro kamado      |
+---------------------+
10 rows in set (0.008 sec)

MariaDB [Marathon_24301401]> ALTER TABLE runners CHANGE COLUMN distance_covered total_distance DECIMAL(3,1);
Query OK, 10 rows affected (0.086 sec)             
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [Marathon_24301401]> SELECT * FROM runners;
+------------+-----------------+-------------------------+----------------+-----------------+
| student_id | student_name    | email                   | total_distance | time_taken_mins |
+------------+-----------------+-------------------------+----------------+-----------------+
|        101 | Mikasa Ackerman | mikasa.a@g.bracu.ac.bd  |            5.0 |              35 |
|        102 | Edward Elric    | e.elric@iub.ac.bd       |           10.0 |              59 |
|        103 | Riza Hawkeye    | riza.h@ewu.ac.bd        |            5.0 |              38 |
|        104 | Bruce Wayne     | b.wayne@g.bracu.ac.bd   |           10.0 |              63 |
|        105 | Peter Parker    | p.parker@iub.ac.bd      |            5.0 |              33 |
|        106 | Alphonse Elric  | a.elric@iub.ac.bd       |           10.0 |              55 |
|        107 | Son Goku        | son.goku@g.bracu.ac.bd  |            5.0 |              46 |
|        108 | Gon Freecss     | gon.f@g.bracu.ac.bd     |           10.0 |              68 |
|        109 | Tanjiro Kamado  | tanjiro.k@g.bracu.ac.bd |            5.0 |              29 |
|        110 | Roy Mustang     | roy.m@ewu.ac.bd         |           10.0 |              83 |
+------------+-----------------+-------------------------+----------------+-----------------+
10 rows in set (0.011 sec)

MariaDB [Marathon_24301401]> ALTER TABLE runners 
    -> ADD COLUMN kmh DECIMAL(3,1);
Query OK, 0 rows affected (0.010 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [Marathon_24301401]> SELECT * FROM runners;
+------------+-----------------+-------------------------+----------------+-----------------+------+
| student_id | student_name    | email                   | total_distance | time_taken_mins | kmh  |
+------------+-----------------+-------------------------+----------------+-----------------+------+
|        101 | Mikasa Ackerman | mikasa.a@g.bracu.ac.bd  |            5.0 |              35 | NULL |
|        102 | Edward Elric    | e.elric@iub.ac.bd       |           10.0 |              59 | NULL |
|        103 | Riza Hawkeye    | riza.h@ewu.ac.bd        |            5.0 |              38 | NULL |
|        104 | Bruce Wayne     | b.wayne@g.bracu.ac.bd   |           10.0 |              63 | NULL |
|        105 | Peter Parker    | p.parker@iub.ac.bd      |            5.0 |              33 | NULL |
|        106 | Alphonse Elric  | a.elric@iub.ac.bd       |           10.0 |              55 | NULL |
|        107 | Son Goku        | son.goku@g.bracu.ac.bd  |            5.0 |              46 | NULL |
|        108 | Gon Freecss     | gon.f@g.bracu.ac.bd     |           10.0 |              68 | NULL |
|        109 | Tanjiro Kamado  | tanjiro.k@g.bracu.ac.bd |            5.0 |              29 | NULL |
|        110 | Roy Mustang     | roy.m@ewu.ac.bd         |           10.0 |              83 | NULL |
+------------+-----------------+-------------------------+----------------+-----------------+------+
10 rows in set (0.002 sec)

MariaDB [Marathon_24301401]> UPDATE runners 
    -> SET kmh = (total_distance * 60) / time_taken_mins;
Query OK, 10 rows affected, 10 warnings (0.053 sec)
Rows matched: 10  Changed: 10  Warnings: 10

MariaDB [Marathon_24301401]> SELECT student_id, student_name, kmh, 
    ->        (total_distance / 10) * (time_taken_mins / 60) * 100 AS points 
    -> FROM runners;
+------------+-----------------+------+---------------+
| student_id | student_name    | kmh  | points        |
+------------+-----------------+------+---------------+
|        101 | Mikasa Ackerman |  8.6 |  29.166666650 |
|        102 | Edward Elric    | 10.2 |  98.333333300 |
|        103 | Riza Hawkeye    |  7.9 |  31.666666650 |
|        104 | Bruce Wayne     |  9.5 | 105.000000000 |
|        105 | Peter Parker    |  9.1 |  27.500000000 |
|        106 | Alphonse Elric  | 10.9 |  91.666666600 |
|        107 | Son Goku        |  6.5 |  38.333333300 |
|        108 | Gon Freecss     |  8.8 | 113.333333300 |
|        109 | Tanjiro Kamado  | 10.3 |  24.166666650 |
|        110 | Roy Mustang     |  7.2 | 138.333333300 |
+------------+-----------------+------+---------------+
10 rows in set (0.010 sec)

MariaDB [Marathon_24301401]> SELECT student_name
    -> FROM runners WHERE total_distance=10 AND time_taken_mins BETWEEN 40 AND 60;
+----------------+
| student_name   |
+----------------+
| Edward Elric   |
| Alphonse Elric |
+----------------+
2 rows in set (0.011 sec)

MariaDB [Marathon_24301401]> SELECT student_name FROM runners WHERE email LIKE '%bracu.ac.bd';
+-----------------+
| student_name    |
+-----------------+
| Mikasa Ackerman |
| Bruce Wayne     |
| Son Goku        |
| Gon Freecss     |
| Tanjiro Kamado  |
+-----------------+
5 rows in set (0.004 sec)

MariaDB [Marathon_24301401]> 

