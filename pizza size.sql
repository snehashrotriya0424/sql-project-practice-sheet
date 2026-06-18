-- identify the most common pizza size ordered.

SELECT 
    quantity, COUNT(orders_details_id)
FROM
    orders_details
GROUP BY quantity;

SELECT 
    pizzas.size,
    COUNT(orders_details.orders_details_id) AS order_count
FROM
    pizzas
        JOIN
    orders_details ON pizzas.pizza_id = orders_details.pizza_id
GROUP BY pizzas.size
ORDER BY order_count DESC;