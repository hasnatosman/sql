create database triggers;
use triggers;
show tables;

# before insert trigger

create table customers
(cust_id int, age int, name varchar(30));
describe customers;

delimiter //
create trigger age_verify
before insert on customers
for each row
if new.age < 0 then set new.age = 0;
end if; //

insert into customers values
(101, 27, 'James'),
(102, -40, 'Ammy'),
(103, 32, 'Ben'),
(104, -39, 'Angela');

select * from customers;

# after insert trigger 
create table customers1(
id int auto_increment primary key,
name varchar(40) not null,
email varchar(30),
birthdate date);

create table message(
id int auto_increment,
messageId int,
message varchar(300) not null,
primary key (id, messageId));

Delimiter //
create trigger
check_null_dob
after insert
on customers1
for each row
begin
if new.birthdate is null then
insert into message (messageId, message)
values( new.id, concat('Hi', new.name, ', Please update your date of birth.'));
end if;
end //
delimiter ;

insert into customers1 (name, email, birthdate)
values ('Nancy', 'nancy@abc.com', null),
('Ronaldo', 'ronaldo@abc.com', '1998-11-16'),
('Xabi', 'xavi@abc.com', '1997-08-29'),
('Alice', 'alice@abc.com', null);

select * from customers1;
select * from message;

