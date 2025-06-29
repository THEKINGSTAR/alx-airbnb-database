-- Seed script for Airbnb-like Database

-- USERS
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at) VALUES
('11111111-1111-1111-1111-111111111111', 'Alice', 'Wang', 'alice@example.com', 'hashedpwd1', '1234567890', 'guest', NOW()),
('22222222-2222-2222-2222-222222222222', 'Bob', 'Smith', 'bob@example.com', 'hashedpwd2', '0987654321', 'host', NOW()),
('33333333-3333-3333-3333-333333333333', 'Clara', 'Zhou', 'clara@example.com', 'hashedpwd3', '1112223333', 'admin', NOW());

-- PROPERTIES
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight, created_at, updated_at) VALUES
('aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222', 'Seaside Villa', 'A beautiful villa by the sea.', 'California', 200.00, NOW(), NOW()),
('aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222', 'Mountain Cabin', 'Cozy cabin in the mountains.', 'Colorado', 150.00, NOW(), NOW());

-- BOOKINGS
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at) VALUES
('b1111111-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', '2025-07-01', '2025-07-05', 800.00, 'confirmed', NOW());

-- PAYMENTS
INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method) VALUES
('p1111111-pppp-pppp-pppp-pppppppppppp', 'b1111111-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 800.00, NOW(), 'credit_card');

-- REVIEWS
INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at) VALUES
('r1111111-rrrr-rrrr-rrrr-rrrrrrrrrrrr', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', 5, 'Amazing stay! Would book again.', NOW());

-- MESSAGES
INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at) VALUES
('m1111111-mmmm-mmmm-mmmm-mmmmmmmmmmmm', '11111111-1111-1111-1111-111111111111', '22222222-2222-2222-2222-222222222222', 'Hi Bob, is the villa available in August?', NOW());
