set serveroutput on

declare
-- it gives the final answer after computation
fac number :=1;

-- given number n
-- taking input from user
n number := &1;

-- start block
begin		

-- start while loop	
while n > 0 loop

-- multiple with n and decrease n's value
fac:=n*fac;		
n:=n-1;		
end loop;		
-- end loop

-- print result of fac
dbms_output.put_line(fac);

-- end the begin block
end;			
/