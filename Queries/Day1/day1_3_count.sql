--get me info who is working as IT_PROG or SA_REP

select * from EMPLOYEES
where JOB_ID in('IT_PROG','SA_REP');

--how many employee working as IT_PROG or SA_REP
select count(*) from EMPLOYEES
where JOB_ID in('IT_PROG','SA_REP');