SELECT category, AVG(price*quantity) AS avg_spend
FROM `sepetix.orders`
WHERE city = 'İstanbul'
GROUP BY category
HAVING AVG(price*quantity) > 1000
