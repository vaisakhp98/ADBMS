set serveroutput on
DECLARE  
   total_rows number(5); 
BEGIN 
   UPDATE Customerss 
   SET salary = salary + 500; 
   IF sql%notfound THEN 
      dbms_output.put_line('no employee selected'); 
   ELSIF sql%found THEN 
      total_rows := sql%rowcount;
      dbms_output.put_line( total_rows || ' employees selected '); 
   END IF;  
END; 
/     