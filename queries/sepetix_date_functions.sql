SELECT
  order_id,
  order_date,
  DATE_TRUNC(order_date, MONTH) AS order_month
FROM  `sepetix.orders`
LIMIT 10
