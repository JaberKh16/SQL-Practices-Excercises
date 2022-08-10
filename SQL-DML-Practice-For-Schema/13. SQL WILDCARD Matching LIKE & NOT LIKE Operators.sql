use employees;
select * from employees
where first_name like 'Georgi';

select * from employees
where first_name like 'G%' and last_name like '%c';

select * from employees
where first_name like '_g%' and last_name like '__s%';

select * from employees
where first_name like '%a%' or last_name like '_s_' ;

select * from employees
where first_name not like 'Georgi';

select * from employees
where first_name like '%G' and last_name not like '%s' ;

