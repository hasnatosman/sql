use sql_store;

-- INNER JOIN --------------------------------------------------------------------------

select *
from orders
join customers
	on orders.customer_id = customers.customer_id;
    
    
select 
	order_id,
    orders.customer_id,
    first_name,
    last_name

from orders
join customers on orders.customer_id = customers.customer_id
order by order_id;

select
	order_id,
    o.customer_id,
    first_name,
    last_name

from orders as o
join customers as c on o.customer_id = c.customer_id;


-- EXERCISE ---------------------------------------------------------------------------------

select 
	order_id,
    oi.product_id,
    quantity,
    oi.unit_price
    
from order_items as oi
join products as p on oi.product_id = p.product_id;

-- JOINING ACROSS DATABASES --------------------------------------------------------

select *
from order_items as OI
join sql_inventory.products as p on oi.product_id = p.product_id;

use sql_inventory;

select *
from sql_store.order_items OI
join products as p on oi.product_id = p.product_id;

-- SELF JOIN -----------------------------------------------------------------

use sql_hr;

select *
from employees e
join employees m on e.reports_to = m.employee_id;

select
	 e.employee_id,
     e.first_name,
     e.last_name,
     m.first_name as manager
	
from employees as e
join employees as m on e.reports_to = m.employee_id;
     
     