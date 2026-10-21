CREATE OR REPLACE PROCEDURE INCREASE_SALARY
(
    p_deptno IN NUMBER,
    p_per IN NUMBER
)
IS
BEGIN
    UPDATE EMP
    SET BasicSal=BasicSal+(BasicSal*p_per/100)
    WHERE Deptno=p_deptno;

    dbms_output.put_line(SQL%ROWCOUNT||' records updated');

    COMMIT;
END;
/

BEGIN
    INCREASE_SALARY(&Deptno,&Percentage);
END;
/
