SELECT properties.city as city_name, count(reservations.property_id) as number_of_reservations
FROM properties
JOIN reservations ON reservations.property_id = properties.id
GROUP BY city_name
ORDER BY number_of_reservations DESC;