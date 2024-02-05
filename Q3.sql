-- What was the first item from the menu purchased by each customer?

-- 'order_date' column is a date column does not include the purchase time details. 
-- All items bought on the first day are considered as the first item.

WITH my_cte AS (
	SELECT customer_id, order_date, product_name,
		DENSE_RANK() OVER(PARTITION BY customer_id ORDER BY order_date) AS d_rank
	FROM sales s
	JOIN menu m
	ON s.product_id = m.product_id
)
SELECT customer_id, GROUP_CONCAT(DISTINCT product_name) AS items
FROM my_cte
WHERE d_rank = 1
GROUP BY customer_id
ORDER BY customer_id
