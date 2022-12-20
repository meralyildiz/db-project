--find the highest 14th salary (removing the duplicates)
select MIN(SALARY)
from (select distinct SALARY from EMPLOYEES
      order by SALARY desc)
where ROWNUM < 15;

--THIS IS TO GET ALL THE LIST OF THE SALARY LIST WITHOUT DUPLICATES
select *
from (select distinct SALARY from EMPLOYEES
      order by SALARY desc);

--find employee info who is making 14th highest salary (with duplicates)
select *
from EMPLOYEES
where SALARY =(select MIN(SALARY)
               from (select distinct SALARY from EMPLOYEES order by SALARY desc)
               where ROWNUM < 15);
