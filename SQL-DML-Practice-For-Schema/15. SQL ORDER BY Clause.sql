use employees;
select *from employees;

select first_name, last_name, birth_date, gender
from employees
where gender = 'M'
order by birth_date;

select first_name, last_name, birth_date, gender
from employees
where gender = 'M'
order by birth_date desc;

select first_name, last_name, birth_date, gender
from employees
where gender = 'M'
order by first_name , birth_date desc;

use employees;
select * from salaries;

select * from salaries
order by salary;

select * from salaries
order by from_date, salary desc ;