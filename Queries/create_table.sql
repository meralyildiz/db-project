/*
create table syntax:
    create table TableName(
        colName1 DataType Constraints,
        colName2 DataType Constraints(optional)
        colName3 DataType Constraints,
        ...
    );
*/

create table ScrumTeam(
    Emp_Id INTEGER PRIMARY KEY,
    FirstName varchar(30) not null,
    LastName varchar(30),
    JobTitle varchar(20)
);

select * from SCRUMTEAM;

/*
INSERT INTO tableName (column1, column2,...)
VALUES (value1, value2 ... );
*/
insert into SCRUMTEAM(emp_id, firstname, lastname, jobtitle)
values (1, 'Severus','Snape','Tester');

insert into SCRUMTEAM values (2, 'Harold', 'Finch', 'Developer');

insert into SCRUMTEAM values (3, 'Phoebe', 'Finch', 'ScrumMaster');

insert into SCRUMTEAM values (4, 'Michael', 'Scofield', 'PO');