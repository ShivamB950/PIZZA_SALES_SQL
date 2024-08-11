-- Q4: Group the orders by date and calculate the average number of pizza ordered per day.(intermediate)


SELECT ROUND(AVG(quantity), 0) AS avg_pizza_ordered FROM
(SELECT orders.order_date, sum(order_details.quantity) AS quantity
FROM orders
JOIN order_details ON orders.order_id = order_details.order_id
GROUP BY orders.order_date) AS order_quantity;