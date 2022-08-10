use hr_schema;

select * from employees;
select count(distinct EMPLOYEE_ID) , SUM(SALARY), AVG(SALARY),
MAX(SALARY) , MIN(SALARY) 
from employees;

select * from jobs;
select MAX(MIN_SALARY) as "Maximum_Min_Sal"  , MIN(MIN_SALARY) as "Minimum_Min_Sal",
MAX(MAX_SALARY) as "Maximum_Max_Sal" , MIN(MAX_SALARY) as "Minimum_Max_Sal"
from jobs
group by MAX_SALARY , MIN_SALARY;
