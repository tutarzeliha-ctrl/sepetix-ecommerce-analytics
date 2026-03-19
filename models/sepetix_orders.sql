{{ config(materialized='view') }}

SELECT
  order_id,
  customer_id,
  product_name,
  category,
  quantity,
  price,
  order_date,
  city,
  status
FROM `project-505e76f5-40a4-4295-b57.sepetix.orders`