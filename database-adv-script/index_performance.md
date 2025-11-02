# 🧱 Database Indexing and Performance Optimization

This project demonstrates how to identify high-usage columns in SQL database tables and create appropriate **indexes** to improve query performance.  
The schema is based on a **Property Booking System** consisting of three main tables — `User`, `Booking`, and `Property`.

---

## 📊 1. Database Schema Overview

### **User Table**
| Column | Description |
|--------|--------------|
| user_id | Unique ID for each user |
| first_name, last_name | User names |
| email | Used for login and uniqueness |
| password_hash | Encrypted password |
| phone | Contact number |
| role | Type of user (guest or host) |
| created_at | Timestamp of registration |

### **Booking Table**
| Column | Description |
|--------|--------------|
| booking_id | Unique ID for each booking |
| property_id | References Property table |
| user_id | References User table |
| start_date, end_date | Booking duration |
| total_price | Total cost |
| status | Booking status (confirmed, canceled, etc.) |
| created_at | Timestamp of booking creation |

### **Property Table**
| Column | Description |
|--------|--------------|
| property_id | Unique ID for each property |
| host_id | User ID of the host |
| name, description | Property info |
| location | Searchable location |
| pricepernight | Price per night |
| created_at, updated_at | Record timestamps |

---

## 🔍 2. Identify High-Usage Columns

Indexes are created on columns that are frequently used in:
- **JOIN** conditions  
- **WHERE** filters  
- **ORDER BY** sorting  

| Table | Column | Reason |
|--------|---------|--------|
| User | `user_id` | Joins with Booking table |
| User | `email` | Used in login/search |
| Booking | `user_id`, `property_id` | Joins with User and Property |
| Booking | `status`, `start_date`, `end_date` | Filtering |
| Property | `location`, `pricepernight` | Filtering/sorting by location or price |

---

## ⚙️ 3. SQL Index Creation Script

Save as **`database_index.sql`**

```sql
-- ==============================
-- INDEXES FOR USER TABLE
-- ==============================
CREATE INDEX idx_user_id ON user(user_id);
CREATE UNIQUE INDEX idx_unique_email ON user(email);

-- ==============================
-- INDEXES FOR BOOKING TABLE
-- ==============================
CREATE INDEX idx_booking_user_id ON booking(user_id);
CREATE INDEX idx_booking_property_id ON booking(property_id);
CREATE INDEX idx_booking_status ON booking(status);
CREATE INDEX idx_booking_start_date ON booking(start_date);
CREATE INDEX idx_booking_end_date ON booking(end_date);
CREATE INDEX idx_booking_created_at ON booking(created_at);

-- ==============================
-- INDEXES FOR PROPERTY TABLE
-- ==============================
CREATE INDEX idx_property_id ON property(property_id);
CREATE INDEX idx_property_location ON property(location);
CREATE INDEX idx_property_price ON property(pricepernight);










