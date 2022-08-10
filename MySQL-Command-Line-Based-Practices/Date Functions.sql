-- Working with the DATE Functions
-- Just Date not Time
-- DATE Format :  "YYYY-MM-DD"
-- DATE Function ---->  1. CURDATE() --> current date
--                      2. CURTIME() --> current time
--                      3. NOW()     --> current datetime

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
("Ashish", "1998-10-31", "01:09:40", "1998-10-31 01:09:40");

Select * from people_date;
