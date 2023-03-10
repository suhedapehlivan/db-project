--get me info who is working as IT_PROG or SA_REP

select * from EMPLOYEES
where JOB_ID in('IT_PROG','SA_REP');

--how many employee working as IT_PROG or SA_REP
select count(*) from EMPLOYEES
where JOB_ID in('IT_PROG','SA_REP');

--count: gives the number of result


--how many employees making more than 8000
select COUNT(*) from EMPLOYEES
where SALARY>8000;


--how many unique first names we have
select count(distinct FIRST_NAME) from EMPLOYEES;


--Order
--desc 9-0 Z-A
--asc 0-9 A-Z
--default order is asc(ascending order)
--Note: default order type is asc if you dont specify after column name

-- get me all employees information based on who is making more salary to low salary
select * from EMPLOYEES
order by SALARY desc;

-- get me all emp info order by alphabetical based on firstname
select * from EMPLOYEES
order by FIRST_NAME asc;



--get me all employees whose first name starts with C
--C% : % means not important the other characters
select *
from EMPLOYEES
where FIRST_NAME like 'C%';

--underscore represents only one character C____ (5 letter first ch is C)
select *
from EMPLOYEES
where FIRST_NAME like 'C____';

--get me 5 letter first names where the middle char iz z;
select *
from EMPLOYEES
where FIRST_NAME like '__z__';

-- if we say %z__ :it can be anything before z

--get me first name where second char is u
select *
from EMPLOYEES
where FIRST_NAME like '_u%';

--find me minimum salary
select min(SALARY) from EMPLOYEES;

--find me max salary
select max(SALARY) from EMPLOYEES;

--find me avg salary
select avg(SALARY) from EMPLOYEES;

--round(yuvarlar sayıyı. ,2 yaparsan , den sonra 2 basamak bırakacak şekilde olur)
select round(avg(SALARY),2) from EMPLOYEES;


