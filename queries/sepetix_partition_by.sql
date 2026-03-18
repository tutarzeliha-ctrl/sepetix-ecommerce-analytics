SELECT
  city,
  order_date,
  price,
  SUM(price) OVER (PARTITION BY city ORDER BY order_date) AS city_cumulative
FROM `sepetix.orders`
LIMIT 15
