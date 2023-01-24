show databases;
use sql_intro;
show tables;

select * from emp_details;

create table employees (
Emp_ID int primary key,
Emp_Name varchar(25),
Age int,
Gender char(1),
Doj date,
Dept varchar(20),
City varchar(20),
Salary float);

describe employees;

insert into employees values
(101,"Hasnat",25,"M","2005-12-03","Ops","Dhaka",50000),
(102,"Sara",27,"F","2005-01-02","Coms","CTG",40000),
(103,"Imtiaz",32,"M","2020-05-20","HR","Khulna",60000),
(104,"Raka",25,"F","2008-12-20","Admin","Dhaka",70000),
(105,"Hamid",25,"M","2005-12-03","Ops","Dhaka",50000),
(106,"Saki",27,"F","2015-01-02","Coms","CTG",40000),
(107,"Santo",32,"M","2021-05-20","HR","Khulna",60000),
(108,"Raha",25,"F","2018-12-20","Admin","Dhaka",70000),
(109,"Hasan",25,"M","2004-12-03","Ops","Dhaka",50000),
(110,"Sahana",27,"F","2007-01-02","Coms","CTG",40000),
(111,"Imrul",32,"M","2009-05-20","HR","Khulna",60000),
(112,"Rosa",25,"F","2008-12-20","Admin","Dhaka",70000);

select * from employees;
select distinct(city) from employees;
select avg(salary) from employees;
select distinct(dept) from employees;


select * from employees;

select distinct(city) from employees;

select distinct(dept) from employees;

select avg(salary) from employees;
select Dept, round(avg(age),0) as avg_age from employees group by dept;

select dept, sum(salary) as total_salary from employees group by dept;

select count(emp_id) as total_employee, city from employees
group by city
order by count(emp_id) desc;

select year(doj) as year, count(emp_id)
from employees

group by year(doj)
order by count(emp_id) desc;



