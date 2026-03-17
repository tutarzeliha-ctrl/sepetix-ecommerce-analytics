SELECT 
  order_id,
  status,
  IFNULL(status, 'Bilinmiyor') AS status_clean
FROM `sepetix.orders`
LIMIT 10;

-- NULLIF: Sıfıra bölme hatasını önle
SELECT 
  order_id,
  price / NULLIF(quantity, 0) AS unit_price
FROM `sepetix.orders`
LIMIT 10;
