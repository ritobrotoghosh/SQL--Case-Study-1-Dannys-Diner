-- Which item was the most popular for each customer?

SELECT customer_id, group_concat(product_name) AS most_ordered
FROM(
	SELECT customer_id, product_name, COUNT(*) AS ordered,
		DENSE_RANK() OVER(PARTITION BY customer_id ORDER BY COUNT(*) DESC) AS d_rank
	FROM sales s
	JOIN menu m
	ON s.product_id = m.product_id
	GROUP BY customer_id, product_name
) sub
WHERE d_rank = 1
GROUP BY customer_id