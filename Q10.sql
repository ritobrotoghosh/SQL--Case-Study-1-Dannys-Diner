-- In the first week after a customer joins the program (including their join date) they earn 2x points on all items, 
-- not just sushi - how many points do customer A and B have at the end of January?

WITH last_date AS (
	SELECT *, DATE_ADD(join_date, INTERVAL 7 DAY) AS last_date
    FROM members
)

SELECT s.customer_id, SUM(
	CASE
		WHEN order_date BETWEEN join_date AND last_date THEN price*20
        WHEN order_date NOT BETWEEN join_date AND last_date AND product_name = 'sushi' THEN price*20
        ELSE price*10
	END) AS points
FROM sales s
JOIN last_date ld
ON s.customer_id = ld.customer_id AND order_date >= join_date
JOIN menu mu
ON s.product_id = mu.product_id
WHERE EXTRACT(MONTH FROM order_date) = 1
GROUP BY customer_id
ORDER BY customer_id