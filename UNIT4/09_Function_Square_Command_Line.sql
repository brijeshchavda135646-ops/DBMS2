CREATE OR REPLACE FUNCTION SQUARE
(
    n NUMBER
)
RETURN NUMBER
IS
BEGIN
    RETURN n*n;
END;
/

DECLARE
    ans NUMBER;
BEGIN
    ans:=SQUARE(&number);

    dbms_output.put_line('Square:'||ans);
END;
/

SELECT SQUARE(&number) FROM DUAL;
