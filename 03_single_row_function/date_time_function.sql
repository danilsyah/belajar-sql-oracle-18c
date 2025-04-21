SELECT ADD_MONTHS(date '2025-04-21', 1) as add_months_fun,
    CURRENT_DATE as current_date_fun,
    CURRENT_TIMESTAMP as current_timestamp_fun,
    SYSDATE as sysdate_fun,
    SYSTIMESTAMP as systimestamp_fun,
    MONTHS_BETWEEN(date '2025-04-1', date '2025-05-1') as months_between_fun,
    TO_CHAR (DATE '2025-04-21', 'DD/MON/YYYY') as to_char_fun,
    TO_TIMESTAMP('21/04/2025 10:30:00', 'DD/MM/YYYY HH24:MI:SS') as to_timestamp_fun,
    TO_DATE('21/04/2025', 'DD/MM/YYYY') as to_date_fun
from dual;