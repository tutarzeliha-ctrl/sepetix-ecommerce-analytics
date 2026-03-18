SELECT*
FROM(
  SELECT
    city,
    FORMAT_DATE('%Y-%m', order_date) AS month,
    price
  FROM `sepetix.orders`
)
PIVOT(
  SUM(price)
  FOR month IN ('2024-01', '2024-02', '2024-03')
)
