--how to find employees information of who is making highest salary in the company

--get me the highest salary
select max(SALARY) from EMPLOYEES;

--highest salary employee information
select * from EMPLOYEES
where SALARY =24000;

--sub-query
--query inside the query
--first the inner query will be executed then the outer query will
select * from EMPLOYEES --outer query
where SALARY = (select max(SALARY) from EMPLOYEES);
                  --( inner query )


--finding second highest salary
--get the highest salary first
select max(SALARY) from EMPLOYEES;

--second find the highest salary after 24k
select max(SALARY)
from EMPLOYEES
where SALARY <24000;

--one shot combining two queries
select max(SALARY)
from EMPLOYEES
where SALARY <(select max(SALARY) from EMPLOYEES);


--employee information of who is making second highest salary?
select * from EMPLOYEES
where SALARY = (select max(SALARY)
                from EMPLOYEES
                where SALARY <(select max(SALARY) from EMPLOYEES));

--------------------
select *from EMPLOYEES;

select *from EMPLOYEES
order by SALARY desc;

select *
from EMPLOYEES
where ROWNUM <11;

--list the employees who is making top 10 salary

--get the first 10 people then order them high to low based on salary
select *
from EMPLOYEES
where ROWNUM <11
order by SALARY desc;

--order all employees based on the salary high to low then display only first 10 result
--THE MOST ASKED QUESTION IN THE INTERVIEW
select *
from (select *from EMPLOYEES order by SALARY desc)
where ROWNUM <11;





