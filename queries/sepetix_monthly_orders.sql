SELECT EXTRACT (MONTH FROM order_date) AS month,
       EXTRACT (YEAR FROM order_date) AS year,
       COUNT (order_id) AS order_count
FROM `sepetix.orders`
GROUP BY month, year
ORDER BY month, year
