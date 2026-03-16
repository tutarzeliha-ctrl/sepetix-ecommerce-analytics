
```sql
-- Sepetix: Total spend by customer segment
-- BigQuery | JOIN

SELECT customers.segment, 
       SUM(orders.price * orders.quantity) AS total_spend
FROM `sepetix.orders` AS orders
JOIN `sepetix.customers` AS customers 
  ON orders.customer_id = customers.customer_id
GROUP BY customers.segment
ORDER BY total_spend DESC
```
