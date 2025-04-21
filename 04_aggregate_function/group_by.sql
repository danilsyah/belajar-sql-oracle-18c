/*
Fungsi group by adalah untuk membreak down atau mengkatagerikan kemudian di buatlah group function. Seperti berikut ilustrasinya:
*/

-- Saya mau mencari jumlah setiap karyawan dan total salary setahun per department_id. Berikut querynya:
select
    department_id as dep_id,
    count(employee_id) as count_employees,
    -- jumlah salary dalam setahun + comission
    sum((salary * 12) + nvl2(commission_pct, (salary * commission_pct), 0)) as income_in_year,
    -- rata-rata gaji disetiap department
    round(avg(salary), 2) as avg_salary_per_dep,
    -- minimum gaji disetiap department
    min(salary) as min_salary_per_dep,
    -- maksimum gaji disetiap department
    max(salary) as max_salary_per_dep,
    -- nilai median di setiap department
    median(salary) as median_salary_per_dep,
    -- nilai standard deviation di setiap department
    round(stddev(salary), 2) as stddev_salary_per_dep,
    -- nilai variance di setiap department
    round(variance(salary), 2) as variance_salary_per_dep
from employees
group by department_id
order by DEPARTMENT_ID;

select 
    department_id as dep_id,
    JOB_ID as job_id,
    count(EMPLOYEE_ID) as count_employees,
    SUM((salary * 12) + nvl2(COMMISSION_PCT, (salary * commission_pct), 0)) as income_in_year
from employees
group by department_id, JOB_ID
order by department_id;