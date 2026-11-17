CREATE OR REPLACE TRIGGER EMP_INSERT
AFTER INSERT ON EMP
FOR EACH ROW
BEGIN
    INSERT INTO NEWEMP
    VALUES
    (
        :NEW.EID,
        :NEW.EName,
        :NEW.Deptno,
        :NEW.Deptname,
        :NEW.Gender,
        :NEW.Age,
        :NEW.BasicSal
    );
END;
/
