CREATE OR REPLACE TRIGGER EMP_DELETE2
AFTER DELETE ON EMP
FOR EACH ROW
BEGIN
    INSERT INTO NEWEMP
    VALUES
    (
        :OLD.EID,
        :OLD.EName,
        :OLD.Deptno,
        :OLD.Deptname,
        :OLD.Gender,
        :OLD.Age,
        :OLD.BasicSal
    );
END;
/
