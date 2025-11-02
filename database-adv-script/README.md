# 🧠 Complex Queries with Joins

## 🎯 Objective
Master SQL joins by writing **complex queries** using different types of joins to retrieve meaningful data relationships across tables.

---

## 📋 Instructions

Write SQL queries using **INNER JOIN**, **LEFT JOIN**, and **FULL OUTER JOIN** as described below.

---

### 🧩 Combined SQL Queries

```sql
-- 1️⃣ INNER JOIN
-- Retrieve all bookings and the respective users who made those bookings.
SELECT 
    users.user_id,
    users.name,
    bookings.booking_id,
    bookings.booking_date
FROM users
INNER JOIN bookings 
    ON users.user_id = bookings.user_id;


-- 2️⃣ LEFT JOIN
-- Retrieve all properties and their reviews, including properties that have no reviews.
SELECT 
    properties.property_id,
    properties.property_name,
    reviews.review_id,
    reviews.rating
FROM properties
LEFT JOIN reviews 
    ON properties.property_id = reviews.property_id;


-- 3️⃣ FULL OUTER JOIN
-- Retrieve all users and all bookings, even if:
-- - a user has no booking
-- - a booking is not linked to a user
SELECT 
    users.user_id,
    users.name,
    bookings.booking_id,
    bookings.booking_date
FROM users
FULL OUTER JOIN bookings 
    ON users.user_id = bookings.user_id;
