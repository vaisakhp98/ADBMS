declare

	n number;
	m number;
	temp number:=0;
	ld number;

begin
	n:=&n;
	m:=n;
	
	
	while n>0
	loop
		ld:=mod(n,10);
		temp:=(temp*10)+rem;
		n:=trunc(n/10);
	end loop; 
	
	if m = temp
	then
		dbms_output.put_line('The number is a palindrome');
	else
		dbms_output.put_line('The number is not a palindrome');
	end if;
end;
/

