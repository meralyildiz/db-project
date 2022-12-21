/*
create table syntax:
    create table TableName(
        colName1 DataType Constraints,
        colName2 DataType Constraints(optional)
        colName3 DataType Constraints,
        ...
    );
*/
CREATE TABLE MyTeam(
                          Emp_ID Integer Primary Key,
                          FirstName varchar(30) not null,
                          LastName varchar(30),
                          JobTitle varchar(20)

);

select * from MYTEAM;

/*
INSERT INTO tableName (column1, column2,...)
VALUES (value1, value2 ... );
*/
INSERT INTO MYTEAM(emp_id,firstname,lastname,jobtitle)
VALUES (1,'Severus','Snape','Tester');
INSERT INTO MYTEAM VALUES (2,'Harold','Finch','Developer');
INSERT INTO MYTEAM VALUES (3,'Phoebe','Buffay','ScrumMaster');
INSERT INTO MYTEAM VALUES (4,'Michael','Scofield','PO');


--how to update data
/*
UPDATE table_name
SET column1 = value1,
column2 = value2 , ...
WHERE condition;
*/
UPDATE MYTEAM
SET jobtitle = 'Tester'
WHERE emp_id = 4;


--Delete from table
/*
DELETE FROM table_name
WHERE condition;
*/
delete from MYTEAM
where EMP_ID = 3;

commit;

