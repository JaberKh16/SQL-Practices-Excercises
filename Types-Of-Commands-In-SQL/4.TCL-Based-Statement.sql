/*
	SQL TCL Based Commands
	======================
	-- TCL stands for Transaction Control Language which is used to perform transaction on data.


		TCL Based Statements
		--------------------
		a) COMMIT statement
		-------------------
		COMMIT statement is used to save all the transaction before the last commit or rollback.
		Syntax:
				COMMIT 

		Example-
				
				DELETE FROM student_info WHERE student_id= 2002;
				COMMIT;

	    b) ROLLBACK statement
		---------------------
		ROLLBACK statement is used to control the group of sql statements when some error has occured, 
		it genereally abort all the statements. This is basically used to reverse the changes of 
		previously commited statements.
		Syntax-
				DELETE FROM student_info WHERE student_id = 2002;
				ROLLBACK;

*/
