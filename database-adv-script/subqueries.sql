SELECT name
FROM property
WHERE property_id IN (
    SELECT property_id
    FROM review
    GROUP BY property_id
    HAVING AVG(rating) > 4.0
);

/* The inner query (subquery) calculates the average rating for each property and keeps only those whose average > 4.0.
The outer query then fetches the property_name from the properties table where the property_id appears in the subquery result.
This is a non-correlated subquery because the inner query doesn't depend on values from the outer query; it runs independently first. */

SELECT u.user_id, u.first_name, u.last_name
FROM user u
WHERE 3 < (
    SELECT COUNT(b.booking_id)
    FROM booking b
    WHERE u.user_id= b.user_id
)

