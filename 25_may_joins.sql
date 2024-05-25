

-- where clause vs having clause

-- kuch table  ( Join)

create database testing;
use testing;
create table product(pid int, pname varchar(20), oid int);
insert into product values(1,"tv",100),(2,"mobile",300);

create table orders(oid int, city varchar(20));
insert into orders values(100,"Jaipur"),(200,"goa"),(300,"hp");

select * from product;
select * from orders;
-- method 1
select pid, pname,city,orders.oid from 
product join orders
where (product.oid = orders.oid);

-- method2
select pid, pname,city,orders.oid from 
product join orders using (oid);

-- method 3
select pid, pname,city,orders.oid from 
product inner join orders on (product.oid = orders.oid);


select pid, pname,city,orders.oid from 
product right join orders on (product.oid = orders.oid);

-- natural join  ( bakwas join)

select pid, pname, city, product.oid, orders.oid
from product natural join orders;

-- self join

create table employee(eid int, ename varchar(20), mid int);

insert into employee values(10,"tushar",null),(20,"aman",30),
(30,"mayank",10),(40,"ujjwal",20);

select emp.eid,emp.ename, emp.mid,
 mgr.eid , mgr.ename
from employee as emp  join employee as mgr
where emp.mid = mgr.eid;





use sakila;
select * from actor;
select * from film_actor;
select * from film;
select a.actor_id, a.first_name, a.last_name,
fa.film_id
from actor  join film_actor
where ( a.actor_id=fa.actor_id);



select actor.actor_id, first_name, last_name,
film_actor.film_id, film.title
from actor  join film_actor join film
where ( actor.actor_id=film_actor.actor_id) and
(film_actor.film_id= film.film_id);