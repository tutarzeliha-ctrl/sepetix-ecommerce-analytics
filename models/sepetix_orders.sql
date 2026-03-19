{{ config(materialized="view") }}

select
    order_id,
    customer_id,
    product_name,
    category,
    quantity,
    price,
    order_date,
    city,
    status
from `project-505e76f5-40a4-4295-b57.sepetix.orders`
