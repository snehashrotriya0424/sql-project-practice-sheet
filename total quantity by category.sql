-- join the necessary tables to find the total quantity each pizza category.

select pizza_types.category,
sum(orders_details.quantity) as quantity 
from pizza_types join pizzas
ON pizza_types.pizza_type_id = pizzas.pizza_type_id
join orders_details  
on orders_details.quantity
group by pizza_types.category
order by quantity;