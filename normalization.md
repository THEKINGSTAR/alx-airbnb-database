**`alx-airbnb-database`** **`normalization.md`**

# ✅ Database Normalization – Airbnb Clone

This document outlines how the Airbnb clone database schema adheres to **Third Normal Form (3NF)** by applying systematic normalization to eliminate redundancy, ensure data integrity, and optimize performance.

---

## 🔍 Step-by-Step Normalization

---

### 🧱 First Normal Form (1NF)

**Goal:** Eliminate repeating groups and ensure atomic values.

- ✅ All attributes contain **atomic values** (e.g., `email`, `password_hash`, `start_date`)
- ✅ No multi-valued fields or arrays
- ✅ Each row is uniquely identified by a **primary key** (`user_id`, `property_id`, etc.)

🟢 **Example:**
| user_id | first_name | email           | role  |
|---------|------------|------------------|-------|
| U123    | Khaled     | khaled@example.com | host |

✅ `email` is atomic — no comma-separated emails or phone numbers.

---

### 🧱 Second Normal Form (2NF)

**Goal:** Eliminate partial dependency on a composite key.

- All tables have **single-column primary keys** (UUIDs).
- ✅ All **non-key attributes are fully dependent** on the table’s primary key.

🟢 **Example:**

In the `Booking` table:

| booking_id | property_id | user_id | total_price |
|------------|-------------|---------|-------------|

All columns are functionally dependent on the single `booking_id`.  
No partial dependencies exist.

---

### 🧱 Third Normal Form (3NF)

**Goal:** Eliminate transitive dependencies.

- ✅ No non-key attribute depends on another non-key attribute.
- ✅ Each non-key field is **directly dependent on the primary key**.

🟢 **Example:**

In the `Review` table:

| review_id | user_id | property_id | rating | comment |

- `rating` and `comment` only depend on `review_id` — not indirectly through `user_id` or `property_id`.

---

## 💡 Additional Notes

### 🔄 Relationships
- **Foreign keys** enforce referential integrity (e.g., `host_id` in `Property` references `User`)
- Redundant fields like `host_name` or `user_email` are avoided in dependent tables

### 📉 Denormalization Consideration
- For performance tuning (e.g., reporting, analytics), denormalized views or caching can be introduced — *without violating 3NF in the core schema.*

---

## ✅ Summary

| Normal Form | Criteria Met                 | Notes                              |
|-------------|------------------------------|-------------------------------------|
| 1NF         | Atomic values, no repetition | ✅ All tables comply                |
| 2NF         | Full functional dependency   | ✅ No composite keys, no violation  |
| 3NF         | No transitive dependency     | ✅ Schema is in 3NF                 |

---

## 🧠 Conclusion

The Airbnb clone database schema was designed to meet the standards of **Third Normal Form (3NF)**.  
This ensures minimal redundancy, avoids anomalies, and supports future scalability.

