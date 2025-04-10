/*

operation	true x true |	true x false |	false x true | false x false
  AND	        true	        false	          false	          false
  OR	        true	        true	          true	          false
*/

-- and statement
/*
Kasusnya saya mau mencari data karyawan yang berkerja di department_id = 90 dan yang manager_id = 100, berikut querynya:
*/
select employee_id as kode,
  first_name as nama_depan,
  department_id,
  manager_id
from employees
where department_id = 90 and manager_id = 100;

-- or statement
/*
Kasusnya saya mau mencari data karyawan yang memiliki salary >= 12000 atau karyawan yang berkerja di department_id = 90, berikut querynya:
*/
select EMPLOYEE_ID as kode,
  FIRST_NAME as nama_depan,
  SALARY as gaji_bulanan
from employees
where department_id = 90 or salary >= 12000;

/*
Selain itu kita bisa kombinansikan semua logika, contoh kasusnya seperti berikut. 
Saya mau mancari data karyawan yang bekerja di department_id = 100 atau yang manager_id = 108 dan memiliki salary >= 9000 dan yang first_name bukan Daniel. 
Berikut querynya
*/

SELECT
  EMPLOYEE_ID as kode,
  FIRST_NAME as nama_depan,
  DEPARTMENT_ID as divisi,
  SALARY as gaji_bulanan,
  MANAGER_ID as manager
from employees
where (department_id = 100 or manager_id = 108)
  and salary >= 9000
  and not (first_name = 'Daniel');


select EMPLOYEE_ID,FIRST_NAME,DEPARTMENT_ID,MANAGER_ID
from employees
where (department_id = 90 or MANAGER_ID = 100) and FIRST_NAME LIKE '__e%';