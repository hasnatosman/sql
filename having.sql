show databases;
use sql_intro;
show tables;

select * from employees;
select distinct(city) from employees; 
select dept, round(avg(age),0) as avg_age from employees group by dept;

select dept, sum(salary) as total_salary from employees
group by dept
order by sum(salary) desc;

select count(emp_id), city from employees
group by city
order by count(emp_id) desc;

select year(doj) as year, count(emp_id)
from employees
group by year(doj)
order by count(emp_id) desc;

create table sales (product_id int, sell_price float, quantity int, state varchar(20));

describe sales;

insert into sales values
(121, 350.5, 3,"Dhaka"),
(122, 330.5, 4,"CTG"),
(123, 360.5, 2,"Cumilla"),
(124, 380.5, 6,"Khulna"),
(125, 310.5, 7,"Sylhet"),
(126, 380.5, 8,"Dhaka"),
(121, 350.5, 3,"Dhaka"),
(122, 300.5, 4,"CTG"),
(123, 360.5, 2,"Cumilla"),
(124, 380.5, 6,"Khulna"),
(125, 310.5, 7,"Sylhet"),
(126, 380.5, 8,"Dhaka");

select * from sales;

select product_id, sum(sell_price * quantity) as  revenue
from sales
group by  product_id
order by revenue desc;

select distinct(product_id) from sales;

create table c_product (product_id int, cost_price float);

describe c_product;


insert into c_product values
(121, 150.5),
(122, 160.5),
(123, 155.5),
(124, 170.5),
(125, 190.5),
(126, 230.5);


select * from c_product;

select c.product_id, sum((s.sell_price * c.cost_price) * s.quantity) as profit
from sales as s inner join c_product as c
where s.product_id = c.product_id
group by c.product_id
order by profit desc;

-- find the cities where there are more than 5 employees ...


select city, count(emp_id) as total_emp
from employees
group by city
having total_emp > 5;

select dept, avg(salary) as avg_salary
from employees
group by dept
-- having avg(salary) > 50000
having avg_salary > 50000;

select city, count(*) as emp_count
from employees
where city != "CTG"
group by city
having count(*) > 2;


select dept, count(*) as emp_count
from employees
group by dept
having avg(salary) > 50000;

