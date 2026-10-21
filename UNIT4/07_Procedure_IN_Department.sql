CREATE OR REPLACE PROCEDURE INCREASE_DEPT_SALARY
(
    p_deptno IN NUMBER,
    p_amount IN NUMBER
)
IS
BEGIN
    UPDATE EMP
    SET BasicSal=BasicSal+p_amount
    WHERE Deptno=p_deptno;

    dbms_output.put_line(SQL%ROWCOUNT||' records updated');

    COMMIT;
END;
/

BEGIN
    INCREASE_DEPT_SALARY(&Deptno,&Amount);
END;
/
