SELECT
user_id, COUNT(booking_id) AS total_booking
FROM booking
GROUP BY user_id
ORDER BY total_booking DESC;


/*Use a window function (ROW_NUMBER, RANK) to rank properties based on the total number of bookings they have received. */
SELECT 
p.property_id, 
p.name, 
RANK() OVER(ORDER BY COUNT(b.booking_id) DESC) AS booking_rank 
FROM property p
LEFT JOIN 
booking b ON p.property_id = b.property_id
GROUP BY 
p.property_id;

