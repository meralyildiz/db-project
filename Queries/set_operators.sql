--UNION option put the list in the list from 1-10
--UNION sorts the result and remove all the duplicates
--we use UNION to combine data from similar tables that are not perfectly normalized
select * from DEVELOPERS
union
select * from TESTERS;


--UNION ALL leaves the original way of the list without ordering
--leaves everything as created, without sorting
select * from DEVELOPERS
union all
select * from TESTERS;

--MINUS will return values that are not common in 2 queries
--in this case it will return unique names of developer list without including the common intersection which is Steven
--shows records from query1 that are not present in query2
select * from DEVELOPERS
minus                   --in this case as we wanted to see everything Steven with different salary are considered diffrent value that's why in is included
select * from TESTERS;

select names from DEVELOPERS
minus                        --in this case we canted to see just names that's why we can not see Steven's name which is intersection
select NAMES from TESTERS;

--INTERSECT shows common records from 2 queries
select NAMES from DEVELOPERS
intersect
select NAMES from TESTERS;