use hr_schema;

select FIRST_NAME, LAST_NAME, EMAIL, HIRE_DATE, SALARY
from employees
order by SALARY desc , FIRST_NAME asc;

select * 
from locations
order by POSTAL_CODE asc;