set serveroutput on
DECLARE 
   c_id Customerss.id%type; 
   c_name Customerss.name%type; 
   c_addr Customerss.address%type;
   c_sal Customerss.salary%type; 
   CURSOR c_Customerss is 
      SELECT id, name, address,salary FROM Customerss; 
BEGIN 
   OPEN c_Customerss; 
   LOOP 
   FETCH c_Customerss into c_id, c_name, c_addr,c_sal; 
      EXIT WHEN c_Customerss%notfound; 
      dbms_output.put_line(c_id || ' ' || c_name || ' ' || c_addr || '  ' || c_sal); 
   END LOOP; 
   CLOSE c_Customerss; 
END; 
/