# Airbnb Database Normalization

## File: normalization.md

---

## 🎯 Objective:

Apply normalization principles to ensure the database is in **Third Normal Form (3NF)**.

---

## ✅ Initial Schema Review

The database schema includes six core entities:

* User
* Property
* Booking
* Payment
* Review
* Message

All attributes were clearly assigned and primary keys and foreign keys were established. Let's now walk through the normalization process.

---

## 🔍 Step-by-Step Normalization

### ➤ First Normal Form (1NF)

**Rule:** Atomic attributes, no repeating groups.

✅ All attributes in the schema are atomic:

* No multi-valued or nested fields.
* Each column holds single, indivisible values.

**✅ Status:** All tables satisfy 1NF.

---

### ➤ Second Normal Form (2NF)

**Rule:** Must be in 1NF and all non-key attributes must be fully functionally dependent on the **whole primary key**.

Since all tables use a **single-column primary key** (UUID), there are no partial dependencies.

**✅ Status:** All tables satisfy 2NF.

---

### ➤ Third Normal Form (3NF)

**Rule:** Must be in 2NF and have no transitive dependencies — i.e., non-key attributes cannot depend on other non-key attributes.

✅ No transitive dependencies found. All non-key fields directly depend on their table’s primary key.

* `User`: phone\_number, role, etc. → all depend on user\_id.
* `Property`: host\_id depends on user\_id, but host\_id is a FK and not redundant.
* `Booking`: total\_price could be derived, but is often stored for historical accuracy.
* `Payment`: payment\_method and amount tied directly to payment\_id.

**⚠ Consideration:**
While `total_price` could be derived from `(pricepernight × nights)`, it’s acceptable in denormalized systems for performance and auditability.

**✅ Status:** Schema satisfies 3NF with business-justified minor denormalization (Booking.total\_price).

---

## ✍️ Summary of Normalization Results

| Table    | 1NF | 2NF | 3NF | Notes                            |
| -------- | --- | --- | --- | -------------------------------- |
| User     | ✅   | ✅   | ✅   | Fully normalized                 |
| Property | ✅   | ✅   | ✅   | Fully normalized                 |
| Booking  | ✅   | ✅   | ✅   | Minor denormalization acceptable |
| Payment  | ✅   | ✅   | ✅   | Fully normalized                 |
| Review   | ✅   | ✅   | ✅   | Fully normalized                 |
| Message  | ✅   | ✅   | ✅   | Fully normalized                 |

---

## 🧾 Conclusion

The Airbnb-like database design is fully normalized to **Third Normal Form (3NF)**. All entities are well-structured, ensuring:

* Minimal redundancy
* High data integrity
* Efficient relationships across tables
