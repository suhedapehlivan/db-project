--get me unique jon_ids
select distinct JOB_ID from EMPLOYEES;

--get me average salary for each job_id
select JOB_ID, avg(SALARY)
from EMPLOYEES
group by JOB_ID;

--get me average salary for IT_PROG
select avg(SALARY)
from EMPLOYEES
where JOB_ID='IT_PROG';

--group by: is grouping the inputs, then implement the function each of the group(box)
-- istediğin kategori başlığını grup olarak ele almak için kullanılır
--group by ile (aggregate functions)tek sonuç alınacak şeyleri yapabilirsin;
-- min max avg count sum : aggregate functions

select JOB_ID
from EMPLOYEES
group by JOB_ID;


select JOB_ID, avg(SALARY),count(*),sum(SALARY)
from EMPLOYEES
group by JOB_ID;


--having: it works after you group,implement your group. having check list by group by
--but using where: filtre before you grouping. where check list by one by
--get me job_ids where their avg salary is more than 5k
select JOB_ID,avg(SALARY),count(*),sum(SALARY)
from EMPLOYEES
group by JOB_ID
having avg(SALARY) >5000;


select JOB_ID,avg(SALARY),count(*),sum(SALARY)
from EMPLOYEES
where SALARY>5000
group by JOB_ID;

/*
 GROUP BY
 the group by clause divides the rows retrieved from
 the select statement in to
 group basen on the row we provide.
This query groups all the record based on their job_id
 so that we can implement aggregate functions to each group.

 If we want to filter the result AFTER we got the group
 by query result, having clause

 The having statement sets the condition for group rows created
 by the GROUP BY clause after the GROUP by applies.

 where -individual
 group by- group

 WHERE clause sets the condition for individual rows BEFORE
 GROUP BY clause applies.
 */
