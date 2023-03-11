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
 */


----------------

