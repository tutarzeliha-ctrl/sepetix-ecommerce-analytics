SELECT
  order_id,
  UPPER(city) AS city_upper,
  LOWER(category) AS category_lower,
  CONCAT(city, ' - ', category) AS location_category
FROM  `sepetix.orders`
LIMIT 10
