select 
    coalesce(COMMISSION_PCT, 0) as commission_pct,
    SALARY  as gaji,
    mod(2, 4) as sisa_bagi,
    POWER((SALARY / 1000), 2) as pangkat,
    sqrt(50)
from employees;