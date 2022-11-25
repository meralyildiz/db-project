--i want to see first name, last name, phone number od David(s)
select FIRST_NAME, LAST_NAME,PHONE_NUMBER
from EMPLOYEES
where FIRST_NAME = 'David' and LAST_NAME = 'Lee';

--get me all information who is making more than 7000 salary
select * from EMPLOYEES
where SALARY > 7000 ;

--get me email, salary of who is making less than 4000
select EMAIL, SALARY from EMPLOYEES
where SALARY < 4000 ;

--get me all info who is working as IT_PROG or SA_REP
select * from EMPLOYEES
where JOB_ID = 'IT_PROG' or JOB_ID ='SA_REP';

--get me first name, last name, salary who is making more than 5000 and lestt than 10000
select FIRST_NAME, LAST_NAME, SALARY
from EMPLOYEES
where SALARY >= 5000 and SALARY <=10000 ;
--or WHEN SALARY BETWEEN 5000 AND 1000;

--get me all info where emp_id 130 to 170
select * from EMPLOYEES
where EMPLOYEE_ID between 130 and 170;

--get me all info where employee_id 135, 176, 154, 129
select * from EMPLOYEES
where EMPLOYEE_ID = 135 or EMPLOYEE_ID=176 or EMPLOYEE_ID=154 or EMPLOYEE_ID=129;

select * from EMPLOYEES
where EMPLOYEE_ID in(135, 176, 154, 129);

--get me city where country id IT, US, Uk
select CITY from LOCATIONS
where COUNTRY_ID in('IT', 'US', 'UK');

