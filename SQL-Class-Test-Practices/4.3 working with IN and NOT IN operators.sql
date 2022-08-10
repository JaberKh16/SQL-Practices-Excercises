use hr_schema;
select * from countries;

-- comment 1. show the coutry_table whose country_id is AU/BR/CN/JP
select * from countries
where COUNTRY_ID in ('AU', 'BR', 'CN', 'JP');

-- comment 2. show the departments_table whose manager_id is not 200/100/145
select * from departments;
select * from departments
where MANAGER_ID not in (200, 100, 145);

-- comment 3. show the employees detail whose job_id is ST_MANT/IT_PROG
select * from employees;
select * from employees
where JOB_ID in ( 'ST_MAN' , 'IT_PROG'); 

-- comment 4. show the employees who isnt assigned to department_id 100/30/90
select * from departments;
select * from departments
where DEPARTMENT_ID not in (100, 30, 90);

-- comment 5. show the locations whose postal_code is either 2901/50090
select * from locations;
select * from locations
where POSTAL_CODE in (2901, 50090);

-- comment 6. show the locations where the city is either Roma/Venice/Tokyo
select * from locations;
select * from locations
where CITY in ('Roma' , 'Venice' , 'Tokyo');