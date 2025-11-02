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

# 🧠 SQL Subqueries: Correlated vs. Non-Correlated

This exercise demonstrates how to write **non-correlated** and **correlated** subqueries in SQL using a property booking database.

---

## 🏘️ Non-Correlated Subquery

### 🎯 Goal
Find all **properties** where the **average rating** is greater than `4.0`.

### 💡 Explanation
A **non-correlated subquery** runs **independently** of the outer query.  
It first produces a list of property IDs that meet the condition, and then the outer query uses that result.

### 🧩 Query
```sql
SELECT property_name
FROM properties
WHERE property_id IN (
    SELECT property_id
    FROM reviews
    GROUP BY property_id
    HAVING AVG(rating) > 4.0
);

# 🏠 SQL Aggregation and Ranking Queries

## 🎯 Objectives
This project demonstrates how to:
1. Use **aggregate functions** (`COUNT`) with `GROUP BY` to summarize data.
2. Use **window functions** (`RANK()`) to rank results based on aggregated values.

---

## 📊 1️⃣ Total Number of Bookings per User

### 💡 Purpose
Find the total number of bookings made by each user, and order them from most to least active.

### 🧩 Query
```sql
SELECT
    user_id,
    COUNT(booking_id) AS total_booking
FROM booking
GROUP BY user_id
ORDER BY total_booking DESC;

# 🏠 Ranking Properties by Total Bookings (Using Window Functions)

## 🎯 Objective
This task demonstrates how to use SQL **window functions** (specifically `RANK()`) to rank properties based on the total number of bookings they have received.

## 🧩 Query Explanation
```sql
SELECT 
    p.property_id, 
    p.name, 
    RANK() OVER(ORDER BY COUNT(b.booking_id) DESC) AS booking_rank 
FROM property p
LEFT JOIN booking b 
    ON p.property_id = b.property_id
GROUP BY 
    p.property_id, p.name;
