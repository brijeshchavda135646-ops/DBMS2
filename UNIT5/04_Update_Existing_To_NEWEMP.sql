CREATE OR REPLACE TRIGGER EMP_UPDATE
AFTER UPDATE ON EMP
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
