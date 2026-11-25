CREATE OR REPLACE TRIGGER trg_update_newemp
BEFORE UPDATE ON EMP
FOR EACH ROW
BEGIN
    INSERT INTO NEWEMP (EID, EName, Deptno, Deptname, Gender, Age, BasicSal)
    VALUES (:OLD.EID, :OLD.EName, :OLD.Deptno, :OLD.Deptname, :OLD.Gender, :OLD.Age, :OLD.BasicSal);
END;
/