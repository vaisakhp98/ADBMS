set serveroutput on

DECLARE
message varchar(20):='Hello world !';

BEGIN
dbms_output.put_line(message);


END;
/