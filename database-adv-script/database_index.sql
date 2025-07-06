EXPLAIN SELECT *
FROM Booking
WHERE user_id = 'u001-0000-0000-0000-000000000001';


-- User Table Indexes
CREATE INDEX idx_user_email ON User(email);
CREATE INDEX idx_user_role ON User(role);

-- Booking Table Indexes
CREATE INDEX idx_booking_user ON Booking(user_id);
CREATE INDEX idx_booking_property ON Booking(property_id);
CREATE INDEX idx_booking_status ON Booking(status);
CREATE INDEX idx_booking_start_date ON Booking(start_date);

-- Property Table Indexes
CREATE INDEX idx_property_host ON Property(host_id);
CREATE INDEX idx_property_location ON Property(location);


EXPLAIN SELECT *
FROM Booking
WHERE user_id = 'u001-0000-0000-0000-000000000001';
