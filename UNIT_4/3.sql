SET SERVEROUTPUT ON;

DECLARE 
		v_eid NUMBER := &eid;	
		v_ename VARCHAR2(50);
BEGIN
	search_employee(v_eid,v_ename);

	IF v_ename IS NOT NULL THEN 
	DBMS_OUTPUT.PUT_LINE('Employee Name :' || v_ename);

	END IF;

END;
/