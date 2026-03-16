SELECT category, AVG(price*quantity) AS avg_spend
FROM `sepetix.orders`
GROUP BY category
HAVING AVG(price*quantity) > 500
