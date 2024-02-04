-- Which item was purchased first by the customer after they became a member?

-- Since timestamp is not available, purchase made when the order_date is same as the join date has been considered

SELECT DISTINCT s.customer_id,
	first_value(product_name) OVER(PARTITION BY customer_id ORDER BY order_date) as first_order
FROM sales s
JOIN members m
ON s.customer_id = m.customer_id AND order_date >= join_date
JOIN menu mu
ON s.product_id = mu.product_id