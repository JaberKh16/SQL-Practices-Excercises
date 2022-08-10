use hr_schema;
select * from employees;
-- comment 1. first_name does starts with the 's'
select * from employees where FIRST_NAME like 's%';
-- comment 2. first_naem doesnt starts with the 's'
select * from employees where FIRST_NAME not like 's%';
-- comment 3. first_name ends with letter 'a'
select * from employees where FIRST_NAME like '%a';
-- comment 4. first_name contains letter 'd'
select * from employees where FIRST_NAME like  '%d%';
-- comment 5. first_name contains substring letter 'da'
select * from employees where FIRST_NAME like  '%da%';
-- comment 6. first_name starts with 's' and ends with 'a'
select * from employees where FIRST_NAME like 's%a';
-- comment 7. first_name starts with 's' or 'm' ; use order by to work with existing column in where clause
select * from employees 
where FIRST_NAME like 's%'  or FIRST_NAME like 'm%'
order by FIRST_NAME;
-- comment 8. first_name contains letrter 'o' and 'a'; also u can join two conditions without ordering the data
select * from employees
where FIRST_NAME like '%o% ' or FIRST_NAME like '%a%';
-- comment 9. first_name contains letter 'a' followed by 'o' then 'a'
select * from employees
where FIRST_NAME like 'oa%';
-- comment 10. first_name contains exactly 3 characters
select * from employees
where FIRST_NAME like '___';
-- comment 11. first_name conatains minimum of 3 characters
select * from employees
where FIRST_NAME like '___%' ;              -- not needed (or '_' or '');
-- comment 12, first_naem contains letter 'a' from second last position
select * from employees
where FIRST_NAME like '%a_';



