desc departments;

select * 
from departments;

select department_name, manager_id  
from departments;

-- kolom alias
select 
    department_id as kode_divisi,
    department_name nama_departement,
    manager_id as "kode Manager"
from departments;

-- table alias
select 
    dep.department_id as dep_id,
    dep.department_name dep_nama,
    dep.manager_id as "man_id"
from departments dep;
