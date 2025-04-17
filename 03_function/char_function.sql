select 
    UPPER(first_name) as nama_depan_kapital,
    UPPER(last_name) as nama_belakang_kapital,
    length(last_name) as jumlah,
    concat(first_name, concat(' ', last_name)) as nama
from employees;

select 
    ascii('a') as ascii_func,
    chr(97) as chr_func,
    ascii('A') as ascii2_func
from DUAL;

SELECT
    FIRST_NAME,
    LAST_NAME,
    CONCAT(FIRST_NAME, concat(' ', LAST_NAME)) as fullname,
    LOWER(FIRST_NAME) as lower_first_name,
    INITCAP(LOWER(FIRST_NAME)) as initcap_first_name,
    SUBSTR(FIRST_NAME, 1, 2) as substr_first_name
from employees;