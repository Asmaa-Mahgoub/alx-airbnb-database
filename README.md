# Airbnb Database Schema

## 🎯 Objective
The goal of this task is to define the database schema for the Airbnb project by writing SQL `CREATE TABLE` statements that set up all entities, relationships, and constraints.

---

## 🗂️ Files
- **schema.sql** — Contains all `CREATE TABLE` queries for defining entities such as `User`, `Property`, `Booking`, etc.
- **README.md** — Provides explanations of the schema and relationships.

---

## 🧩 Entities
This schema includes the following main entities:
- **User** – Stores information about users (hosts and guests).
- **Property** – Stores details about each property listed.
- **Booking** – Links users to properties with booking details.
- **Review** – Stores feedback from guests.
- **Payment** – Handles booking payments.

---

## 🔗 Relationships
- A **User** can have many **Properties** (one-to-many).
- A **User** can make many **Bookings**.
- A **Booking** belongs to one **Property** and one **User**.
- A **Review** belongs to one **Booking**.
- A **Payment** is linked to one **Booking**.

---

## ⚙️ Constraints and Data Integrity
- **Primary Keys (PK)** are defined for all entities.
- **Foreign Keys (FK)** establish relationships.
- **NOT NULL** and **UNIQUE** constraints ensure data quality.
- **CHECK** constraints validate input (e.g., price > 0).
- Indexes are created on frequently queried fields like `email` or `property_id`.

---

## 🚀 How to Run
1. Open a SQL client (e.g., MySQL Workbench, PostgreSQL, or VS Code SQL extension).
2. Connect to your database.
3. Run the following command:
   ```sql
   SOURCE path/to/schema.sql;
