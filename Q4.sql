-- What is the most purchased item on the menu and how many times was it purchased by all customers?

SELECT product_name, ordered
FROM (
	SELECT product_name, COUNT(*) AS ordered,
		DENSE_RANK() OVER(ORDER BY COUNT(*) DESC) AS ranking
	FROM sales s
	JOIN menu m
	ON s.product_id = m.product_id
	GROUP BY product_name
) sub
WHERE ranking = 1