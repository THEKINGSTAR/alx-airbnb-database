--Write a query using an INNER JOIN to retrieve all bookings and the respective users who made those bookings.
SELECT
    u.user_id,
    u.first_name,
    u.last_name,
    u.email,
    u.phone_number,
    u.created_at,
    b.booking_id,
    b.start_date,
    b.end_date,
    b.total_price,
    b.status
     
FROM
    Booking b
INNER JOIN
    User u ON u.user_id = b.user_id
WHERE
    u.role = 'guest';

--Write a query using aLEFT JOIN to retrieve all properties and their reviews, including properties that have no reviews.
SELECT 
    p.name,
    p.description,
    p.location,
    p.pricepernight,
    r.review_id,
    r.rating,
    r.comment,
    r.created_at
FROM
    Property p
LEFT JOIN
    Review r on p.property_id = r.property_id
ORDER BY
    p.name;



--Write a query using a FULL OUTER JOIN to retrieve all users and all bookings, even if the user has no booking or a booking is not linked to a user.
-- Users with or without bookings
SELECT
    u.user_id,
    u.first_name,
    u.last_name,
    u.email,
    u.phone_number,
    b.booking_id,
    b.start_date,
    b.end_date,
    b.total_price,
    b.status
FROM
    User u
LEFT JOIN
    Booking b ON u.user_id = b.user_id
UNION
-- Bookings with no user (orphans)
SELECT
    u.user_id,
    u.first_name,
    u.last_name,
    u.email,
    u.phone_number,
    b.booking_id,
    b.start_date,
    b.end_date,
    b.total_price,
    b.status
FROM
    User u
RIGHT JOIN
    Booking b ON u.user_id = b.user_id;
