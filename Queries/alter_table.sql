select * from MYTEAM;

--adding new column
alter table MYTEAM add salary Integer;

--update existing employees salary
update MYTEAM
set salary =100000
where EMP_ID = 1;

update MYTEAM
set salary = 110000
where EMP_ID = 2;

update MYTEAM
set salary = 120000
where EMP_ID=4;

--rename the column
alter table MYTEAM
rename column salary to annual_salary;

--delete or drop the column
alter table MYTEAM
drop column annual_salary;

--how to change table name
alter table MYTEAM
rename to agileTeam;

select *
from agileTeam;

commit ;


--truncate, if we want to delete all data from the table, but still keep the table structure, we use truncate
truncate table agileTeam;

--if we want to delete the table and data together
drop table SCRUMTEAM;
