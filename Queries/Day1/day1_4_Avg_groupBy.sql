--get me unique jon_ids
select distinct JOB_ID from EMPLOYEES;


--get me average salary for IT_PROG
select avg(SALARY)
from EMPLOYEES
where JOB_ID='IT_PROG';

--group by: istediğin kategori başlığını grup olarak ele almak için kullanılır
select JOB_ID, avg(SALARY),count(*),sum(SALARY)
from EMPLOYEES
group by JOB_ID;