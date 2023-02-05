show databases;
use sql_store;

select *
from customers
where customer_id = 5;

select *
from customers
where state = "FL"
order by points desc;

select
	first_name,
    last_name,
    points,
    points + 10 as added_10
from customers;

select state
from customers;

select distinct(state)
from customers;

-- exercise: Return all the products name, unit price, new price ( unit price * 1.1)

select
	name,
    unit_price,
    unit_price * 1.1 as new_unit_price
from products;

-- where clause ........................................................ 

select *
from customers
where points > 3000;

select *
from customers
where state <> "VA";

select *
from customers
where birth_date >  "1990-01-01";

-- EXERCISE: Get the orders placed this year .................... 

select *
from orders
where order_date >= "2019-01-01";


select *
from customers
where birth_date > "1990-01-01" and points > 1000;

select *
from customers
where birth_date > "1990-01-01" or 
	(points > 1000 and state = "VA");
    

select *
from order_items
where order_id = 6 and unit_price * quantity > 30;



