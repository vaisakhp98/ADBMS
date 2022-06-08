SET SERVEROUTPUT ON;
CREATE PROCEDURE list_name (INOUT name_list varchar(4000))
BEGIN
DECLARE is_done INTEGER DEFAULT 0;
DECLARE s_name varchar(100) DEFAULT "";
-- declare cursor for employee email
DEClARE stud_cursor CURSOR FOR
SELECT name FROM table1;

-- declare NOT FOUND handler
DECLARE CONTINUE HANDLER FOR NOT FOUND SET is_done = 1;

OPEN stud_cursor;

get_list: LOOP
FETCH stud_cursor INTO s_name;
IF is_done = 1 THEN
LEAVE get_list;
END IF;
-- build email list
SET name_List = CONCAT(s_name,";",name_List);
END LOOP get_list;
CLOSE stud_cursor;

END$$
