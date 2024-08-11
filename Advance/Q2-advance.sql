-- Q2: Analyze the cumalative revenue generated over time.(advance)

SELECT order_date, SUM(revenue) OVER(order by order_date) AS cum_revenue
FROM 
(SELECT orders.order_date,
SUM(order_details.quantity * pizzas.price) AS revenue
FROM order_details JOIN pizzas
ON order_details.pizza_id = pizzas.pizza_id
JOIN orders ON orders.order_id = order_details.order_id
GROUP BY orders.order_date) as sales;