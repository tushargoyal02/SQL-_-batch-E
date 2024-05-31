use  isha;

show tables;
select * from abc2;

-- dml operation
delete from abc2 where id=1;

-- update (dml)
select * from abc2;

update abc2 set id=10;
select * from abc2;

-- DDL ( create  , drop, truncate, alter)
show tables;
drop table abc1;

select * from abc2;

truncate abc2;
 
 
 
use sakila;
select * from actor;

create table o1  as select * from actor;
select * from o1;

create table o2  as select actor_id, first_name from actor;
select * from o2;

create table o3
  as select actor_id as id, first_name as name from actor;
select * from o3;