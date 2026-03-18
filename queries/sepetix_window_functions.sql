SELECT
  order_date,
  price,
  AVG(price) OVER(ORDER BY order_date ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS moving_avg
FROM `sepetix.orders`
LIMIT 10
