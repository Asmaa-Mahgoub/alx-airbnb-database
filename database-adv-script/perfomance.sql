--Initial Query (Unoptimized)
SELECT 
    b.booking_id,
    b.start_date,
    u.user_id,
    u.first_name,
    u.last_name,
    p.name,
    p.location,
    pay.payment_id,
    pay.amount,
FROM booking b
JOIN user u ON b.user_id = u.user_id
JOIN property p ON b.property_id = p.property_id
LEFT JOIN payment pay ON b.booking_id = pay.booking_id;

--Measure Actual Execution Time
EXPLAIN ANALYZE
SELECT 
    b.booking_id,
    b.start_date,
    u.user_id,
    u.first_name,
    u.last_name,
    p.name,
    p.location,
    pay.payment_id,
    pay.amount,
FROM booking b
JOIN user u ON b.user_id = u.user_id
JOIN property p ON b.property_id = p.property_id
LEFT JOIN payment pay ON b.booking_id = pay.booking_id;

--Refactored & Optimized Query
CREATE INDEX idx_booking_user_id ON booking(user_id);
CREATE INDEX idx_booking_property_id ON booking(property_id);
CREATE INDEX idx_payment_booking_id ON payment(booking_id);

--Simplify and optimize joins
SELECT 
    b.booking_id,
    b.start_date,
    u.first_name,
    u.last_name,
    p.name,
    p.location
FROM booking b
JOIN user u ON b.user_id = u.user_id
JOIN property p ON b.property_id = p.property_id;

--Re-analyze performance
EXPLAIN ANALYZE
SELECT 
    b.booking_id,
    b.start_date,
    u.first_name,
    u.last_name,
    p.name,
    p.location
FROM booking b
JOIN user u ON b.user_id = u.user_id
JOIN property p ON b.property_id = p.property_id;











/* 
Analyze the query’s performance using EXPLAIN and identify any inefficiencies.
Refactor the query to reduce execution time, such as reducing unnecessary joins or using indexing. */