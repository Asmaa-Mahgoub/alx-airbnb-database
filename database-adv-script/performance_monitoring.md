# 🏡 ALX Airbnb Clone — Database Performance Monitoring and Refinement

## 📌 Overview
This document describes the process of **monitoring and refining database performance** for the Airbnb Clone project.  
It focuses on **query optimization, indexing strategies, and partitioning** to enhance overall efficiency.

---

## 🎯 Objective
To continuously **monitor, analyze, and improve** database performance by:
- Examining query execution plans using SQL tools.  
- Identifying performance bottlenecks.  
- Implementing schema and indexing adjustments based on real execution data.  

---

## 🧠 Monitoring Queries
The following steps were performed to analyze and monitor query performance:

1. **Used SQL performance tools:**
   - `SHOW PROFILE`
   - `EXPLAIN ANALYZE`
   - `EXPLAIN`  

2. **Monitored frequently used queries**, including:
   - Fetching bookings by user.
   - Fetching reviews by property.
   - Aggregating total bookings per user.  

3. **Evaluated execution time, rows scanned, and indexing efficiency** for each query.

---

## ⚠️ Identified Bottlenecks and Fixes

| Query | Bottleneck | Fix Implemented |
|--------|-------------|----------------|
| Bookings by user | Sequential scan of a large table | Created index on `user_id` |
| Reviews by property | No index on `property_id` | Created index on `property_id` |
| Aggregations | Full scan on large booking data | Partitioned `bookings` table by `start_date` |

---

## ⚙️ Example Indexes Implemented

```sql
CREATE INDEX idx_user_id ON bookings(user_id);
CREATE INDEX idx_property_id ON bookings(property_id);
CREATE INDEX idx_start_date ON bookings(start_date);
CREATE INDEX idx_user_date ON bookings(user_id, start_date);
CREATE INDEX idx_property_date ON bookings(property_id, start_date);
