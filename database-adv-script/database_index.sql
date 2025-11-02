-- PRIMARY KEY
CREATE INDEX idx_user_id ON user(user_id);
--Search by Email
CREATE UNIQUE INDEX idx_unique_email ON user(email);

CREATE INDEX idx_booking_id ON booking(booking_id);
REATE INDEX idx_booking_created_at ON booking(created_at);
-- Optimize filtering by booking status or dates
CREATE INDEX idx_booking_status ON Booking(status);
CREATE INDEX idx_booking_start_date ON Booking(start_date);
CREATE INDEX idx_booking_end_date ON Booking(end_date);

-- PRIMARY KEY
CREATE INDEX idx_property_id ON property(property_id);
-- For searches by location or price
CREATE INDEX idx_property_location ON property(location);
CREATE INDEX idx_property_price ON property(pricepernight);

-- Speed up joins between booking and user/property
CREATE INDEX idx_booking_user_id ON Booking(user_id);
CREATE INDEX idx_booking_property_id ON Booking(property_id);

EXPLAIN ANALYZE SELECT * 
FROM Booking 
WHERE status = 'confirmed' AND start_date > '2025-11-01';


