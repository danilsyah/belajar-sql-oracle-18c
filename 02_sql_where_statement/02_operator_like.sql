/*
_ atau underscore, digunakan untuk mewakili expresion satu karakter.
% atau persent, digunakan untuk mewakili expresion beberapa karakter.
*/

-- Contoh kasus untuk expresion %, saya ingin mencari nama depan karyawan yang diawali oleh huruf A. Berikut querynya:
SELECT EMPLOYEE_ID,first_name,last_name, job_id,salary
from EMPLOYEES
where last_name like 'A%';

-- Contoh kasus untuk expresion _, saya ingin mencari huruf ke 4 dari kolom job_id di tabel jobs mengadung V. Berikut querynya:
select job_id, job_title 
from jobs 
where job_id like '___V%';

-- Selain itu juga kita bisa menggunakan Regex Expression, menggunakan operator regexp_like seperti berikut querynya:
SELECT FIRST_NAME,LAST_NAME
from EMPLOYEES
WHERE REGEXP_LIKE (FIRST_NAME, '^Ste(v|ph)en$');