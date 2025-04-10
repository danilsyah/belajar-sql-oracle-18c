/*
Operator IS NULL digunakan untuk memfiter data yang bernilai null. Contoh kasusnya, saya mau menampilkan data karywan yang tidak memiliki manager. Berikut querynya:
*/

select EMPLOYEE_ID, first_name, salary, job_id, MANAGER_ID
from EMPLOYEES
where manager_id is null;

SELECT EMPLOYEE_ID, FIRST_NAME, EMAIL
from EMPLOYEES
where EMAIL is null;

select COUNT(EMPLOYEE_ID) as jumlah
from EMPLOYEES
WHERE COMMISSION_PCT is null;

