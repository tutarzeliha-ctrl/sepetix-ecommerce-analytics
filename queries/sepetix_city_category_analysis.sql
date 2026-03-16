-- Sepetix: Top spending category per city
-- BigQuery | CTE + Window Function

WITH ranked AS (
  SELECT city, category,
         AVG(price * quantity) AS avg_spend,
         ROW_NUMBER() OVER (PARTITION BY city ORDER BY AVG(price * quantity) DESC) AS rank
  FROM `sepetix.orders`
  GROUP BY city, category
)
SELECT * FROM ranked
WHERE rank = 1
