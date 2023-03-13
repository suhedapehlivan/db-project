/*
create table syntax:
    create table TableName(
        colName1 DataType Constraints,
        colName2 DataType Constraints(optional)
        colName3 DataType Constraints,
        ...
    );
*/
--varchar is like String & (30) is limitation of characters
--primary key: you should put notNull and unique data.

CREATE TABLE ScrumTeam(
        Emp_ID Integer PRIMARY KEY ,
        FirstName varchar(30) not null ,
        LastName varchar(30),
        JobTitle varchar(20)

);

select * from SCRUMTEAM;



--Insert- adding datas to table that we created
/*
 INSERT INTO tableName (column1, column2,...)
VALUES (value1, value2 ... );
 */
 INSERT INTO ScrumTeam(emp_id, firstname, lastname, jobtitle)
values (1,'Severus','Snape','Tester');

select * from SCRUMTEAM;

--or
INSERT INTO ScrumTeam values (2,'Harold','Finch','Developer');

INSERT INTO ScrumTeam values (3,'Phoebe','Buffay','ScrumMaster');

INSERT INTO ScrumTeam values (4,'Michael','Scofield','PO');

select * from SCRUMTEAM;



--how to update data
/*
UPDATE table_name
SET column1 = value1,
column2 = value2 , ...
WHERE condition;
*/
Update ScrumTeam
SET JOBTITLE='Tester'
WHERE EMP_ID =4;

select * from SCRUMTEAM;




--Delete from table
/*
DELETE FROM table_name
WHERE condition;
*/

DELETE FROM ScrumTeam
where EMP_ID=3;

select * from SCRUMTEAM;


--saving changes
commit;
--when you change sth from tables database, you should commit