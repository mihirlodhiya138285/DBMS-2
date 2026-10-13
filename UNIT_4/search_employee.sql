CREATE OR REPLACE PROCEDURE search_employee(
	p_eid IN NUMBER,
	p_ename OUT VARCHAR2
)
IS 
BEGIN 
	SELECT ENAME
	INTO p_ename 
	FROM emp
	WHERE EID = p_eid;

EXCEPTION 
	WHEN NO_DATA_FOUND THEN 
	p_ename := NULL;
	DBMS_OUTPUT.PUT_LINE('ERROR : Employee_ID' || p_eid ' not found. ');

	WHEN TOO_MANY_ROWS THEN 
		p_name := NULL;
		DBMS_OUPUT.PUT_LINE('ERROR : More than one employee found.')
END;
/