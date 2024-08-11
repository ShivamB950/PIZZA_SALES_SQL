-- Q5: List the top 5 most ordered pizza along with their quantities.
SELECT 
    pizza_types.name,
    SUM(order_details.quantity) AS total_quantity_ordered
FROM
    Pizza_types
        JOIN
    pizzas ON Pizza_types.pizza_type_id = pizza_types.pizza_type_id
        JOIN
    order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY Pizza_types.name
ORDER BY total_quantity_ordered DESC
LIMIT 5;