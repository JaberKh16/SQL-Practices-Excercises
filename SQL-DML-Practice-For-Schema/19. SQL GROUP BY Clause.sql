use employees;
select * from employees;
select distinct first_name, count(*) 
from employees
group by first_name;

select distinct first_name, last_name, emp_no
from employees
group by emp_no;

select count(distinct last_name like 'Facello') as "Total_Count", first_name, last_name
from employees; 

select * from salaries;
select salary, count(*) as Salary_Count from salaries
group by salary;

select salary , count(*) as Salary_Count from salaries
group by salary 
order by Salary_Count  asc;