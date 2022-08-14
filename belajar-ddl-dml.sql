 CREATE TABLE siswa(
    -> nis CHAR(8) primary KEY,
    -> nama VARCHAR(100),
    -> jk CHAR(1),
    -> tmp_lahir VARCHAR(50),
    -> tgl_lahir DATE,
    -> alamat TEXT,
    -> kelas VARCHAR(10),
    -> nilai FLOAT);
Query OK, 0 rows affected (0.054 sec)
MariaDB [sekolah]> DESCRIBE siswa;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| nis       | char(8)      | NO   | PRI | NULL    |       |
| nama      | varchar(100) | YES  |     | NULL    |       |
| jk        | char(1)      | YES  |     | NULL    |       |
| tmp_lahir | varchar(50)  | YES  |     | NULL    |       |
| tgl_lahir | date         | YES  |     | NULL    |       |
| alamat    | text         | YES  |     | NULL    |       |
| kelas     | varchar(10)  | YES  |     | NULL    |       |
| nilai     | float        | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
8 rows in set (0.022 sec)

MariaDB [sekolah]> SELECT*from siswa;
Empty set (0.072 sec)
MariaDB [sekolah]> INSERT INTO siswa VALUES(
    -> '12100274',
    -> 'Firdaus wiguna',
    -> 'L',
    -> 'SUBANG',
    -> '2005-08-17',
    -> 'KALIJATI',
    -> '11-RPL-1',
    -> '70,97');
Query OK, 1 row affected, 2 warnings (0.006 sec)

MariaDB [sekolah]> SELECT*from siswa;
+----------+----------------+------+-----------+------------+----------+----------+-------+
| nis      | nama           | jk   | tmp_lahir | tgl_lahir  | alamat   | kelas    | nilai |
+----------+----------------+------+-----------+------------+----------+----------+-------+
| 12100274 | Firdaus wiguna | L    | SUBANG    | 2005-08-17 | KALIJATI | 11-RPL-1 |    70 |
+----------+----------------+------+-----------+------------+----------+----------+-------+
1 row in set (0.001 sec)

MariaDB [sekolah]> INSERT INTO siswa VALUES(
    -> '12100271',
    -> 'SANDI ADI PRATAMA',
    -> 'L',
    -> 'SUBANG',
    -> '2005-02-17',
    -> 'PAGADEN',
    -> '11-RPL-1',
    -> '80,99');
Query OK, 1 row affected, 1 warning (0.005 sec)

MariaDB [sekolah]> SELECT*from siswa;
+----------+-------------------+------+-----------+------------+----------+----------+-------+
| nis      | nama              | jk   | tmp_lahir | tgl_lahir  | alamat   | kelas    | nilai |
+----------+-------------------+------+-----------+------------+----------+----------+-------+
| 12100271 | SANDI ADI PRATAMA | L    | SUBANG    | 2005-02-17 | PAGADEN  | 11-RPL-1 |    80 |
| 12100274 | Firdaus wiguna    | L    | SUBANG    | 2005-08-17 | KALIJATI | 11-RPL-1 |    70 |
+----------+-------------------+------+-----------+------------+----------+----------+-------+
2 rows in set (0.001 sec)

MariaDB [sekolah]> INSERT INTO siswa VALUES(
    -> '12100272',
    -> 'DAVID LUTFI',
    -> 'L',
    -> 'SUBANG',
    -> '2005-09-16',
    -> 'CIDADAP',
    -> '11-RPL-1',
    -> '90');
Query OK, 1 row affected (0.005 sec)

MariaDB [sekolah]> SELECT*from siswa;
+----------+-------------------+------+-----------+------------+----------+----------+-------+
| nis      | nama              | jk   | tmp_lahir | tgl_lahir  | alamat   | kelas    | nilai |
+----------+-------------------+------+-----------+------------+----------+----------+-------+
| 12100271 | SANDI ADI PRATAMA | L    | SUBANG    | 2005-02-17 | PAGADEN  | 11-RPL-1 |    80 |
| 12100272 | DAVID LUTFI       | L    | SUBANG    | 2005-09-16 | CIDADAP  | 11-RPL-1 |    90 |
| 12100274 | Firdaus wiguna    | L    | SUBANG    | 2005-08-17 | KALIJATI | 11-RPL-1 |    70 |
+----------+-------------------+------+-----------+------------+----------+----------+-------+
3 rows in set (0.001 sec)

MariaDB [sekolah]> INSERT INTO siswa VALUES(
    -> '12100273',
    -> 'EGI RENALDI',
    -> 'L',
    -> 'SUBANG',
    -> '2006-07-26',
    -> 'CIPUNAGARA',
    -> '11-RPL-1',
    -> '80');
Query OK, 1 row affected (0.004 sec)

MariaDB [sekolah]> SELECT*from siswa;
+----------+-------------------+------+-----------+------------+------------+----------+-------+
| nis      | nama              | jk   | tmp_lahir | tgl_lahir  | alamat     | kelas    | nilai |
+----------+-------------------+------+-----------+------------+------------+----------+-------+
| 12100271 | SANDI ADI PRATAMA | L    | SUBANG    | 2005-02-17 | PAGADEN    | 11-RPL-1 |    80 |
| 12100272 | DAVID LUTFI       | L    | SUBANG    | 2005-09-16 | CIDADAP    | 11-RPL-1 |    90 |
| 12100273 | EGI RENALDI       | L    | SUBANG    | 2006-07-26 | CIPUNAGARA | 11-RPL-1 |    80 |
| 12100274 | Firdaus wiguna    | L    | SUBANG    | 2005-08-17 | KALIJATI   | 11-RPL-1 |    70 |
+----------+-------------------+------+-----------+------------+------------+----------+-------+
4 rows in set (0.001 sec)

MariaDB [sekolah]> UPDATE siswa SET nis='12100698' WHERE nis='12100271';
Query OK, 1 row affected (0.009 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [sekolah]> SELECT*from siswa;
+----------+-------------------+------+-----------+------------+------------+----------+-------+
| nis      | nama              | jk   | tmp_lahir | tgl_lahir  | alamat     | kelas    | nilai |
+----------+-------------------+------+-----------+------------+------------+----------+-------+
| 12100272 | DAVID LUTFI       | L    | SUBANG    | 2005-09-16 | CIDADAP    | 11-RPL-1 |    90 |
| 12100273 | EGI RENALDI       | L    | SUBANG    | 2006-07-26 | CIPUNAGARA | 11-RPL-1 |    80 |
| 12100274 | Firdaus wiguna    | L    | SUBANG    | 2005-08-17 | KALIJATI   | 11-RPL-1 |    70 |
| 12100698 | SANDI ADI PRATAMA | L    | SUBANG    | 2005-02-17 | PAGADEN    | 11-RPL-1 |    80 |
+----------+-------------------+------+-----------+------------+------------+----------+-------+
4 rows in set (0.001 sec)

MariaDB [sekolah]> UPDATE siswa SET nis='12100147' WHERE nis='12100272';
Query OK, 1 row affected (0.004 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [sekolah]> SELECT*from siswa;
+----------+-------------------+------+-----------+------------+------------+----------+-------+
| nis      | nama              | jk   | tmp_lahir | tgl_lahir  | alamat     | kelas    | nilai |
+----------+-------------------+------+-----------+------------+------------+----------+-------+
| 12100147 | DAVID LUTFI       | L    | SUBANG    | 2005-09-16 | CIDADAP    | 11-RPL-1 |    90 |
| 12100273 | EGI RENALDI       | L    | SUBANG    | 2006-07-26 | CIPUNAGARA | 11-RPL-1 |    80 |
| 12100274 | Firdaus wiguna    | L    | SUBANG    | 2005-08-17 | KALIJATI   | 11-RPL-1 |    70 |
| 12100698 | SANDI ADI PRATAMA | L    | SUBANG    | 2005-02-17 | PAGADEN    | 11-RPL-1 |    80 |
+----------+-------------------+------+-----------+------------+------------+----------+-------+
4 rows in set (0.001 sec)

MariaDB [sekolah]> UPDATE siswa SET nis='12100218' WHERE nis='12100273';
Query OK, 1 row affected (0.003 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [sekolah]> SELECT*from siswa;
+----------+-------------------+------+-----------+------------+------------+----------+-------+
| nis      | nama              | jk   | tmp_lahir | tgl_lahir  | alamat     | kelas    | nilai |
+----------+-------------------+------+-----------+------------+------------+----------+-------+
| 12100147 | DAVID LUTFI       | L    | SUBANG    | 2005-09-16 | CIDADAP    | 11-RPL-1 |    90 |
| 12100218 | EGI RENALDI       | L    | SUBANG    | 2006-07-26 | CIPUNAGARA | 11-RPL-1 |    80 |
| 12100274 | Firdaus wiguna    | L    | SUBANG    | 2005-08-17 | KALIJATI   | 11-RPL-1 |    70 |
| 12100698 | SANDI ADI PRATAMA | L    | SUBANG    | 2005-02-17 | PAGADEN    | 11-RPL-1 |    80 |
+----------+-------------------+------+-----------+------------+------------+----------+-------+
4 rows in set (0.001 sec)
MariaDB [sekolah]> INSERT INTO siswa VALUES(
-> '12100306',
-> 'HASBI DHIYA FARHANSYAH',
-> 'L',
-> 'GARUT',
-> '2005-11-17',
-> 'PAGADEN',
-> '11-RPL-1',
-> '87');
Query OK, 1 row affected, 1 warning (0.005 sec)
    
MariaDB [sekolah]> SELECT*from siswa;
+----------+------------------------+------+-----------+------------+------------+----------+-------+
| nis      | nama                   | jk   | tmp_lahir | tgl_lahir  | alamat     | kelas    | nilai |
+----------+------------------------+------+-----------+------------+------------+----------+-------+
| 12100147 | DAVID LUTFI            | L    | SUBANG    | 2005-09-16 | CIDADAP    | 11-RPL-1 |    90 |
| 12100218 | EGI RENALDI            | L    | SUBANG    | 2006-07-26 | CIPUNAGARA | 11-RPL-1 |    80 |
| 12100274 | Firdaus wiguna         | L    | SUBANG    | 2005-08-17 | KALIJATI   | 11-RPL-1 |    70 |
| 12100306 | HASBI DHIYA FARHANSYAH | L    | GARUT     | 2005-11-17 | PAGADEN    | 11-RPL-1 |    87 |
| 12100698 | SANDI ADI PRATAMA      | L    | SUBANG    | 2005-02-17 | PAGADEN    | 11-RPL-1 |    80 |
+----------+------------------------+------+-----------+------------+------------+----------+-------+
5 rows in set (0.001 sec)
MariaDB [sekolah]> UPDATE siswa SET tgl_lahir='2005-05-05',alamat='BINONG' WHERE nis='12100274';
 Query OK, 1 row affected (0.004 sec)
 Rows matched: 1  Changed: 1  Warnings: 0

 MariaDB [sekolah]> SELECT*from siswa;
 +----------+------------------------+------+-----------+------------+------------+----------+-------+
 | nis      | nama                   | jk   | tmp_lahir | tgl_lahir  | alamat     | kelas    | nilai |
 +----------+------------------------+------+-----------+------------+------------+----------+-------+
 | 12100147 | DAVID LUTFI            | L    | SUBANG    | 2005-09-16 | CIDADAP    | 11-RPL-1 |    90 |
 | 12100218 | EGI RENALDI            | L    | SUBANG    | 2006-07-26 | CIPUNAGARA | 11-RPL-1 |    80 |
 | 12100274 | Firdaus wiguna         | L    | BANDUNG   | 2005-05-05 | BINONG     | 11-RPL-1 |    70 |
 | 12100306 | HASBI DHIYA FARHANSYAH | L    | GARUT     | 2005-11-17 | PAGADEN    | 11-RPL-1 |    87 |
 | 12100698 | SANDI ADI PRATAMA      | L    | SUBANG    | 2005-02-17 | PAGADEN    | 11-RPL-1 |    80 |
 +----------+------------------------+------+-----------+------------+------------+----------+-------+
 5 rows in set (0.001 sec)
 MariaDB [sekolah]> DELETE FROM
     -> siswa WHERE
     -> nis='12100274';
 Query OK, 1 row affected (0.003 sec)

 MariaDB [sekolah]> SELECT * from siswa;
 +----------+------------------------+------+-----------+------------+------------+----------+-------+
 | nis      | nama                   | jk   | tmp_lahir | tgl_lahir  | alamat     | kelas    | nilai |
 +----------+------------------------+------+-----------+------------+------------+----------+-------+
 | 12100147 | DAVID LUTFI            | L    | SUBANG    | 2005-09-16 | CIDADAP    | 11-RPL-1 |    90 |
 | 12100218 | EGI RENALDI            | L    | SUBANG    | 2006-07-26 | CIPUNAGARA | 11-RPL-1 |    80 |
 | 12100306 | HASBI DHIYA FARHANSYAH | L    | GARUT     | 2005-11-17 | PAGADEN    | 11-RPL-1 |    87 |
 | 12100698 | SANDI ADI PRATAMA      | L    | SUBANG    | 2005-02-17 | PAGADEN    | 11-RPL-1 |    80 |
 +----------+------------------------+------+-----------+------------+------------+----------+-------+
 4 rows in set (0.001 sec)

 MariaDB [sekolah]>