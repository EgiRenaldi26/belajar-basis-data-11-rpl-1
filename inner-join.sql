CREATE TABLE `job` (
    `id job` CHAR (3) PRIMARY KEY,
    `name_job` VARCHAR(100)
);

CREATE TABLE `emplo` (
    `id_emplo` INT (11) PRIMARY KEY,
    `full_name` VARCHAR(100),
    `gender` CHAR(1),
    `place_birth` VARCHAR (25),
    `date_birth` DATE,
    `id_job` CHAR(3)
);

INNER JOIN 

1.NULL TIDAK AKAN TAMPIL
SELECT emplo.*,job.*
FROM emplo
JOIN job ON job.id_job = emplo.id_job;


2.NULL AKAN DI TAMPILKAN
SELECT emplo.*,job.*
FROM emplo
LEFT JOIN job ON job.id_job = emplo.id_job;

SELECT emplo.*job.*
FROM emplo 
LEFT JOIN job ON job.id_job = emplo.id_job
WHERE emplo.id_job IS NULL;

SELECT emplo.full_name,job.gender,job.name_jobs
FROM emplo 
LEFT JOIN job ON job.id_job = emplo.id_job
WHERE emplo.id_job IS NULL;

SELECT emplo.full_name,job.gender,job.name_jobs
FROM emplo 
LEFT JOIN job ON job.id_job = emplo.id_job
WHERE job.name_jobs ='FrontEnd Developer'
OR jon.name_jobs = 'BackEnd Developer';

SELECT emplo.full_name,job.gender,job.name_jobs
FROM emplo 
LEFT JOIN job ON job.id_job = emplo.id_job
WHERE emplo.full_name LIKE='%a';