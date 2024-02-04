-- What is the total amount each customer spent at the restaurant? 

SELECT customer_id, CONCAT('$ ',SUM(price)) AS total_amount
FROM sales s
JOIN menu m
ON s.product_id = m.product_id
GROUP BY customer_id
ORDER BY customer_id