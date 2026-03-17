SELECT
  order_id,
  price,
  CASE
    WHEN price IS NULL THEN 'Fİyat yok'
    WHEN price < 100 THEN 'Düşük'
    WHEN price BETWEEN 100 AND 500 THEN 'Orta'
    ELSE 'Yüksek'
  END AS price_category
FROM  `sepetix.orders`
LIMIT 10
