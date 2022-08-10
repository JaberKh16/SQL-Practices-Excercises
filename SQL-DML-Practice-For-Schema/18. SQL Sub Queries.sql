use employees;
select *from employees;
select count(distinct first_name)
from employees
where first_name like 'E%';

select * from employees
where first_name in (select distinct first_name from employees
where first_name like 'E%');
