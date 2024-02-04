-- Which item was purchased just before the customer became a member?

SELECT customer_id, group_concat(product_name) AS last_order
FROM (
	SELECT s.customer_id, product_name,
		DENSE_RANK() OVER(PARTITION BY s.customer_id ORDER BY order_date DESC) AS d_rank
	FROM sales s
	JOIN members m
	ON s.customer_id = m.customer_id AND s.order_date < m.join_date
	JOIN menu mu
	ON s.product_id = mu.product_id
) sub
WHERE d_rank = 1
GROUP BY customer_id