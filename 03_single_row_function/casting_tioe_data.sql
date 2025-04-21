select cast('21-April-2025' as Date)                                 varchar_date,
       cast('21-aa-2025' as Date default null on conversion error) varchar_date_error,
       cast('010' as number)                                       varchar_number,
       cast('0a10' as number default 0 on conversion error)        varchar_number_error,
       cast(20 as varchar2(5))                   as                number_varchar,
       cast((date '2025-04-21') as varchar2(20)) as                date_varchar,
       cast((date '2025-04-21') as timestamp)    as                date_timestamp
from DUAL;