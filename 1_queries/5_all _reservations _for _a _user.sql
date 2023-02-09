SELECT reservations.id as reservation_id, properties.title as title, reservations.start_date as start_date, 
properties.cost_per_night as cost_per_night, avg(property_reviews.rating)
FROM properties
JOIN reservations ON reservations.property_id = properties.id
JOIN property_reviews ON property_reviews.property_id = properties.id
WHERE reservations.guest_id  = 1
GROUP BY properties.id, reservations.id
ORDER BY reservations.start_date
LIMIT 10;