SET SERVEROUTPUT ON;

BEGIN
    -- Update empolyees in department 10
    UPDATE EMP
    SET EName  = 'KLAUS'
    WHERE Deptno = 20;
    COMMIT;
 END;
 /