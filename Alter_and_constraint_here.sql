
-- alter statment in SQL

use po;
create table companies(id int);
insert into companies values(10);
select * from companies;

desc companies;
-- add table columns
    ALTER TABLE companies 
    ADD COLUMN phone VARCHAR(15);
     
select * from companies;
desc companies;
     
    ALTER TABLE companies
    ADD COLUMN employee_count3 int NOT NULL;
    
select * from companies;
    
    
ALTER TABLE companies DROP column employee_count3;

select * from companies;

-- rename tables
RENAME TABLE companies to newcompany1;
    select * from companies;
    select * from newcompany1;

    ALTER TABLE newcompany1 RENAME TO companies;
	select * from companies;

	desc companies;
    ALTER TABLE companies
    RENAME COLUMN phone TO company_name;
    
    select * from companies;
    update companies set company_name="tushar" where id=10;
    
    desc companies;
    alter table companies add primary key (id);
    
    insert into companies values(12,"aman");
    desc companies;
    select * from companies;
    
    -- drop primary key
    alter table companies 
    add  constraint compay_uk unique(company_name);
	
    
    alter table companies drop  constraint compay_uk;
    desc companies;

    alter table companies drop  primary key;
    
    desc  companies;
    desc companies;
    select * from companies;
    insert into companies values(10,"L",1);
    
    desc companies;
    select * from companies;
    
    update companies set company_name=0;
    
    ALTER TABLE companies MODIFY company_name int ;
    
    desc companies;

-- change datatype and column name then use CHANGE	
    ALTER TABLE companies
    CHANGE company_name gender char(3);
    
    desc companies;
    insert into companies values (20,5,"ABC");
    select * from companies;
    
    alter table companies
    modify employee_count2 int;
set sql_safe_updates=0;
desc companies;
update `companies` set `employee_count2`=null;

insert into companies values(10,"ABC", 100);
select * from companies;
    desc companies;
    

-- create and drop the 




/*
CREATE TABLE palindromes2 (
  word VARCHAR(100),
  CONSTRAINT word_is_palindrome CHECK(REVERSE(word) = word)
);


    CREATE TABLE companies (
        name VARCHAR(255) NOT NULL,
        address VARCHAR(255) NOT NULL,
        CONSTRAINT name_address UNIQUE (name , address)
    );
     
    CREATE TABLE houses (
      purchase_price INT NOT NULL,
      sale_price INT NOT NULL,
      CONSTRAINT sprice_gt_pprice CHECK(sale_price >= purchase_price)
    );

*/