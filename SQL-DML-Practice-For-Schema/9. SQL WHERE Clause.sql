use employees;
select * from employees;

select first_name, last_name
from employees
where first_name = 'Chirstian'; 

select first_name, last_name, gender
from employees
where gender = 'M'; 

select first_name, last_name, gender, hire_date
from employees
where hire_date = '1985-04-29'; 

select emp_no, last_name, gender, hire_date
from employees
where emp_no = 10007;  

