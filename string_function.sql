

# operator
use sakila;

select * from actor where actor_id between 2 and 5;

-- function and logical operator

select actor_id, first_name from actor
where actor_id=2 or actor_id=4;

select actor_id, first_name from actor
where actor_id in (2,4);

select  * from actor where first_name="NICK"
or actor_id=45;

select * from actor
where ( first_name="NICK" or first_name="ED") and actor_id>3;

# function string => output
# single row function
# string function

select first_name,lower(first_name) from actor;

-- dual table ( dummy table)
select upper("ac") from dual;

select first_name,last_name,
concat( 'MR ',first_name,'-' , last_name) from actor;

select first_name,last_name,
concat_ws( '-',"Mr",first_name,last_name) from actor;

--  ED CHASE
select * from actor where 
concat(first_name,' ',last_name)="ED CHASE";

select * from actor where first_name like "%S";

-- concat, concat_ws
-- substr

select first_name, substr(first_name,3) from actor;

select first_name, substr(first_name,2,1) from actor;

select first_name, substr(first_name,-2,2) from actor;

-- instr
select first_name,instr(first_name,"E") from actor;

select first_name,locate("E",first_name,3) from actor;

--  length ( total number of bytes)
select length("abge") from dual;

select length("必") from dual;

select char_length("必") from dual;


-- trim function
select trim( '   abc      ') from dual;


select trim( trailing 'x' from '   abcxxxxxx') from dual;


select trim( leading 'x' from 'xxx asdf   abcxxxxxx') from dual;


select trim( both 'x' from 'xxx asdf   abcxxxxxx') from dual;

-- lpad, rpad
select rpad(985632174,15,'#') from dual