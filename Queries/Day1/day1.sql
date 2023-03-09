select * from EMPLOYEES;
--reads all column from employees table

select * from DEPARTMENTS;

select FIRST_NAME from EMPLOYEES;
--get only firstname from employees table

--display city names
select CITY from LOCATIONS;

--get me firstname, lastname and salary
select FIRST_NAME,LAST_NAME,SALARY from EMPLOYEES;
--SHORTCUT to run command+enter

--get me street address and postalcode
select STREET_ADDRESS,POSTAL_CODE from LOCATIONS;

select distinct FIRST_NAME from EMPLOYEES;
--remove duplicates. distinct . if you want to see unique use distinct keyword.


