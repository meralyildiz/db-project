--get me unique job_ids
select distinct JOB_ID from EMPLOYEES;

--get me average salary for IT_PROG
select avg(SALARY)from EMPLOYEES
where JOB_ID = 'IT_PROG';

select JOB_ID, avg(SALARY), count(*), sum(SALARY)
from EMPLOYEES
group by JOB_ID;

--get me job_ids where their avg salary is more than 5k
select JOB_ID, avg(SALARY), count(*), sum(SALARY)
from EMPLOYEES
group by JOB_ID --here I finished grouping, I have to take the averege salary after gropupin
having avg(SALARY) >5000;--here I am taking average salary of each job ids, using having keyword





