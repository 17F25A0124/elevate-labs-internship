create table orders(order_id int,order_date date,order_time time);
create table orders_details(order_details_id int,order_id int,pizza_id varchar(20),quantity int);
create table pizza_types(pizza_type_id text, name text, category text,ingredients text);
create table pizzas(pizza_id text,pizza_type_id text,size text,price double);

select 
      o.*,od.order_details_id,od.pizza_id,od.quantity 
from 
     orders o 
join 
     orders_details od 
on o.order_id=od.order_id;