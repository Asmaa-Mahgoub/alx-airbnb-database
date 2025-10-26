# Airbnb Database Normalization

## 1. Objective
The goal is to ensure the database follows Third Normal Form (3NF) to eliminate redundancy and maintain data integrity.

---

## 2. First Normal Form (1NF)
- Each table has a primary key.
- All attributes contain atomic values.
- There are no repeating groups or arrays.

✅ Achieved.

---

## 3. Second Normal Form (2NF)
- All non-key attributes depend on the entire primary key.
- No partial dependency exists since each table has a single-column primary key.

✅ Achieved.

---

## 4. Third Normal Form (3NF)
- All non-key attributes depend only on the primary key.
- No transitive dependencies identified.

✅ Achieved.

## 6. Conclusion
The database design meets 3NF requirements. Each table contains atomic data, full dependency on its primary key, and no transitive relationships.
