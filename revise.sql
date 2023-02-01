show databases;
use sql_store;

select *
from customers
where customer_id = 5;

select *
from customers
where state = "FL"
order by points desc;

