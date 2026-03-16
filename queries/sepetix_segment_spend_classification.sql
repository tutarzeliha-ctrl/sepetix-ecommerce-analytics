SELECT customers.segment,
       AVG(orders.price*orders.quantity) AS avg_spend,
       CASE
         WHEN AVG(orders.price*orders.quantity) > 1000 THEN 'High'
         WHEN AVG(orders.price*orders.quantity) > 500 THEN 'Medium'
         ELSE 'Low'
       END AS spend_segment
FROM `sepetix.orders` AS orders
JOIN `sepetix.customers` AS customers
  ON orders.customer_id = customers.customer_id
GROUP BY customers.segment
