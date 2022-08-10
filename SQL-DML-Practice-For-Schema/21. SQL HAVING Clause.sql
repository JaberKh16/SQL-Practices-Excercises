use employees;
select * from employees;

select first_name, count(*) as Emp_Count
from employees
group by first_name
having Emp_Count > 275;

select * from salaries;
select salary, count(*) as "Salary_Count"
from salaries
group by salary
having Salary_Count > 100
order by Salary_Count asc;