CREATE OR REPLACE TRIGGER trg_insert_newemp
AFTER INSERT ON EMP
FOR EACH ROW
BEGIN
    INSERT INTO NEWEMP (EID, EName, Deptno, Deptname, Gender, Age, BasicSal)
    VALUES (:NEW.EID, :NEW.EName, :NEW.Deptno, :NEW.Deptname, :NEW.Gender, :NEW.Age, :NEW.BasicSal);
END;
/