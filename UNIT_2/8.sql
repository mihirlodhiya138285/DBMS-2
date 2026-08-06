SET SERVEROUTPUT ON;

DECLARE
   -- Cursor with LIKE operator
   CURSOR c_customers IS
      SELECT ID, Name, Address
      FROM CUSTOMER
      WHERE Name LIKE 'A%';   -- Example: names starting with 'A'

BEGIN
   -- Cursor FOR loop
   FOR rec IN c_customers LOOP
      DBMS_OUTPUT.PUT_LINE('ID: ' || rec.ID || ', Name: ' || rec.Name ||  ', Address: ' || rec.Address);
   END LOOP;
END;
/
