CREATE OR REPLACE TRIGGER EMP_UPDATE2
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
