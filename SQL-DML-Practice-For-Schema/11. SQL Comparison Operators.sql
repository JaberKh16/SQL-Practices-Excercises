use employees;
select * from employeesse;

select emp_no, first_name, last_name, gender, hire_date
from employees
where first_name ='Elvis'  and last_name < 'F';

select emp_no, first_name, last_name, gender, hire_date
from employees
where first_name > 'E'  and last_name < 'F';

select emp_no, first_name, last_name, gender, hire_date
from employees
where first_name >= 'E'  and last_name <= 'F';

select emp_no, first_name, last_name, gender, hire_date
from employees
where (first_name > 'E'  and last_name < 'F') and hire_date <= '1987-05-26' and emp_no <> 27042;

select emp_no, first_name, last_name, gender, hire_date
from employees
where (first_name > 'E'  and last_name < 'F') and hire_date <= '1987-05-26' and emp_no != 27042;

select emp_no, first_name, last_name, gender, hire_date
from employees
where (first_name > 'E'  and last_name < 'F') and hire_date <= '1987-05-26' and emp_no <=> 27042;

