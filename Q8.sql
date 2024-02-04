-- What is the total items and amount spent for each member before they became a member?

SELECT s.customer_id, COUNT(*) AS items_ordered, CONCAT('$ ', SUM(price)) AS amount_spent
FROM sales s
JOIN members m
ON s.customer_id = m.customer_id AND order_date < join_date
JOIN menu mu
ON s.product_id = mu.product_id
GROUP BY customer_id
ORDER BY customer_id