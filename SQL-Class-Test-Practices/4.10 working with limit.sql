select * from employees;

select SALARY
from employees
order by SALARY desc
limit 0, 10;

select * 
from employees
group by HIRE_DATE
limit 0, 10;

select * from jobs;
select  *
from jobs
order by (MAX_SALARY-MIN_SALARY) desc
limit 0, 2;