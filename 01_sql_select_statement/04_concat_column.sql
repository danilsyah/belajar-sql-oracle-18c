-- concatnation column
select 
    employee_id as id,
    first_name || ' ' || last_name as nama_lengkap,
    email || ' - ' || ' contact : ' || phone_number as contact
from employees;