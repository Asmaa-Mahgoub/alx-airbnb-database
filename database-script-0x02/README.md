# 🏡 Airbnb Database – Sample Data Insertion

## 🎯 Objective
This task focuses on populating the **Airbnb database** with sample data to simulate real-world usage.  
The goal is to insert realistic records into all entities — **User**, **Property**, **Booking**, **Payment**, **Review**, and **Message** — while maintaining referential integrity.

---


---

## 🧱 Entities and Relationships
Each entity is related through foreign keys to reflect real-life Airbnb interactions:

| Table | Description | Key Relationships |
|--------|--------------|------------------|
| **user** | Stores all users (hosts & guests) | Referenced by `property`, `booking`, `review`, and `message` |
| **property** | Contains details of properties listed by hosts | `host_id` → `user(id)` |
| **booking** | Records guest reservations | `property_id` → `property(id)`, `user_id` → `user(id)` |
| **payment** | Tracks payments for bookings | `booking_id` → `booking(id)` |
| **review** | Stores feedback left by guests | `property_id`, `user_id` foreign keys |
| **message** | Contains communication between users | `sender_id`, `recipient_id` → `user(id)` |

---

## 🧩 Sample Data Overview

### 👤 Users
- Includes both **hosts** and **guests**.  
- Each user has a name, email, phone, and role.  

### 🏠 Properties
- Each property belongs to a **host**.  
- Includes attributes like `name`, `description`, `location`, and `pricepernight`.

### 📅 Bookings
- Represent **guest reservations** for properties.  
- Contain `start_date`, `end_date`, `total_price`, and booking `status`.

### 💳 Payments
- Each payment links to a booking and includes `amount`, `date`, and `method`.

### 🌟 Reviews
- Guests provide ratings and comments for properties they stayed in.

### 💬 Messages
- Represents communication between users (e.g., guest ↔ host).

---

## 💾 How to Use

1. Ensure that the database schema (`schema.sql`) is already executed:
   ```sql
   SOURCE path/to/schema.sql;


