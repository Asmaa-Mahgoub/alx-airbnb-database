SELECT u.first_name, u.last_name, b. booking_id
FROM
user u
INNER JOIN
booking b ON u.user_id= b.user_id;


SELECT p.property_id, p.name, p.description, r.review_id, r.rating, r.comment
FROM
property p
LEFT JOIN
review r ON p.property_id=r.property_id;
 
SELECT u.user_id, u.first_name, u.last_name, b. booking_id  
FROM
user u
FULL OUTER JOIN
booking b ON u.user_id= b.user_id;

