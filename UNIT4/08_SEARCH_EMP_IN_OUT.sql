CREATE OR REPLACE PROCEDURE SEARCH_EMP
(
    p_empno IN NUMBER,
    p_name OUT VARCHAR2
)
IS
BEGIN
    SELECT EName
    INTO p_name
    FROM EMP
    WHERE EID=p_empno;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        p_name:='Employee not found';
END;
/

DECLARE
    v_name VARCHAR2(50);
BEGIN
    SEARCH_EMP(&EID,v_name);

    dbms_output.put_line(v_name);
END;
/
