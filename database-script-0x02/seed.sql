-- ====================================
-- 1. INSERT USERS (Hosts + Guests)
-- ====================================

INSERT INTO user (first_name, last_name, email, password_hash, phone, role)
VALUES
('Alice', 'Johnson', 'alice.johnson@example.com', 'hashed_pw1', '+12025550111', 'host'),
('Michael', 'Brown', 'michael.brown@example.com', 'hashed_pw2', '+12025550112', 'host'),
('Sarah', 'Smith', 'sarah.smith@example.com', 'hashed_pw3', '+12025550113', 'guest'),
('David', 'Wilson', 'david.wilson@example.com', 'hashed_pw4', '+12025550114', 'guest'),
('Emily', 'Davis', 'emily.davis@example.com', 'hashed_pw5', '+12025550115', 'guest');

-- ====================================
-- 2. INSERT PROPERTIES (Owned by Hosts)
-- ====================================

INSERT INTO property (host_id, name, description, location, pricepernight)
VALUES
(1, 'Sunny Apartment', 'Cozy 2-bedroom apartment with city view', 'New York, USA', 120.00),
(2, 'Beachfront Villa', 'Spacious villa with private beach access', 'Miami, USA', 350.00),
(1, 'Mountain Cabin', 'Quiet cabin surrounded by pine trees', 'Aspen, USA', 200.00);

-- ====================================
-- 3. INSERT BOOKINGS (Made by Guests)
-- ====================================

INSERT INTO booking (property_id, user_id, start_date, end_date, total_price, status)
VALUES
(1, 3, '2025-11-01', '2025-11-05', 480.00, 'confirmed'),
(2, 4, '2025-12-10', '2025-12-15', 1750.00, 'completed'),
(3, 5, '2025-12-20', '2025-12-25', 1000.00, 'pending'),
(1, 5, '2025-10-10', '2025-10-13', 360.00, 'cancelled');

-- ====================================
-- 4. INSERT PAYMENTS (Linked to Bookings)
-- ====================================

INSERT INTO payment (booking_id, amount, payment_date, payment_method)
VALUES
(1, 480.00, '2025-10-20', 'credit_card'),
(2, 1750.00, '2025-12-05', 'paypal'),
(3, 1000.00, '2025-12-18', 'bank_transfer');

-- ====================================
-- 5. INSERT REVIEWS (Guests reviewing Properties)
-- ====================================

INSERT INTO review (property_id, user_id, rating, comment)
VALUES
(1, 3, 5, 'Amazing stay! Great location and clean apartment.'),
(2, 4, 4, 'Beautiful view and private beach, but a bit pricey.'),
(3, 5, 5, 'Perfect cabin for a quiet holiday.');

-- ====================================
-- 6. INSERT MESSAGES (Between Guests and Hosts)
-- ====================================

INSERT INTO message (sender_id, recipient_id, message_body)
VALUES
(3, 1, 'Hi Alice, is the apartment available for next week?'),
(1, 3, 'Hi Sarah, yes it is available. Would you like to book?'),
(4, 2, 'Hi Michael, can I get a late check-out for my stay?'),
(2, 4, 'Sure, late check-out at 1 PM is fine.'),
(5, 1, 'Hi Alice, the cabin looks great! Does it have Wi-Fi?');
