/*
	Data Definition Language(DDL)
	=============================
	DDL is used to change the structure of the table like- creating, altering or deleting tables.
	It is basically used to define the relation model(ER).
	
	DDL Based Command For Different Working
	=======================================
	a) To Create A Table ==> use 'CREATE' Statement 
		-- Syntax Of Creating Tables
		-- Syntax:
				
				CREATE TABLE table_name
				(
					column1 datatype,
					column2 datatype,
					................
					columnN datatype
				);

	
	b) To add, modify or delete columns of an existing table ==> use 'ALTER' Statement
		--Syntax:
				ALTER TABLE table_name
				ADD column_name datatype;
	
	c) To delete table ==> use 'DELETE' Statement
		-- Syntax:
				DELETE TABLE table_name	

	d) To delete all rows(records) ==> use 'TRUNCATE' Statement
		-- It is similar like 'DELETE', but with no WHERE clause.
		-- Syntax:
				TRUNCATE TABLE table_name;


*/	


