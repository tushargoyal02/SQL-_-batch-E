


-- date time functions
-- year(), month , quater, weekofyear

select curdate() from dual;
select current_date() from dual;

select curtime() from dual;
select current_timestamp() from dual;
select now()  from dual;

select adddate( now(), interval 15 month  ) from dual;

select dayname( now() ) from dual;

-- % modifier  
 -- %M  ( abbrevation for the month name) 
select  date_format( now(), "%M--%Y") from dual;


-- date function
-- numerical  
--  round, truncate, mod
select round(10.4) from dual;

select round(10.4614,1) from dual;

select truncate(10.498,2) from dual;

select mod(11,2) from dual;

# conditional 
-- if
use sakila;

select * from actor;

-- condition, True, False
select if(True,10,20) from dual;

select actor_id, first_name, 
if( actor_id=2, actor_id+10, 
	if(actor_id=4, actor_id+20, actor_id)) 
		from actor;

-- case statement
/*
select  col,  case  expression/col
					when condition  then what_type_work
                    
                    end 
				from table
*/
select actor_id, first_name, 
	case  actor_id
			when  2  then  actor_id+10
            when  3 then  actor_id+20
	else actor_id
	end "newcol"  from actor;
    
    

select actor_id, first_name, 
	case  
			when  actor_id>30  then  actor_id+50
            when  actor_id>15 then  actor_id+25
	else actor_id  
    end "newcol" from actor;
    

