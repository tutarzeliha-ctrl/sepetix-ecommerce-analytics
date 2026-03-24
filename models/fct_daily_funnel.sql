{{ config(materialized = 'table') }}

SELECT
  DATE(order_date) as order_day,
  COUNT(*) as total_orders,
  COUNTIF(status = 'Teslim Edildi') as delivered,
  COUNTIF(status = 'İade Edildi') as returned,
  ROUND(COUNTIF(status = 'Teslim Edildi') / COUNT(*) * 100, 2) as success_rate,
  CURRENT_DATE() as metric_date
FROM {{ ref('sepetix_orders') }}
GROUP BY order_day
ORDER BY order_day DESC