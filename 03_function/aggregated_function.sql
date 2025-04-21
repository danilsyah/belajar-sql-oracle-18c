SELECT
    round(AVG(SALARY), 2) as rata2_gaji,
    COUNT(distinct JOB_ID) as jml_job_id_unique,
    COUNT(*) as count_all,
    MAX(SALARY) as max_salary,
    MIN(SALARY) as min_salary,
    MAX(HIRE_DATE) as max_hire_date,
    MIN(HIRE_DATE) as min_hire_date,
    SUM(SALARY) as total_gaji
from employees;