-- operasi aritmatika
select 
    (2+2) as tambah,
    (2-2) as kurang,
    (2*2) as kali,
    (2/2) as bagi
from dual;

select 
    first_name,
    salary,
    salary * 12 as "salary in a year",
    commission_pct,
    (salary * commission_pct) + salary  "salary take home"
from employees;


-- Operasi Date
select 
    current_date as hari_ini,
    current_date - 2 as lusa,
    current_date + 1 as besok,
    date '2025-04-09' - date '1994-10-15' as jumlah_hari,
    floor(months_between(date '2025-04-09', date '1994-10-15') / 12) as tahun_penuh,
    mod(trunc(months_between(date '2025-04-09', date '1994-10-15')), 12) as bulan,
    trunc(months_between(date '2025-04-09', date '1994-10-15') / 12) || ' tahun ' ||
        mod(trunc(months_between(date '2025-04-09', date '1994-10-15')), 12) || ' bulan' as umur_lengkap
from dual;


desc employees;

select * from employees;