/*

SQL DML Based Commands Concept
==============================
-- SQL DML(Data Manipulation Language) is used to perform manipulation of data/records.
-- These DML uses to perform some logical operation on data.

	DML Based Statements
	====================

	a) INSERT statement
	--------------------
	INSERT statement is used to insert single or multiple data/records inside a table.
	Syntax:
			INSERT INTO table_name (column1, column2, ...) VALUES(val1, val2, ...)
	
	Example-
			INSERT INTO customers (customer_id, customer_name, customer_payement_type)
			VALUES(1001, "X", "DBBL");

	b) Update statement
	-------------------
	UPDATE statement is used to modify existing records in a table.
	Syntax:
			UPDATE table_name
			SET column1 = val1, column2 = val2, ...
			WHERE condition;

	Example- 
			UPDATE customers 
			SET customer_name = "Y", customer_city="Zerno"
	        WHERE customer_id = 1001
	
	c) DELETE statement
	-------------------
	DELETE statement is used to delete records from the existing table.
	Syntax:
			DELETE FROM table_name [WHERE condition];
	
	Example-
			DELETE FROM customers WHERE customer_name = "X";

*/
