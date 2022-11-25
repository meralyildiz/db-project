--get me info who is working as IT_PROG or SA_REP
select * from EMPLOYEES
where JOB_ID in ('IT_PROG', 'SA_REP');

--how many employee woring as IT_PROG or SA_REP
select count(*) from EMPLOYEES --count(*) gives me/ retrieves the exact number in int number of employees working as select * from EMPLOYEES
where JOB_ID in ('IT_PROG', 'SA_REP');

--how many employees making more than 8000
select count(*) from EMPLOYEES
where SALARY > 8000;

select count(distinct FIRST_NAME) --combination of count and distinct
from EMPLOYEES; --count(distinct FIRST_NAME gives us unique name

--get me all employees information based on who is making more salary
select * from EMPLOYEES
order by SALARY desc ;
--order by desc 9-0, z-a this is to sort the list
--oprder by asc 0-9 a-z


--get me all employees information based on firstname
select * from EMPLOYEES
order by FIRST_NAME asc; --by default order by is sorting ascending if you don't specify after column name

--get me all the employees whose first name starts with c
select * from EMPLOYEES
where FIRST_NAME like 'C%'; --% doesn't limit the characters,it could be infinite

select * from EMPLOYEES
where FIRST_NAME like 'C____';--Letter+_ (you can put how many underscore that you wish, you can giving the limitation
--each underscore represents one character )

--get me 5 letter first names where the middle char is z
select * from EMPLOYEES
where FIRST_NAME like '__z__';

--get me first name where second char is u
select *
from EMPLOYEES
where FIRST_NAME like '_u%';

--find me minimum salary
select min(SALARY) from EMPLOYEES;

--find me max salary
select max(SALARY) from EMPLOYEES;

--find me max salary
select avg(SALARY) from EMPLOYEES;

--round
select round(avg(SALARY),2) from EMPLOYEES;
--round(avg(SALARY), 2) --> 2 stand for decimal part, so it will give us average salary rounded with decimal


select sum(SALARY) from EMPLOYEES;



