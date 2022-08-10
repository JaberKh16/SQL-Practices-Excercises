
-- Working with DATE , TIME , DATETIME FUNCTIONS


--Section --1. DATE FUNCTION

-- Working with the DATE Functions
-- Just Date not Time
-- DATE Format :  "YYYY-MM-DD"

--Section --2. TIME FUNCTION

-- Working with Time Functions
-- Just time no date
-- Time Format :  "HH:MM:SS"


--Section --3. DATETIME FUNCTION
-- Values with a Date and Time
-- DATETIME Format :  "YYYY-MM-DD HH:MM-DD"
-- Exmaple ---> think about fb comment , it includes the time either 
--              on post or comment



-- DATE Function ---->  1. CURDATE([column], column) --> current date
--                      2. CURTIME([column], column) --> current time
--                      3. NOW([column], column)     --> current datetime

-- DATE FUNCTIONS ::::
--                      4. DAY(column)        ---> extract the day
--                      5. MONTH(column)      ---> extract the month
--                      6. YEAR(column)       ---> extract the year
--                      7. DAYNAME(column)    ---> extract the date_name(full_form)
--                      8. MONTHNAME(column)  ---> extract the month_name)full_form)
--                      9. DAYOFWEEK(column)  ---> extract the day_of_week
--                      10.DAYOFYEAR (column) ---> extract the day_of_year
--

-- TIME FUNCTIONS ::::
--                      4. HOUR(column)        ---> extract the hour
--                      5. MINUTE(column)      ---> extract the minute
--                      6. SECOND(column)       ---> extract the second

-- DATETIME FUNCTIONS ::::  WORK WITH BOTH DATE and TIME


CREATE TABLE people_date
(
	
	name VARCHAR(100),
	birthdate DATE,
	birthtime TIME,
	birthdt DATETIME

);

INSERT INTO people_date (name, birthdate, birthtime, birthdt)
VALUES("JAVA", "1987-12-12", "10:12:44", "1987-12-12 10:12:44"),
("Jakir", "1988-11-10", "11:10:44", "1988-11-10 11:10:44"),
("Ashish", "1998-10-31", "01:09:40", "1998-10-31 01:09:40"),
("Akash", "1990-09-30", "02:09:40", "1990-09-30 02:09:40");

Select * from people_date;

-- Exc-1. Date Formatted as "April 27 2019"
select concat(MONTHNAME(birthdate), " ", DAY(birthdate), " ", YEAR(birthdate)  )
from people_date;

-- working with single time interval
select birthdt, DATE_ADD(birthdt, INTERVAL 1 MONTH)
from people_date;

-- working with multiple time interval
-- need to use (+, -) within the interval with datetime
select birthdt, birthdt + INTERVAL 1 MONTH
from people_date;

select birthdt, birthdt + INTERVAL 1 MONTH + INTERVAL 10 HOUR
from people_date;


