-- a.create database and usi it--
 
create database example;
use example;

create table address(
id int,
house_no int,
city varchar(20),
postalcode varchar(6)
);
describe address;
alter table address
add primary key (id);
describe address;

create table people(
id int,
first_name varchar(20),
last_name varchar(20),
address_id int
);
-- add primary key--

alter table people
add primary key(id); 

-- delete primar key--

alter table people
drop primary key;

describe people;
describe address;

alter table people
add primary key(id);

-- add foreign key --

alter table people
add constraint fk_address
foreign key (address_id) references address(id);

SHOW CREATE TABLE people;
describe people;

-- delete a foreign key--
alter table people
drop foreign key fk_address;
alter table people
drop index fk_address;

-- adding foreign key back--
alter table people
add constraint fk_address
foreign key (address_id) references address(id);

describe people;

create table pets(
id int,
name varchar(20),
species varchar(20),
owner_id int
);
-- changing column name ---
alter table pets change `species` `animal_type` varchar(20);
alter table pets change `animal_type` `species` varchar(20);

-- changing datatype --
alter table address modify city varchar(30);

-- unique key-
alter table pets 
add  unique(owner_id);

------------------------------------------------------
create database coffee_str;
use coffee_str;
create table products(
id int auto_increment primary key,
name varchar(30),
price decimal(4,2),
coffee_origin varchar(30)
);
create table orders(
id int auto_increment primary key,
product_id int,
customer_id int,
order_time datetime
);
create table customers(
id int auto_increment primary key,
first_name varchar(30),
last_name varchar(30),
gender enum('M','F'),
phone_number varchar(11)
);
show tables;
describe products;

-- entering a row of data
insert into products(name,price,coffee_origin)
values('Espresso',2.50,'Brazil');
 
-- entering multiple rows of data

insert into products(name,price,coffee_origin)
values('Macchiato',3.00,'Brazil'),('Cappuccino',3.50,'Cost Rica'); 

insert into products(name,price,coffee_origin)
values('Latte',3.50,'Indonesia'),('Americano',3.00,'Brazil'),('Flat White',3.50,'Indonesia'),('Filter',3.00,'India');


select * from products;

---- update <table_name>
----set <column_name>='value'
where <column_name>='value'; 

-- gives error bcz fiels is not primar key---
update products
set coffee_origin='Sri Lanka'
where name='Filter';

update products
set coffee_origin='Sri Lanka'
where id=7;

set sql_safe_updates=0;

select * from products;
-- changing the price and coffee_origin of Americano

update products
set price=3.25,coffee_origin='Ethiopia'
where name='Americano';

-- changing multiple rows of data 

update products
set coffee_origin='Columbia'
where coffee_origin='Brazil';

------------------------------------------------------

create database test2;
use test2;
show tables;

create table people(
id int auto_increment primary key,
name varchar(30),
age int,
gender enum('M','F')
);

insert into people(name,age,gender)
values ('Emma',21,'F'),('John',30,'M'),('Thomas',27,'M'),('Chris',44,'M'),('Sally',23,'F'),('Frank',55,'M');

select * from people;

set sql_safe_updates=0;
-- deleting a selected row
delete from people
where name='John';
-- deleting multiple rows
delete from people
where gender='F';
-- to delete all the data
delete from people;

-------------------------------------------
create database test2;
use test2;
show tables;

create table people(
id int auto_increment primary key,
name varchar(30),
age int,
gender enum('M','F')
);

insert into people(name,age,gender)
values ('Emma',21,'F'),('John',30,'M'),('Thomas',27,'M'),('Chris',44,'M'),('Sally',23,'F'),('Frank',55,'M');

select * from people;
set sql_safe_updates=0;
-- deleting a selected row
delete from people
where name='John';
-- deleting multiple rows
delete from people
where gender='F';
-- to delete all the data
delete from people;
