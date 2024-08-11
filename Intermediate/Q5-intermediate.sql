-- Q5: Determine the top 3 pizza types bases on revenue.(intermediate)

SELECT 
    pizza_types.name,
    SUM(pizzas.price * order_details.quantity) AS total_revenue
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
        JOIN
    order_details ON pizzas.pizza_id = order_details.pizza_id
GROUP BY pizza_types.name
ORDER BY total_revenue DESC
LIMIT 3;
