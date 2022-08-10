select * from salaries;
select date_format("2018-05-15", "%M, %d, %Y") as 'DATE'
from salaries;

select from_date as 'DATES', date_format(from_date, "%M, %d, %Y") as version1,
date_format(from_date, "%m, %D, %Y") as version2, date_format(from_date, '%Y, %M, %D') as version3
from salaries;

select * from salaries;

select  date_format(from_date, '%Y') as Salary_year, emp_no, salary 
from salaries;

select 
dayname(from_date) as Day_Name,
	date(from_date) as 'Date_Format' ,
	day(from_date) as "Date_No",
	dayofmonth(from_date) as 'Date_of_Month_', 
	dayofweek(from_date) as "Week_No_Month",
	dayofyear(from_date) as "Total_Day_of_Year" ,
	salary as Salary
from salaries;


