/*
=	Melakukan perbandingan dengan nilai yang bernilai sama
!=	Melakukan perbandingan dengan nilai yang bernilai tidak sama
^=	Melakukan perbandingan dengan nilai yang bernilai tidak sama
<>	Melakukan perbandingan dengan nilai yang bernilai tidak sama
>	Melakukan perbandingan terhadap 2 variable apakah variable yang satu lebih besar dari variable lainnya
>=	Melakukan perbandingna terhadap 2 variable apakah variable yang satu lebih besar atau sama dengan variable lainnya
<	Kebalikan dari symbol > yaitu lebih kecil
<=	Kebalikan dari symbol >= yaitu lebih kecil atau sama dengan
*/

-- Berikut contoh kasus, untuk mencari data pegawai dengan kode yang sama dengan 100 berikut querynya:
SELECT
  employee_id,
  last_name,
  salary
from EMPLOYEES
where employee_id = 100;

-- Berikut contoh kasus, untuk mencari data pegawai dengan jabatan yang bukan merupakan IT_PROG. berikut querynya:

SELECT
  EMPLOYEE_ID,
  EMAIL,
  JOB_ID,
  SALARY
from employees
where JOB_ID != 'IT_PROG';

SELECT
  EMPLOYEE_ID,
  EMAIL,
  JOB_ID,
  SALARY
from employees
where JOB_ID <> 'ST_CLERK';

select employee_id, email, job_id, salary
from employees
where job_id ^= 'IT_PROG';

-- Berikut contoh kasus, untuk mencari data pegawai dengan gaji yang lebih besar dari 12000. berikut querynya:
select 
  employee_id, first_name, phone_number, job_id, salary
from employees 
where salary > 12000;

/*
Berikut contoh kasus, untuk mencari data pegawai dengan gaji yang lebih besar dari 24000. in case gaji 24000 adalah gaji paling besar 
jika di cari dengan menggunakan operator > maka hasilnya (0 rows) berikut querynya:
*/

SELECT
  EMPLOYEE_ID,
  FIRST_NAME,
  PHONE_NUMBER,
  JOB_ID,
  SALARY
from EMPLOYEES
WHERE SALARY >= 24000;

-- mencari gaji pegawai di bawah 12000
SELECT EMPLOYEE_ID,FIRST_NAME,JOB_ID,SALARY
FROM EMPLOYEES
WHERE SALARY < 12000;

-- mencari pegawai yang join berdasarkan tanggal tertentu
SELECT employee_id,first_name,hire_date
FROM EMPLOYEES
WHERE HIRE_DATE < '17/06/03'
order by HIRE_DATE;