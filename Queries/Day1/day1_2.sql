--I want to see firstname lastname phone number of david(s)

select FIRST_NAME,LAST_NAME,PHONE_NUMBER
from EMPLOYEES
where FIRST_NAME='David' and LAST_NAME='Lee';


--get me all information who is making more than 7000 salary
select * from EMPLOYEES
where SALARY> 7000;


--get me email of who is making less than 4000(what you display and what you filtre is different, independent)
select EMAIL from EMPLOYEES
where SALARY< 4000;


--get me all info who is working as IT_PROG or SA_REP
select * from EMPLOYEES
where JOB_ID='IT_PROG' or JOB_ID='SA_REP';


--get me first_name, last_name salary who is making more than 5000 and less than 10000
select FIRST_NAME,LAST_NAME,SALARY
from EMPLOYEES
where SALARY>=5000 and SALARY<=10000;

select FIRST_NAME,LAST_NAME,SALARY
from EMPLOYEES
where SALARY between 5000 and 10000;