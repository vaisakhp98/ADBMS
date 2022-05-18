set serveroutput on;

DECLARE 
n NUMBER :=&n;


BEGIN
IF MOD(n,2)=0 
THEN 
dbms_output.put_line('The number is even');
ELSE
dbms_output.put_line('The number is odd');

END if;

END;
/