-- group the order by date and calculate the average numberof pizzas order per day.
select round(avg (quantity),0) as average_pizzas_ordered_per_day
from 

(select orders.order_date, sum(orders_details.quantity)as quantity
from orders join orders_details
on orders.order_id = orders_details.order_id
group by orders.order_date) as order_quantity;
