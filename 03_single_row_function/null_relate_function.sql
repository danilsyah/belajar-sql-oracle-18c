SELECT
    employee_id as emp_id,
    first_name as name,
    coalesce(commission_pct, 0) as commission_pct,
    NVL(TO_CHAR (manager_id), 'Tidak Memiliki Manager') as manager_id,
    salary as salary,
    nvl2(commission_pct, salary + (salary * commission_pct), salary) as income
from employees
where lnnvl(commission_pct >= .2);