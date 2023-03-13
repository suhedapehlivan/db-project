CREATE TABLE address(
                        address_id Integer PRIMARY KEY,
                        address VARCHAR(50) NOT NULL,
                        phone Integer NOT NULL
);


INSERT INTO address (address_id, address, phone) VALUES (5, '1913 Hanoi Way' , 28303384);
INSERT INTO address (address_id, address, phone) VALUES (7, '692 Joliet Street' , 44847719);
INSERT INTO address (address_id, address, phone) VALUES (8, '1566 Inegl Manor' , 70581400);
INSERT INTO address (address_id, address, phone) VALUES (10, '1795 Santiago ' , 86045262);
INSERT INTO address (address_id, address, phone) VALUES (11, '900 Santiago ' , 16571220);


CREATE TABLE customer(
                         customer_id Integer PRIMARY KEY,
                         first_name VARCHAR(50) NOT NULL,
                         last_name VARCHAR(50)NOT NULL,
                         address_id Integer REFERENCES address(address_id)
);

INSERT INTO customer (customer_id, first_name, last_name, address_id) VALUES (1, 'Mary' , 'Smith', 5);
INSERT INTO customer (customer_id, first_name, last_name, address_id) VALUES (2, 'Patricia' , 'Johnson' , NULl);
INSERT INTO customer (customer_id, first_name, last_name, address_id) VALUES (3, 'Linda' , 'Williams' , 7);
INSERT INTO customer (customer_id, first_name, last_name, address_id) VALUES (4, 'Barbara' , 'Jones' , 8);
INSERT INTO customer (customer_id, first_name, last_name, address_id) VALUES (5, 'Elizabeth' , 'Brown' , NULL);


commit work;


select * from customer;
select * from address;


--to join two tables with connection common(matching) column
-- if you have value matching in both sides, you gonna display that matching result it is called: inner join
--join(table)  on(condition)
-- you can write join, it means inner join (default)
select first_name,last_name,address,phone
from customer join address
on customer.address_id = address.address_id;

--if you add column which is inside both table, you should specify like customer.address_id or address.address_id
select first_name,last_name,customer.address_id,address,phone
from customer join address
on customer.address_id = address.address_id;

--to write the same syntax with shortcut use the first letter
select first_name,last_name,c.address_id,address,phone
from customer c join address a
on c.address_id = a.address_id;




--LEFT OUTER JOIN
--gets the whole left table( with matching part)
--sadece ortak olan satırlar değil, left table daki tüm satırlar da gelecek
-- in syntax you just add -> left join (left outer join)
select first_name,last_name,c.address_id,address,phone
from customer c left join address a
on c.address_id = a.address_id;



--RIGHT OUTER JOIN
--gets the whole right table( with matching part)
--sadece ortak olan satırlar değil, right table daki tüm satırlar da gelecek
-- in syntax you just add -> right join (right outer join)
select first_name,last_name,c.address_id,a.address_id,address,phone
from customer c right join address a
on c.address_id = a.address_id;


--FULL OUTER JOIN
--it will display all of them, common ones count once
select first_name,last_name,c.address_id,a.address_id,address,phone
from customer c full join address a
on c.address_id = a.address_id;









