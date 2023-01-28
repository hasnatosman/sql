/* sql join statement is used to combine rows of data from two or more 
different tables based on a common column (field) between them. */

/* SQL innner join statement returns all the rows from mul
tiple tables as long as the conditions are met. */

create database sql_joins;
show databases;
use sql_joins;

create table cricket ( cricket_id int auto_increment,
name varchar(30), primary key (cricket_id));

create table football ( football_id int auto_increment,
name varchar(30), primary key (football_id));


insert into cricket (name) values
('Babar'), ('kholi'), ('Smith'), ('Afridi'), ('Mexwell'), ('Amir'), ('Hayden'), ('Flemming');

select * from cricket;

insert into football (name) values
('Messi'), ('Ronaldo'), ('Smith'), ('Afridi'), ('Mexwell'), ('Amir'), ('Xavi'), ('Flemming');

select * from football;

select * 
from cricket as c inner join football as f on c.name =  f.name;

select c.cricket_id, c.name, f.football_id, f.name
from cricket as c inner join football as f on c.name = f.name;

/*
selecet o.ordernumber, o.status, p.productname, sum(quantityordered * priceeach ) as revenue
from orders as o
inner join ordersdetails as od
on o.ordernumber = od.ordernumber
inner join products as p 
on p.productcode = od.productcode
group by ordernumber;

*/

/* left join statement returns  all the rows from the left table
 and matching rows from the right table */
 
 /* 
 select c.customernumber, c.customername, ordernumber, status
 from customers as c left join orders as o 
 on c.customernumber = o.customernumber;
 where ordernumber is null;
 
 */
 