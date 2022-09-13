1.SELECT * FROM `siswa` LIMIT 10;
2.SELECT * FROM `siswa` LIMIT 10, 2;
3.SELECT * FROM `siswa` LIMIT 0, 2;
4.SELECT * FROM `siswa` LIMIT 6, 5;
5.SELECT * FROM `siswa` LIMIT 16, 5;
6.SELECT * FROM `siswa` LIMIT 2, 4;
7.SELECT * FROM `siswa` WHERE alamat = 'kalijati';
8.SELECT * FROM `siswa` WHERE tempat_lahir = 'BANDUNG';
9.SELECT * FROM `siswa` WHERE jenis_kelamin = 'P';
10.SELECT * FROM `siswa` WHERE alamat = 'kalijati' AND tempat_lahir = 'subang';
11.SELECT * FROM `siswa` WHERE alamat = 'kalijati' OR tempat_lahir = 'subang';
12.SELECT * FROM `siswa` WHERE nilai >= 78;
13.SELECT * FROM `siswa` WHERE nilai != 78;
14.SELECT * FROM `siswa` WHERE nilai >= 80 AND tempat_lahir != 'SUBANG';
15.SELECT * FROM `siswa` WHERE nilai >= 80 AND tempat_lahir != 'SUBANG' AND alamat = 'CIJAMBE';
16.SELECT * FROM `siswa` WHERE nilai BETWEEN 60 AND 80;
17.SELECT * FROM `siswa` WHERE tanggal_lahir BETWEEN '2005-03-01' AND '2005-10-01';
18.SELECT * FROM `siswa` WHERE MONTH(tanggal_lahir) = '09';
19.SELECT * FROM `siswa` ORDER BY nilai DESC;
20.SELECT * FROM `siswa` ORDER BY nilai ASC;
21.SELECT * FROM `siswa` WHERE jenis_kelamin = 'L' AND tempat_lahir = 'SUBANG' ORDER BY nilai DESC
22.SELECT * FROM `siswa` WHERE jenis_kelamin = 'P'AND nilai BETWEEN 50 AND 70 ORDER BY nilai DESC;
23.SELECT * FROM `siswa` WHERE nama LIKE 'A%';
24.SELECT * FROM `siswa` WHERE nama LIKE '%A';
25.SELECT * FROM `siswa` WHERE nama LIKE 'A%A';
26.SELECT * FROM `siswa` WHERE nama LIKE '%PU%';
27.SELECT tempat_lahir FROM `siswa` GROUP BY tempat_lahir;
28.SELECT tempat_lahir, COUNT(tempat_lahir) FROM `siswa` GROUP BY tempat_lahir;
29.SELECT tempat_lahir, COUNT(tempat_lahir) AS jumlah_orang FROM `siswa` GROUP BY tempat_lahir;
30.SELECT jenis_kelamin, COUNT(jenis_kelamin) AS jumlah_orang FROM `siswa`GROUP BY jenis_kelamin;
31.SELECT jenis_kelamin, 
MAX(nilai) AS nilai_tertinggi,
MIN(nilai) AS nilai_terendah
FROM `siswa`
GROUP BY jenis_kelamin;
32.SELECT jenis_kelamin, 
MAX(nilai) AS nilai_tertinggi,
MIN(nilai) AS nilai_terendah,
AVG(nilai) AS nilai_rerata
FROM `siswa`
GROUP BY jenis_kelamin;
33.SELECT jenis_kelamin, 
MAX(nilai) AS nilai_tertinggi,
MIN(nilai) AS nilai_terendah,
AVG(nilai) AS nilai_rerata,
SUM(nilai) AS nilai_rerata
FROM `siswa`
GROUP BY jenis_kelamin;
34.SELECT * FROM `siswa` WHERE YEAR(tanggal_lahir) = '2006';