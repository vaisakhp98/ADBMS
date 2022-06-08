CREATE OR REPLACE TRIGGER display_salary_changes
BEFORE DELETE OR INSERT OR UPDATE ON customer
FOR EACH ROW
WHEN (NEW.ID > 0)
DECLARE
    sal_diff number;
BEGIN
    sal_diff := :NEW.salary  - :OLD.salary;
    dbms_output.put_line('Old salary: ' || :OLD.salary);
    dbms_output.put_line('New salary: ' || :NEW.salary);
    dbms_output.put_line('Salary difference: ' || sal_diff);
END;
/


set serveroutput on
DECLARE
    total_rows number(2);
BEGIN
    UPDATE customer
    SET salary = salary + 5000;
    IF sql%notfound THEN
       dbms_output.put_line('no customers updated');
    ELSIF sql%found THEN
       total_rows := sql%rowcount;
       dbms_output.put_line( total_rows || '  customers updated ');
    END IF;
END;
/