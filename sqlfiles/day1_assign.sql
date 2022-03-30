create database example;
drop database example;
-- a.create database and usi it--
create database example;
use example;

create table address(
id int,
house_no int,
city varchar(20),
postalcode varchar(6)
);
-- add primary key----
alter table address
add primary key (id);
describe address;

-- delete primar key--
alter table address
drop primary key;

alter table address
add primary key (id);

create table people(
id int,
first_name varchar(20),
last_name varchar(20),
address_id int
);

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

