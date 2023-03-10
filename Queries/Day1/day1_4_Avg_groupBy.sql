--get me unique jon_ids
select distinct JOB_ID from EMPLOYEES;


--get me average salary for IT_PROG
select avg(SALARY)
from EMPLOYEES
where JOB_ID='IT_PROG';

--group by: is grouping the inputs, then implement the function each of the group(box)
-- istediğin kategori başlığını grup olarak ele almak için kullanılır
--group by ile tek sonuç alınacak şeyleri yapabilirsin;
-- min max avg count sum

select JOB_ID
from EMPLOYEES
group by JOB_ID;


select JOB_ID, avg(SALARY),count(*),sum(SALARY)
from EMPLOYEES
group by JOB_ID;


--having
--get me job_ids where their avg salary is more than 5k
select JOB_ID,avg(SALARY),count(*),sum(SALARY)
from EMPLOYEES
group by JOB_ID
having avg(SALARY) >5000;
