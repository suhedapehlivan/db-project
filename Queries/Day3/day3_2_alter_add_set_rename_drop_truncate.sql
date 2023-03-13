select * from SCRUMTEAM;

--adding new column
ALTER TABLE SCRUMTEAM add salary Integer;


--update existing employees salary
update SCRUMTEAM set salary =100000 where EMP_ID=1;

update SCRUMTEAM set salary =90000 where EMP_ID=2;

update SCRUMTEAM set salary =120000 where EMP_ID=4;

--or we can add with or
-- update SCRUMTEAM set salary =100000 where EMP_ID=1 or EMP_ID=2;
select * from SCRUMTEAM;


--rename the column
ALTER TABLE SCRUMTEAM RENAME COLUMN salary To annual_salary;

select * from SCRUMTEAM;




--delete , drop column
ALTER TABLE SCRUMTEAM DROP COLUMN annual_salary;

select * from SCRUMTEAM;



--how to change table name
ALTER TABLE SCRUMTEAM RENAME TO agileteam;

select * from agileteam;

commit;



--truncate, if we want to delete all data from the table,
--but still keep the data structure, we use truncate
TRUNCATE TABLE  agileteam;


--if we want to delete the table and data together
DROP TABLE agileteam;