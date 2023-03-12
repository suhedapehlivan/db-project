--how to find employees information of who is making highest salary in the company

--1.get me the highest salary
select max(SALARY) from EMPLOYEES;
--2.highest salary employee information
select *
from EMPLOYEES
where SALARY= 24000; --this is not dynamic, it can be change

--to combine 2 steps; dynamic
--"subquery" solution in one shot (query inside a query)(like nested loops)
--first executed inner query, than the outer query executed
select *
from EMPLOYEES
where SALARY= (select max(SALARY) from EMPLOYEES);



--finding second highest salary
--1.get me the highest salary first
select max(SALARY) from EMPLOYEES;
--2.highest after 24k
select max(SALARY)
from EMPLOYEES
where SALARY< 24000; --static

--one shot combining two queries- dynamic
select max(SALARY)
from EMPLOYEES
where SALARY< (select max(SALARY) from EMPLOYEES);

--employee information of who is making second highest salary?
--INTERVIEW QUESTION*******************
select *
from EMPLOYEES
where SALARY= (select max(SALARY)
               from EMPLOYEES
               where SALARY< (select max(SALARY) from EMPLOYEES));

--Subquery
/*Using one query inside the another query.
  We can use nested queries in sql
  For example: If we want to get all info who
  is earning the highest salary
  First we need to learn what is the highest
  salary in the table

  --1.get me the highest salary
  select max(SALARY) from EMPLOYEES;

  Which is 24000

  Then we can use this result in another
  query to get all information

  --2.highest salary employee information
select *
from EMPLOYEES
where SALARY= 24000;

  But instead of 2 queries we can use first query
  inside the second query as an input

--"subquery" solution in one shot (to be dynamic) (query inside a query)(like nested loops)
--first executed inner query, than the outer query executed
select *
from EMPLOYEES
where SALARY= (select max(SALARY) from EMPLOYEES);

  So we use first query as an inner query and it will be executed first,
  then the result will be used in outer query.
 */


----------------

select * from EMPLOYEES;


select *
from EMPLOYEES
where ROWNUM <11; --shows first 10 in list


select * from EMPLOYEES
order by SALARY desc ;




--get the first 10 people then order them high to low based on salary
select *
from EMPLOYEES
where ROWNUM <11
order by SALARY desc;

--list the employees who is making top 10 salary
--order all employees based on salary high to low then display only first 10 result
--(first order (rank the results), then select top10)

select *
from (select * from EMPLOYEES
      order by SALARY desc)
where ROWNUM <11;



/*
 ROWNUM
 Limits the number of result displayed in the query.

 select *
from EMPLOYEES
where ROWNUM <11;

 If we want to use order by first then row number,
 we need to order table first based on our needs(salary high to low)
 then use that query result as a table to get number of rows.

 --order all employees based on salary high to low then display only first 10 result

select *
from (select * from EMPLOYEES
      order by SALARY desc)
where ROWNUM <11;


 For other databases like postgresql, mysql
 the keyword is LIMIT and it comes after all clauses

 select *
from EMPLOYEES
where ROWNUM <11
order by SALARY desc
 limit 10;
 but limit doesnt work in here
 */