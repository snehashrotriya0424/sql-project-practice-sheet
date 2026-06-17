-- RETRIEVE THE TOTAL NUMBER OF ORDERS PLACED. 

-- select * from orders
SELECT 
    COUNT(order_id) AS total_orders
FROM
    orders;