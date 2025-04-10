/*
In predicate, digunakan untuk memfilter data berdasarkan daftar data tertentu, 
contohnya berikut kasusnya. Tampilkan data karyawan yang memiliki job_id = AC_ACCOUNT, HR_REP, IT_PROG, dan ST_CLERK 
maka berikut adalah implementasi querynya:
*/

SELECT EMPLOYEE_ID,FIRST_NAME, job_id, salary
from employees
where job_id in ('AC_ACCOUNT', 'HR_REP', 'IT_PROG', 'ST_CLERK');

SELECT EMPLOYEE_ID,FIRST_NAME,DEPARTMENT_ID
from employees
where DEPARTMENT_ID IN (10,90,100);


