/*
Exists Condition biasanya digunakan untuk melakukan check data query 1 dan query 2 (subquery) memiliki nilai maka menampilkan query 1. 
berikut contoh implementasinya:
*/

SELECT EMPLOYEE_ID,first_name,department_id
from EMPLOYEES emp
where exists(
  select 1
  from departments dep
  where emp.department_id = dep.department_id
);

select * from DEPARTMENTS;