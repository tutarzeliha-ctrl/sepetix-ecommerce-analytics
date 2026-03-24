{{ config(materialized = 'table') }}

WITH order_totals AS (
  SELECT
    order_id,
    customer_id,
    order_date,
    SUM(quantity * price) AS order_value
  FROM {{ ref('sepetix_orders') }}
  GROUP BY order_id, customer_id, order_date
)

SELECT
  CURRENT_DATE() AS metric_date,
  ROUND(AVG(order_value), 2) AS aov_amount,
  COUNT(DISTINCT order_id) AS total_orders,
  SUM(order_value) AS total_revenue
FROM order_totals