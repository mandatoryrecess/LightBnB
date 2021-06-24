SELECT  properties.id AS id, 
        properties.title AS title, 
        avg(property_reviews.rating) AS average_rating
FROM properties 
JOIN property_reviews ON property_id = properties.id 
WHERE province LIKE '%uebe%' 
GROUP BY properties.id
HAVING avg(property_reviews.rating) >= 4
ORDER BY cost_per_night ASC
LIMIT 10; 
