#!/usr/bin/python3

import random
import uuid
from datetime import datetime, timedelta
from faker import Faker
import mysql.connector

fake = Faker()

# Connect to MySQL
db = mysql.connector.connect(
    host="localhost",
    user="root",
    password="root",  # Replace with your actual root password
    database="alx_airbnb_database"
)
cursor = db.cursor()

# --- Insert Users ---
user_ids = []
for _ in range(10):  # 10 users
    user_id = str(uuid.uuid4())
    role = random.choice(["guest", "host"])
    cursor.execute("""
        INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role)
        VALUES (%s, %s, %s, %s, %s, %s, %s)
    """, (
        user_id,
        fake.first_name(),
        fake.last_name(),
        fake.unique.email(),
        fake.sha256(),
        fake.phone_number(),
        role
    ))
    user_ids.append((user_id, role))

# --- Insert Properties ---
property_ids = []
for _ in range(5):  # 5 properties by random hosts
    host_id = random.choice([u[0] for u in user_ids if u[1] == 'host'])
    property_id = str(uuid.uuid4())
    cursor.execute("""
        INSERT INTO Property (property_id, host_id, name, description, location, pricepernight)
        VALUES (%s, %s, %s, %s, %s, %s)
    """, (
        property_id,
        host_id,
        fake.company() + " Residence",
        fake.text(max_nb_chars=100),
        fake.city(),
        round(random.uniform(50, 300), 2)
    ))
    property_ids.append(property_id)

# --- Insert Bookings ---
booking_ids = []
for _ in range(20):  # 20 bookings
    guest_id = random.choice([u[0] for u in user_ids if u[1] == 'guest'])
    property_id = random.choice(property_ids)
    start_date = fake.date_between(start_date='-30d', end_date='today')
    end_date = start_date + timedelta(days=random.randint(1, 7))
    total_price = round(random.uniform(100, 1500), 2)
    status = random.choice(['pending', 'confirmed', 'canceled'])
    booking_id = str(uuid.uuid4())
    cursor.execute("""
        INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
        VALUES (%s, %s, %s, %s, %s, %s, %s)
    """, (
        booking_id,
        property_id,
        guest_id,
        start_date,
        end_date,
        total_price,
        status
    ))
    booking_ids.append((booking_id, property_id, guest_id))

# --- Insert Reviews ---
for _ in range(10):  # 10 reviews from guests
    property_id = random.choice(property_ids)
    guest_id = random.choice([u[0] for u in user_ids if u[1] == 'guest'])
    rating = random.randint(1, 5)
    comment = fake.sentence()
    review_id = str(uuid.uuid4())
    cursor.execute("""
        INSERT INTO Review (review_id, property_id, user_id, rating, comment)
        VALUES (%s, %s, %s, %s, %s)
    """, (
        review_id,
        property_id,
        guest_id,
        rating,
        comment
    ))

# Commit and close
db.commit()
cursor.close()
db.close()

print("✅ Seed complete: users, properties, bookings, reviews.")

