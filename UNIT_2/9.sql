SET SERVEROUTPUT ON;

DECLARE
   -- Cursor with LIKE operator
   CURSOR c_customers IS
      SELECT ID, Name, Address
      FROM CUSTOMER
      ORDER BY ID;

BEGIN
   -- Cursor FOR loop
   FOR rec IN c_customers LOOP
      DBMS_OUTPUT.PUT_LINE('ID: ' || rec.ID || ', Name: ' || rec.Name ||  ', Address: ' || rec.Address);
   END LOOP;
END;
/
