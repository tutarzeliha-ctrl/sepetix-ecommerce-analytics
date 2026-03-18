SELECT
  order_date,
  price,
  LAG(price) OVER (ORDER BY order_date) AS previous_price,
  LEAD(price) OVER (ORDER BY order_date) AS next_price
FROM `sepetix.orders`
LIMIT 10 
