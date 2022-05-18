set serveroutput on

DECLARE 
 message varchar(20);

BEGIN

message := '&message';
dbms_output.put_line(message);


END;
/