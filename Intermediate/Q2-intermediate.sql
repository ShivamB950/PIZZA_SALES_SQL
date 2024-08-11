-- Q2: Determine the distribution of orders by hour of the day.

SELECT 
    HOUR(order_time), COUNT(order_id)
FROM
    orders
GROUP BY HOUR(order_time);