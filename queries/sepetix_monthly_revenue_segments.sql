SELECT
  EXTRACT(YEAR FROM  order_date) AS year,
  EXTRACT(MONTH FROM order_date) AS month,
  SUM(price*quantity) AS total_revenue,
  CASE
    WHEN SUM(price*quantity) > 40000 THEN 'High'
    WHEN SUM(price*quantity) > 20000 THEN 'Medium'
    ELSE 'Low'
  END AS revenue_segment
FROM `sepetix.orders`
GROUP BY year, month
ORDER BY year, month
