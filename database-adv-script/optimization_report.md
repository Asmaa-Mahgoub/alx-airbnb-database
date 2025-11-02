# 🗂 SQL Indexing and Query Optimization

## 🎯 Objective
Understand how **creating indexes** can simplify SQL execution and optimize query performance by reducing the time required to locate and join data.

---

## 🧠 Concept Overview

### What Are Indexes?
Indexes act like a **book index** — instead of scanning every row in a table (a *full table scan*), the database jumps directly to the rows you need.  
This improves query performance significantly, especially for large datasets.

Example:
```sql
CREATE INDEX idx_user_email ON users(email);
