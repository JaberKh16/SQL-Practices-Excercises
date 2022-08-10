use employees;
select *from salaries
where salary >=66074 and salary <=74957;

select count(*) from salaries
where salary >=66074 and salary <=74957;

select *from salaries
where salary >66074 and salary < 74957;

select *from salaries
where salary  between 66074 and  74957;

select count(*) from salaries
where salary  between 66074 and  74957;

select *from salaries
where salary not between 66074 and  74957;

select count(*) from salaries
where salary not between 66074 and  74957;

select *from employees
where birth_date between '1953-04-20'and '1956-02-17';

select *from employees
where birth_date not between '1953-04-20'and '1956-02-17';

select *from employees
where first_name not between '%s%' and last_name ;

