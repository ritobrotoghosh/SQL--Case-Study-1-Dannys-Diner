-- If each $1 spent equates to 10 points and sushi has a 2x points multiplier - how many points would each customer have?


SELECT customer_id, SUM(
	CASE
		WHEN product_name = 'sushi' THEN price*20
		ELSE price*10
	END) AS points
FROM sales s
JOIN menu m
ON s.product_id = m.product_id
GROUP BY customer_id