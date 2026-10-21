CREATE OR REPLACE PROCEDURE UPDATE_EMP
IS
BEGIN
    UPDATE EMP
    SET BasicSal=BasicSal+1000
    WHERE EID=&EID;

    COMMIT;

    dbms_output.put_line('Record updated successfully');
END;
/

BEGIN
    UPDATE_EMP;
END;
/
