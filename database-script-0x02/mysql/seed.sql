-- Seed script for Airbnb-like Database

-- USERS
INSERT IGNORE INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at) VALUES
('11111111-1111-1111-1111-111111111111', 'Alice', 'Wang', 'alice@example.com', 'hashedpwd1', '1234567890', 'guest', NOW()),
('22222222-2222-2222-2222-222222222222', 'Bob', 'Smith', 'bob@example.com', 'hashedpwd2', '0987654321', 'host', NOW()),
('33333333-3333-3333-3333-333333333333', 'Clara', 'Zhou', 'clara@example.com', 'hashedpwd3', '1112223333', 'admin', NOW()),
('44444444-4444-4444-4444-444444444444', 'Alane', 'XWang', 'Alane@example.com', 'hashedpwd1', '1234567890', 'guest', NOW());

-- PROPERTIES
INSERT IGNORE INTO Property (property_id, host_id, name, description, location, pricepernight, created_at, updated_at) VALUES
('aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222', 'Seaside Villa', 'A beautiful villa by the sea.', 'California', 200.00, NOW(), NOW()),
('aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222', 'Mountain Cabin', 'Cozy cabin in the mountains.', 'Colorado', 150.00, NOW(), NOW());

-- BOOKINGS
INSERT IGNORE INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at) VALUES
('b1111111-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', '2025-07-01', '2025-07-05', 800.00, 'confirmed', NOW());



-- REVIEWS
INSERT IGNORE INTO Review (review_id, property_id, user_id, rating, comment, created_at) VALUES
('r1111111-rrrr-rrrr-rrrr-rrrrrrrrrrrr', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', 5, 'Amazing stay! Would book again.', NOW());

-- MESSAGES
INSERT IGNORE INTO Message (message_id, sender_id, recipient_id, message_body, sent_at) VALUES
('m1111111-mmmm-mmmm-mmmm-mmmmmmmmmmmm', '11111111-1111-1111-1111-111111111111', '22222222-2222-2222-2222-222222222222', 'Hi Bob, is the villa available in August?', NOW());

--Users
INSERT IGNORE INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
('u001-0000-0000-0000-000000000001', 'Alice', 'Wang', 'alice@example.com', 'pwd1', '1234567890', 'guest'),
('u002-0000-0000-0000-000000000002', 'Bob', 'Smith', 'bob@example.com', 'pwd2', '0987654321', 'host'),
('u003-0000-0000-0000-000000000003', 'Clara', 'Zhou', 'clara@example.com', 'pwd3', '1112223333', 'guest');

--Properties
INSERT IGNORE INTO Property (property_id, host_id, name, description, location, pricepernight)
VALUES
('p001-aaaa-aaaa-aaaa-aaaaaaaaaaaa', 'u002-0000-0000-0000-000000000002', 'Seaside Villa', 'Ocean view', 'Alexandria', 120.00),
('p002-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'u002-0000-0000-0000-000000000002', 'Desert Cabin', 'Quiet retreat', 'Siwa', 80.00);

--Bookings
INSERT IGNORE INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
('b001-1111-1111-1111-111111111111', 'p001-aaaa-aaaa-aaaa-aaaaaaaaaaaa', 'u001-0000-0000-0000-000000000001', '2025-07-01', '2025-07-05', 480.00, 'confirmed'),
('b002-2222-2222-2222-222222222222', 'p001-aaaa-aaaa-aaaa-aaaaaaaaaaaa', 'u003-0000-0000-0000-000000000003', '2025-07-10', '2025-07-12', 240.00, 'confirmed'),
('b003-3333-3333-3333-333333333333', 'p002-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'u001-0000-0000-0000-000000000001', '2025-07-15', '2025-07-16', 80.00, 'pending');

--Reviews
INSERT IGNORE INTO Review (review_id, property_id, user_id, rating, comment)
VALUES
('r001-aaaa-aaaa-aaaa-aaaaaaaaaaaa', 'p001-aaaa-aaaa-aaaa-aaaaaaaaaaaa', 'u001-0000-0000-0000-000000000001', 5, 'Amazing view and clean!'),
('r002-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'p002-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'u001-0000-0000-0000-000000000001', 4, 'Peaceful but too hot in July.'),
('r003-aaaa-aaaa-aaaa-aaaaaaaaaaaa', 'p001-aaaa-aaaa-aaaa-aaaaaaaaaaaa', 'u003-0000-0000-0000-000000000003', 3, 'Nice place but overpriced.');



-- ------------------------------------------------------

-- USERS
INSERT IGNORE INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at) VALUES
('11111111-1111-1111-1111-111111111111', 'Alice', 'Wang', 'alice@example.com', 'hashedpwd1', '1234567890', 'guest', NOW()),
('22222222-2222-2222-2222-222222222222', 'Bob', 'Smith', 'bob@example.com', 'hashedpwd2', '0987654321', 'host', NOW()),
('33333333-3333-3333-3333-333333333333', 'Clara', 'Zhou', 'clara@example.com', 'hashedpwd3', '1112223333', 'admin', NOW()),
('44444444-4444-4444-4444-444444444444', 'Alane', 'XWang', 'alane@example.com', 'hashedpwd1', '1234567890', 'guest', NOW()),
('55555555-5555-5555-5555-555555555555', 'David', 'Lee', 'david@example.com', 'hashedpwd4', '2223334444', 'guest', NOW()),
('66666666-6666-6666-6666-666666666666', 'Eva', 'Martinez', 'eva@example.com', 'hashedpwd5', '3334445555', 'host', NOW()),
('77777777-7777-7777-7777-777777777777', 'Frank', 'Johnson', 'frank@example.com', 'hashedpwd6', '4445556666', 'guest', NOW()),
('88888888-8888-8888-8888-888888888888', 'Grace', 'Kim', 'grace@example.com', 'hashedpwd7', '5556667777', 'admin', NOW());

-- PROPERTIES
INSERT IGNORE INTO Property (property_id, host_id, name, description, location, pricepernight, created_at, updated_at) VALUES
('aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222', 'Seaside Villa', 'A beautiful villa by the sea.', 'California', 200.00, NOW(), NOW()),
('aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222', 'Mountain Cabin', 'Cozy cabin in the mountains.', 'Colorado', 150.00, NOW(), NOW()),
('bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '66666666-6666-6666-6666-666666666666', 'Urban Loft', 'Modern loft in downtown.', 'New York', 180.00, NOW(), NOW()),
('bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '66666666-6666-6666-6666-666666666666', 'Countryside BnB', 'Quiet bed & breakfast.', 'Vermont', 120.00, NOW(), NOW()),
('bbbbbbb3-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '22222222-2222-2222-2222-222222222222', 'Desert Retreat', 'Peaceful desert house.', 'Arizona', 140.00, NOW(), NOW());

-- BOOKINGS
INSERT IGNORE INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at) VALUES
('b1111111-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', '2025-07-01', '2025-07-05', 800.00, 'confirmed', NOW()),
('b2222222-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '55555555-5555-5555-5555-555555555555', '2025-07-10', '2025-07-12', 360.00, 'confirmed', NOW()),
('b3333333-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '77777777-7777-7777-7777-777777777777', '2025-08-01', '2025-08-04', 360.00, 'pending', NOW()),
('b4444444-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'bbbbbbb3-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '44444444-4444-4444-4444-444444444444', '2025-07-15', '2025-07-17', 280.00, 'confirmed', NOW());

-- PAYMENTS
INSERT IGNORE INTO Payment (payment_id, booking_id, amount, payment_date, payment_method) VALUES

('p2222222-pppp-pppp-pppp-pppppppppppp', 'b2222222-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 360.00, NOW(), 'paypal'),
('p3333333-pppp-pppp-pppp-pppppppppppp', 'b3333333-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 360.00, NOW(), 'bank_transfer'),
('p4444444-pppp-pppp-pppp-pppppppppppp', 'b4444444-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 280.00, NOW(), 'credit_card'),
('p5555555-pppp-pppp-pppp-pppppppppppp', 'b1111111-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 800.00, NOW(), 'credit_card'),
('p6666666-pppp-pppp-pppp-pppppppppppp', 'b2222222-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 360.00, NOW(), 'paypal'),
('p7777777-pppp-pppp-pppp-pppppppppppp', 'b3333333-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 360.00, NOW(), 'bank_transfer'),
('p8888888-pppp-pppp-pppp-pppppppppppp', 'b4444444-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 280.00, NOW(), 'credit_card'),
('p9999999-pppp-pppp-pppp-pppppppppppp', 'b1111111-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 800.00, NOW(), 'credit_card'),
('p1010101-pppp-pppp-pppp-pppppppppppp', 'b2222222-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 360.00, NOW(), 'paypal'),

('p1212121-pppp-pppp-pppp-ppppppppp121', 'b4444444-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 280.00, NOW(), 'credit_card'),
('p1313131-pppp-pppp-pppp-ppppppppp131', 'b1111111-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 800.00, NOW(), 'credit_card'),
('p1414141-pppp-pppp-pppp-ppppppppp141', 'b2222222-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 360.00, NOW(), 'paypal'),
('p1515151-pppp-pppp-pppp-ppppppppp151', 'b3333333-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 360.00, NOW(), 'bank_transfer'),
('p1616161-pppp-pppp-pppp-ppppppppp161', 'b4444444-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 280.00, NOW(), 'credit_card'),
('p1717171-pppp-pppp-pppp-ppppppppp171', 'b1111111-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 800.00, NOW(), 'credit_card'),
('p2222222-pppp-pppp-pppp-pppppppppppp', 'b2222222-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 360.00, NOW(), 'paypal'),
('p3333333-pppp-pppp-pppp-pppppppppppp', 'b3333333-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 360.00, NOW(), 'bank_transfer'),
('p4444444-pppp-pppp-pppp-pppppppppppp', 'b4444444-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 280.00, NOW(), 'credit_card');

-- REVIEWS
INSERT IGNORE INTO Review (review_id, property_id, user_id, rating, comment, created_at) VALUES
('r4444444-rrrr-rrrr-rrrr-rrrrrrrrrrrr', 'bbbbbbb3-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '44444444-4444-4444-4444-444444444444', 5, 'Loved the desert retreat! Peaceful and clean.', NOW()),
('r2222222-rrrr-rrrr-rrrr-rrrrrrrrrrrr', 'bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '55555555-5555-5555-5555-555555555555', 4, 'Nice location and clean space.', NOW()),
('r3333333-rrrr-rrrr-rrrr-rrrrrrrrrrrr', 'bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '77777777-7777-7777-7777-777777777777', 3, 'Peaceful but needs better WiFi.', NOW()),
('r4444444-rrrr-rrrr-rrrr-rrrrrrrrrrrr', 'bbbbbbb3-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '44444444-4444-4444-4444-444444444444', 5, 'Loved the desert retreat! Peaceful and clean.', NOW()),
('r1111111-rrrr-rrrr-rrrr-rrrrrrrrrrrr', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', 5, 'Amazing stay! Would book again.', NOW()),
('r2222222-rrrr-rrrr-rrrr-rrrrrrrrrrrr', 'bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '55555555-5555-5555-5555-555555555555', 4, 'Nice location and clean space.', NOW()),
('r3333333-rrrr-rrrr-rrrr-rrrrrrrrrrrr', 'bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '77777777-7777-7777-7777-777777777777', 3, 'Peaceful but needs better WiFi.', NOW()),
('r4444444-rrrr-rrrr-rrrr-rrrrrrrrrrrr', 'bbbbbbb3-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '44444444-4444-4444-4444-444444444444', 5, 'Loved the desert retreat! Peaceful and clean.', NOW());

-- MESSAGES
INSERT IGNORE INTO Message (message_id, sender_id, recipient_id, message_body, sent_at) VALUES
('m1111111-mmmm-mmmm-mmmm-mmmmmmmmmmmm', '11111111-1111-1111-1111-111111111111', '22222222-2222-2222-2222-222222222222', 'Hi Bob, is the villa available in August?', NOW()),
('m2222222-mmmm-mmmm-mmmm-mmmmmmmmmmmm', '55555555-5555-5555-5555-555555555555', '66666666-6666-6666-6666-666666666666', 'Hi Eva, is the loft available next weekend?', NOW()),
('m3333333-mmmm-mmmm-mmmm-mmmmmmmmmmmm', '77777777-7777-7777-7777-777777777777', '66666666-6666-6666-6666-666666666666', 'Hello, I’d like to ask about amenities at the BnB.', NOW()),
('m4444444-mmmm-mmmm-mmmm-mmmmmmmmmmmm', '44444444-4444-4444-4444-444444444444', '22222222-2222-2222-2222-222222222222', 'Hi Bob, I loved your desert property!', NOW());
