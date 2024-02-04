SELECT s.customer_id, order_date, product_name, price,
	CASE
		WHEN order_date >= join_date THEN 'Y'
		ELSE 'N'
	END AS member,
    CASE
		WHEN order_date >= join_date THEN DENSE_RANK() 
			OVER(PARTITION BY customer_id, CASE WHEN order_date >= join_date THEN 'Y' ELSE 'N' END ORDER BY order_date)
		ELSE NULL
	END AS ranking
FROM sales s
LEFT JOIN members m
ON s.customer_id = m.customer_id
JOIN menu mu
ON s.product_id = mu.product_id