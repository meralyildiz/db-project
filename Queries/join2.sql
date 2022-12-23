select * from EMPLOYEES;

select * from DEPARTMENTS;

select FIRST_NAME, LAST_NAME, DEPARTMENT_NAME
from EMPLOYEES e join DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID;


select FIRST_NAME, LAST_NAME, DEPARTMENT_NAME
from EMPLOYEES e left join DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

--left outer join with condition where we are adding in to the join the address id is null
select  CUSTOMER_ID, FIRST_NAME, LAST_NAME, ADDRESS, PHONE
from CUSTOMER left outer join ADDRESS
on CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID
where ADDRESS.ADDRESS_ID is null ;

--full outer join with condition: we are removing the intersection part
select * from CUSTOMER full outer join ADDRESS
on CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID
where CUSTOMER.ADDRESS_ID is null or
ADDRESS.ADDRESS_ID is null;



