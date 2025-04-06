`erika-4-sql.airbnb_berlin.airbnb_berlin`

-- 1. Average Price by Room Type
SELECT
  room_type,
  ROUND(AVG(price), 2) AS avg_price
FROM `erika-4-sql.airbnb_berlin.airbnb_berlin`
GROUP BY room_type
ORDER BY avg_price DESC;

-- 2. Top 10 Neighbourhoods by Listings
SELECT
  neighbourhood,
  COUNT(*) AS total_listings
FROM `erika-4-sql.airbnb_berlin.airbnb_berlin`
GROUP BY neighbourhood
ORDER BY total_listings DESC
LIMIT 10;

-- 3. Average Price by Neighbourhood
SELECT
  neighbourhood,
  ROUND(AVG(price), 2) AS avg_price
FROM `erika-4-sql.airbnb_berlin.airbnb_berlin`
GROUP BY neighbourhood
ORDER BY avg_price DESC
LIMIT 10;

-- 4. Neighbourhoods with Most Total Reviews
SELECT
  neighbourhood,
  SUM(number_of_reviews) AS total_reviews
FROM `erika-4-sql.airbnb_berlin.airbnb_berlin`
GROUP BY neighbourhood
ORDER BY total_reviews DESC
LIMIT 10;

-- 5. Most Common Property Types
SELECT
  property_type,
  COUNT(*) AS total
FROM `erika-4-sql.airbnb_berlin.airbnb_berlin`
GROUP BY property_type
ORDER BY total DESC
LIMIT 10;
