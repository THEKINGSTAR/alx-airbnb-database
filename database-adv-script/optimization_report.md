# Query Optimization Report

## Objective
Retrieve complete booking information with associated user, property, and payment data efficiently.

---

## Initial Query
```sql
SELECT b.booking_id, b.start_date, ...
FROM Booking b
JOIN User u ON b.user_id = u.user_id
JOIN Property p ON b.property_id = p.property_id
LEFT JOIN Payment pay ON b.booking_id = pay.booking_id;
````

## EXPLAIN Analysis (Before Indexes)

* `Booking`: type = ALL, key = NULL
* `User`: type = ALL, key = NULL
* `Property`: type = ALL, key = NULL
* `Payment`: type = ALL, key = NULL

## Optimization Steps

* Added indexes:

  * `idx_booking_user` on Booking(user\_id)
  * `idx_booking_property` on Booking(property\_id)
  * `idx_payment_booking` on Payment(booking\_id)

## Refactored Query

No logic change, but execution improved with indexes.

## EXPLAIN Analysis (After Indexes)

* `Booking`: type = index, key = PRIMARY
* `User`: type = ref, key = PRIMARY
* `Property`: type = ref, key = PRIMARY
* `Payment`: type = ref, key = idx\_payment\_booking

---

## Outcome

Query execution time dropped significantly (especially on larger datasets). Indexing foreign keys and frequently joined columns improved JOIN performance and reduced row scans.
