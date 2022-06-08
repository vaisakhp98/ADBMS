DECLARE  
   total_rows number(2); 
BEGIN 
   UPDATE customers 
   SET SALARY = SALARY + 500; 
   IF sql%notfound THEN 
      dbms_output.put_line('no employees selected'); 
   ELSIF sql%found THEN 
      total_rows := sql%rowcount;
      dbms_output.put_line( total_rows || ' employees selected '); 
   END IF;  
END; 
/     