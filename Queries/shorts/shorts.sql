/*
 1.selecting entire columns from a table:
        select * from TableName;
 2.selecting a single column from a table:
        select ColumnName TableName;
 3.Selecting Multiple Columns from a table:
        select ColumnName1, ColumnName2 .. from TableName;
 4.Selecting Column(s) from Multiple tables:
        Select TableName1.ColumnName1, TableName2.ColumnName2 from TableName1, TableName2;
 */

 select * from DEPARTMENTS;

select DEPARTMENT_NAME from DEPARTMENTS;

select DEPARTMENT_NAME, DEPARTMENT_ID from DEPARTMENTS;

/*
 command+space --> shortcut
 */


 select * from EMPLOYEES;
select * from DEPARTMENTS;
select * from EMPLOYEES, DEPARTMENTS;

select EMPLOYEES.EMPLOYEE_ID, DEPARTMENTS.DEPARTMENT_ID from EMPLOYEES,DEPARTMENTS;


/*
 distinct keyword: displays the result without the duplicates.
 */
 select distinct DEPARTMENT_ID from DEPARTMENTS;
select distinct SALARY from EMPLOYEES;
select distinct MAX_SALARY from JOBS;

