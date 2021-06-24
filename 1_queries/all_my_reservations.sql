SELECT reservations.*, properties.*, avg(property_reviews.rating) AS average_rating
FROM reservations 
JOIN properties ON property_id = properties.id 
JOIN property_reviews ON reservation_id = reservations.id
JOIN users ON property_reviews.guest_id = users.id
WHERE users.id = 3
AND now()::date > reservations.end_date
GROUP BY reservations.id, properties.id
ORDER BY reservations.start_date DESC 
