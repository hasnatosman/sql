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