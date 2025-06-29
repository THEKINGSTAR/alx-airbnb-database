# Seed Script Documentation

## Directory: database-script-0x02/

## File: README.md

---

## 🎯 Objective

To populate the Airbnb-style database with realistic sample data for testing and development purposes.

---

## 📦 Seed Contents

The `seed.sql` file includes `INSERT` statements for the following tables:

* User
* Property
* Booking
* Payment
* Review
* Message

---

## 🧪 Data Coverage

The sample data reflects real-world usage and includes:

* Multiple user roles (guest, host, admin)
* Hosts listing properties
* Guests making bookings
* Corresponding payments
* Reviews linked to users and properties
* Messages between users

---

## 💡 Notes

* UUIDs are hardcoded for consistency across FKs.
* Timestamps use `NOW()` to reflect creation time.
* ENUMs reflect allowed values as per schema constraints.

---

## 🛠 How to Run

Ensure your schema is created first using the `airbnb_schema.sql` file.

Then run:

```bash
psql -d your_database -f seed.sql
```

Replace `your_database` with the name of your PostgreSQL or MySQL database.

---

## 🔁 Reusability

You can extend the seed file by duplicating existing entries with new IDs and adjusting logical fields such as `start_date`, `pricepernight`, and `rating`.

---