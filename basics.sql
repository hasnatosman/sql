show databases;
use sql_intro;
show tables;
select * from emp_details;

create database sqp_introo;

show databases;

create table emp_details( Name varchar(25), Age int, sex char(1), doj date, city varchar(15), salary float);

insert into emp_details values
("jimmy", 35, "M", "2005-05-30", "Chicago", 70000),
("Shane", 30, "M", "1999-06-25", "Seattle", 55000),
("Marry", 28, "F", "2009-03-10", "Boston", 62000),
("Dwayne", 37, "M", "2011-07-12", "Austin", 57000),
("Sara", 32, "F", "2017-10-27", "New York", 72000),
("Ammy", 35, "F", "2014-12-20", "Seattle", 80000);

-- show the all information from emp_details table .............. 

select * from emp_details;

-- select uniue city names from the table ............ 

select distinct(city) from emp_details;

-- in built aggregate function in sql ................ 

select count(name) from emp_details;

-- give alias name ..................

select count(name) as count_name from emp_details;

-- find the sum of salaries ...........

select sum(salary) from emp_details;

-- find the average salary from the table......

select avg(salary) from emp_details;

-- if you want to see specific colums from the table ...... 

select 
name,
age,
city

from emp_details;

-- where for filter in sql .......................

select * from emp_details where age > 30;
select name, sex, city from emp_details where sex = "F";

-- using or operator .................. 

select * from emp_details where city = "Chicago" or city = "Austin";

-- using in operatos as condition .... same as .......... 

select * from emp_details where city in ("Seattle", 'New York');

-- usnig between operator .............. 

select * from emp_details where doj between "2000-01-01" and "2010-12-31";

-- usnig and operator .................................... 

select * from emp_details where
age > 30 and sex ="M";

-- using group by .......................

select sex, 
sum(salary) as total_salary,
avg(salary) as avg_salary,
avg(age) as avg_age

from emp_details
group by sex;

-- using order by ................... 


select *
from emp_details
order by salary;

select *
from emp_details
order by age desc;

-- some basic select operations .........

select (30+20) as addition, (50-25) as subtract;


select length("Bangladesh") as total_len;

select name, length(name) as total_len from emp_details;

select upper('Name');
select lower('Name');

select curdate();

select day(curdate());

select now();

select concat('I love', ' my ', ' country') as love;

select name, city, concat(name, ' ', 'from', ' ', city) as come_from from emp_details;

select reverse(name) from emp_details;


select replace('I love my country', 'country','mom') as love_mom;

select length('   I love my country   ');
select length(trim('I love my country'));

select position('love' in '   I love my country   ');

select ascii("H");