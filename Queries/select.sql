--reads all column from employees table
select * from EMPLOYEES;

--reads all column from departments table
select * from DEPARTMENTS;

-- get only first name from employees table
select FIRST_NAME from EMPLOYEES;

--display city names
select CITY from LOCATIONS ;

--get me first_name, last_name and salary
--to retrieve different columns we need to write column names and comma (,)
select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES ;

--get me street address and postal code
select STREET_ADDRESS, POSTAL_CODE from LOCATIONS;


--get only unique names, not duplicated names, removes duplicates
select distinct FIRST_NAME from EMPLOYEES; --distinct is to sort the unique name in this case





