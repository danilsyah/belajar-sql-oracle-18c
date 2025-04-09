-- Handle Null value dengan Coalesce
select
  FIRST_NAME as name,
  coalesce(COMMISSION_PCT, 0) as komisi_persen,
  SALARY as gaji_bulanan,
  salary + (salary * coalesce(COMMISSION_PCT,0)) as gaji_net
from employees;