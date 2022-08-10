use hr_schema;
select * from employees;

-- comment 1. show  employees email, hire_date in "January 4th, 1987" format
select * from employees;
select EMAIL, date_format(HIRE_DATE, "%M %D, %Y")
from employees;

-- comment 2. show  employees email, hire_date in "Jan 1987, 04" format
select * from employees;
select EMAIL, date_format(HIRE_DATE, "%m %Y, %d")
from employees;

-- comment 3. show  employees email, hire_date in "1st Aug, 87 05:10PM " format
select EMAIL, date_format(HIRE_DATE, "%D %m %y %h : %i%p ")
from employees;

-- comment 4.  show  employees email, hire_date in "15 Jan . 2019 Tuesday 14:10 " format
select EMAIL, date_format(HIRE_DATE, "%D %b, %Y %W %H:%i ")
from employees;

-- comment 5.  show the employees first_name, email, phn_no, address who is hired after
--             the date "05 May,1987 00:00 AM"
select * from employees;
select FIRST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE
from employees
where HIRE_DATE > str_to_date("05 May, 1987", "%d %b, %Y %H:%i %p");

-- comment 6.  show the employees first_name, email, phn_no, address who is hired after
--             the date "1 June 1987 12:01 PM"
select FIRST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE
from employees
where HIRE_DATE > str_to_date("1 June 1987", "%e %M %Y %H:%i %p");

-- comment 7. show each employee_id and his total current experience (up present date) in 
--            number of years format ( show the years in 3 decimal point)
select * from employees;
select EMPLOYEE_ID , round((datediff(curdate(), HIRE_DATE))/365, 3) as "Year of Experience"
from employees;

-- comment 8. show each employee_id , email and his total current experience in 
--            "10 years, 6months  and 15days" format
   select  now();
   
select * from job_history;
select EMPLOYEE_ID , ROUND(DATEDIFF(END_DATE , START_DATE)/365, 0)  as "Experience"
from job_history
where  ROUND(DATEDIFF(END_DATE , START_DATE)/365, 0) > 5  ;

select DATEDIFF(LAST_DAY(END_DATE), END_DATE) as "Served_In_Last_Month"
from job_history;

select FIRST_NAME, DEPARTMENT_ID, MANAGER_ID, HIRE_DATE, 
date_sub(HIRE_DATE, INTERVAL 7 DAY) as "Modified_Date"
from employees;

select FIRST_NAME, DEPARTMENT_ID, MANAGER_ID, HIRE_DATE, 
date_add(HIRE_DATE, INTERVAL 30 YEAR) as "Retirement_Date"
from employees;





