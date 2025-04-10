/*
Operator BETWEEN digunakan untuk memfilter dengan interval/rentang tertentu diantar nilai terkecil dan terbesar. Untuk predicate between ini bisa digunakan untuk beberapa tipe data yaitu:

Number
Date
Character
*/

-- contoh kasusnya, Saya mau menampilkan data yang karywan yang memiliki gaji dari 4000 s/d 6000. Berikut querynya:
select
  EMPLOYEE_ID,
  FIRST_NAME,
  SALARY,
  department_id
from EMPLOYEES
where salary BETWEEN 4000 and 6000
order by salary ASC;

-- Saya mau menampilkan data yang karywan yang tanggal join dari 2018-01-01 s/d 2018-03-31, berikut contoh querynya:
SELECT
  EMPLOYEE_ID,
  FIRST_NAME,
  SALARY,
  HIRE_DATE,
  DEPARTMENT_ID
from EMPLOYEES
where HIRE_DATE BETWEEN date '2008-01-01' and date '2008-03-31'
order by HIRE_DATE asc;

-- Saya mau menampilkan data yang karywan yang nama depan di huruf ke 2nya dari character a s/d i. Berikut contoh querynya
SELECT EMPLOYEE_ID,
  FIRST_NAME,
  substr(FIRST_NAME, 2, 1) as first_char_at_first_name,
  SALARY,
  HIRE_DATE,
  DEPARTMENT_ID
from EMPLOYEES
WHERE substr(FIRST_NAME, 2, 1) BETWEEN 'a' and 'i'
order by first_char_at_first_name asc;
