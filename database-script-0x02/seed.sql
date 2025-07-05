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



-- ---------------------------------------------------------

-- USERS
INSERT IGNORE INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at) VALUES
('11111111-1111-1111-1111-111111111111', 'Alice', 'Wang', 'alice@example.com', 'hashedpwd1', '1234567890', 'guest', NOW());

-- PROPERTIES
INSERT IGNORE INTO Property (property_id, host_id, name, description, location, pricepernight, created_at, updated_at) VALUES
('aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222', 'Seaside Villa', 'Villa by the sea.', 'California', 200.00, NOW(), NOW()),
('aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222', 'Mountain Cabin', 'Cabin in the mountains.', 'Colorado', 150.00, NOW(), NOW()),
('ccccccc3-cccc-cccc-cccc-cccccccccccc', '66666666-6666-6666-6666-666666666666', 'City Apartment', 'Downtown apartment.', 'New York', 130.00, NOW(), NOW()),
('ddddddd4-dddd-dddd-dddd-dddddddddddd', '66666666-6666-6666-6666-666666666666', 'Lakeside Cottage', 'By the lake.', 'Michigan', 160.00, NOW(), NOW());

-- BOOKINGS (Alice makes 4 bookings)
INSERT IGNORE INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at) VALUES
('b1111111-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', '2025-07-01', '2025-07-05', 800.00, 'confirmed', NOW()),
('b2222222-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', '2025-07-10', '2025-07-13', 450.00, 'confirmed', NOW()),
('b3333333-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'ccccccc3-cccc-cccc-cccc-cccccccccccc', '11111111-1111-1111-1111-111111111111', '2025-08-01', '2025-08-04', 390.00, 'confirmed', NOW()),
('b4444444-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'ddddddd4-dddd-dddd-dddd-dddddddddddd', '11111111-1111-1111-1111-111111111111', '2025-09-01', '2025-09-03', 320.00, 'confirmed', NOW());

-- PAYMENTS for Alice's bookings
INSERT IGNORE INTO Payment (payment_id, booking_id, amount, payment_date, payment_method) VALUES
('p1111111-pppp-pppp-pppp-pppppppppppp', 'b1111111-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 800.00, NOW(), 'credit_card'),
('p2222222-pppp-pppp-pppp-pppppppppppp', 'b2222222-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 450.00, NOW(), 'paypal'),
('p3333333-pppp-pppp-pppp-pppppppppppp', 'b3333333-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 390.00, NOW(), 'bank_transfer'),
('p4444444-pppp-pppp-pppp-pppppppppppp', 'b4444444-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 320.00, NOW(), 'credit_card');

-- REVIEWS by Alice
INSERT IGNORE INTO Review (review_id, property_id, user_id, rating, comment, created_at) VALUES
('r1111111-rrrr-rrrr-rrrr-rrrrrrrrrrrr', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', 5, 'Loved the Seaside Villa!', NOW()),
('r2222222-rrrr-rrrr-rrrr-rrrrrrrrrrrr', 'aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', 4, 'The cabin was cozy and clean.', NOW()),
('r3333333-rrrr-rrrr-rrrr-rrrrrrrrrrrr', 'ccccccc3-cccc-cccc-cccc-cccccccccccc', '11111111-1111-1111-1111-111111111111', 3, 'Great location, but noisy.', NOW()),
('r4444444-rrrr-rrrr-rrrr-rrrrrrrrrrrr', 'ddddddd4-dddd-dddd-dddd-dddddddddddd', '11111111-1111-1111-1111-111111111111', 5, 'Perfect lake view and peaceful area!', NOW());
-- -----------------------------------------------------------

