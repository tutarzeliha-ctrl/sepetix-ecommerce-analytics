-- Sepetix: Spend segmentation by city and category
-- BigQuery | CASE WHEN

SELECT city, category,
       AVG(price * quantity) AS avg_spend,
       CASE 
         WHEN AVG(price * quantity) > 1000 THEN 'High'
         WHEN AVG(price * quantity) > 500  THEN 'Medium'
         ELSE 'Low'
       END AS spend_segment
FROM `sepetix.orders`
GROUP BY city, category
ORDER BY avg_spend DESC
