# 🧩 Table Partitioning Optimization

## 🎯 Objective
Improve query performance on large datasets by implementing **table partitioning** on the `Booking` table based on the `start_date` column.

---

## 📘 Overview
When working with large datasets (e.g., millions of booking records), queries filtering by date ranges can become slow.  
To address this, we apply **partitioning**, which splits a large table into smaller, manageable parts (partitions).  
This allows the database to scan only the relevant partition, significantly improving query performance.

---

## ⚙️ Steps Implemented

### 1. Create a Partitioned Table
We created a new table `booking`, partitioned by the **year** of the `start_date` column.

```sql
ALTER TABLE booking RENAME TO booking_old;
CREATE TABLE oboking (
    booking_id UUID PRIMARY KEY,
    property_id UUID NOT NULL,
    user_id UUID NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_price DECIMAL(10, 2) NOT NULL,
    status ENUM('pending', 'confirmed', 'canceled') NOT NULL DEFAULT 'pending',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)
PARTITION BY RANGE (YEAR(start_date)) (
    PARTITION p2023 VALUES LESS THAN (2024),
    PARTITION p2024 VALUES LESS THAN (2025),
    PARTITION p2025 VALUES LESS THAN (2026),
    PARTITION pmax VALUES LESS THAN MAXVALUE
);
INSERT INTO booking SELECT * FROM booking_old;
EXPLAIN ANALYZE
SELECT * FROM booking
WHERE start_date BETWEEN '2024-01-01' AND '2024-12-31';
