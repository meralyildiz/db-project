--how can we rename the column that we display
select FIRST_NAME as "given_name", LAST_NAME as "surname"
from EMPLOYEES;

--text functions, string mani
--java first_name +" "+last_name ==>concatenation
--in sql concat is ||
select FIRST_NAME|| ' '|| LAST_NAME as "full_name"
from EMPLOYEES;

--add @gmail.com and name new column full email
--write it in lower case
select lower(EMAIL ||'@gmail.com')  AS "FULL_EMAIL"
from EMPLOYEES;


--add @gmail.com and name new column full email
--write it in upper case
select upper(EMAIL ||'@gmail.com')  AS "FULL_EMAIL"
from EMPLOYEES;

--length(value)
select FIRST_NAME, length(FIRST_NAME) as "length_name"
from EMPLOYEES
order by "length_name" desc ;


--substr(colName, begIndex, NumberOfChar)
select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME, 0,1) as "initials",
FIRST_NAME|| ' '|| LAST_NAME as "full_name",lower(EMAIL ||'@gmail.com')  AS "FULL_EMAIL"
from EMPLOYEES;


--VIEW
CREATE VIEW  emailList_Meral as select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME, 0,1) as "initials",
FIRST_NAME|| ' '|| LAST_NAME as "full_name",lower(EMAIL ||'@gmail.com')  AS "FULL_EMAIL"
from EMPLOYEES;

select "full_name"
from emailList_Meral;

--to remove the view
drop view EMAILLIST;







