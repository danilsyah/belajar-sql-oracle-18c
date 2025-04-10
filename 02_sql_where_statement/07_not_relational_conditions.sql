/*
Predicate Not yaitu Negasi, jadi nilai kebalikannya contoh klo kita pake kondisi = => !=. Predicate Not ini bisa di terapkan di predicate lainnya seperti

Relational Comparison
Like Predicate
Between Predicate
Is Null Predicate
In Predicate
Exists Predicate
dan lain-lain.
*/

-- Relational Comparison
select employee_id,
  first_name,
  department_id,
  salary
from EMPLOYEES
where not (department_id = 90);

-- like predicate
select EMPLOYEE_ID,FIRST_NAME,DEPARTMENT_ID,SALARY
from employees
where FIRST_NAME not like '_a%';

-- between predicate
SELECT EMPLOYEE_ID,FIRST_NAME,DEPARTMENT_ID,SALARY
from employees
where SALARY not BETWEEN 4000 and 12000;

-- is null predicate
SELECT
  EMPLOYEE_ID,
  FIRST_NAME,
  COMMISSION_PCT,
  SALARY
from employees
where COMMISSION_PCT is not null;

-- in predicate
SELECT
  EMPLOYEE_ID,
  FIRST_NAME,
  DEPARTMENT_ID,
  SALARY
from EMPLOYEES
where DEPARTMENT_ID not in (90,50,80,60);

-- exists predicate
select EMPLOYEE_ID,FIRST_NAME,DEPARTMENT_ID 
from employees emp
WHERE not EXISTS(
  select 1
  from DEPARTMENTS dep
  where emp.DEPARTMENT_ID = dep.DEPARTMENT_ID
);

select * from DEPARTMENTS where DEPARTMENT_ID = 10;

