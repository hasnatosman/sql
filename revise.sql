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


select *
from customers
where state in ("VA", "GA", "FL");

select *
from customers
where state not in ("VA", "GA", "FL");


select *
from products
where quantity_in_stock in (49, 38, 72);

select *
from customers
where points between 1000 and 3000;


select *
from customers
where birth_date between "1990-01-01" and "2000-01-01";

select *
from customers
where last_name like "%b%";

select *
from customers
where last_name like "%y";

select *
from customers
where last_name like "_____y";

select *
from customers
where last_name like "b____y";

select *
from customers
where address like "%trail%" or
	  address like "%avenue%";

select *
from customers
where phone like "%9";

select *
from customers
where phone not like "%9";

select *
from customers
where points > 3000;

select *
from customers
where state = "VA";

select *
from customers
where state <> "VA";

select *
from customers
where birth_date > "1990-01-01";

select *
from orders
where order_date >= "2019-01-01";


select *
from customers
where state in ("VA", "FL", "GA");

select *
from customers
where state not in ("VA", "FL", "GA");

select *
from products
where quantity_in_stock in (49, 38, 72);


select *
from customers
where points between  1000 and 3000;

select *
from customers
where birth_date between "1990-01-01" and "2000-01-01";

select *
from customers
where last_name like "b%";

select *
from customers
where last_name like "%b%";

select *
from customers
where last_name like "_____Y";

use sql_store;

select *
from customers
where last_name like "%field%";


select *
from customers
where last_name regexp "field";

select *
from customers
where last_name regexp "^field";


select *
from customers
where last_name regexp "field|mac|rose";

select *
from customers
where last_name regexp "field$";
select *
from customers
where last_name regexp "^field";


select *
from customers
where last_name regexp '[gim]e';

select *
from customers
where last_name regexp '[a-h]i';

-- ...................................exercise...................

-- get the customers whose
--  first names are elka or ambur

select*
from customers
where first_name regexp 'elka|ambur';

-- last names end with EY or ON
select *
from customers
where last_name regexp 'EY$|ON$';


-- last names start with MY or contains SE 

select *
from customers
where last_name regexp '^my|se';

-- last names contains B followed by R or U

select *
from customers
where last_name regexp '[b]r|u'; 



select *
from customers
where phone is null;

select *
from customers
where phone is not null;

use sql_store;

select *
from customers
order by first_name desc;

select * 
from customers
order by state desc, first_name desc;

select *
from customers
limit 5;

select *
from customers
limit 2, 3;






