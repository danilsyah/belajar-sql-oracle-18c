SELECT ascii('a') as ascii_fun,
    ASCIISTR('ABCDE') as asciistr_fun,
    UNISTR('AB\FFFD\FFFDCDE') as unistr_fun,
    bin_to_num(1,1,1,0) as bintonum_fun,
    TO_CHAR (CURRENT_DATE, 'DD/MON/YYYY HH12:mi:ss') as tochar_date_fun,
    TO_CHAR (2000000, 'L999G999G999D99MI') as tochar_currency_fun,
    TO_NUMBER('2,000,000.00' default 0 on conversion error, '999G999G999D99') as tonumber_fun,
    TO_DATE('21/04/2025 10:18:00', 'DD/MM/YYYY HH24:MI:SS') as todate_fun
from DUAL;