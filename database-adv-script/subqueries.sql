-- Write a query to find all properties where the average rating is greater than 4.0 using a subquery.
SELECT 
    r.rating,
    r.comment,
    r.created_at,
    p.name AS property_name,
    p.location AS property_location
FROM 
    Review r
JOIN 
    Property p ON r.property_id = p.property_id
WHERE 
    p.property_id IN (
        SELECT 
            property_id
        FROM 
            Review
        GROUP BY 
            property_id
        HAVING
            AVG(rating) > 4.0
    );
    
-- Write a correlated subquery to find users who have made more than 3 bookings.
SELECT 
    u.user_id,
    u.first_name,
    u.last_name,
    u.phone_number,
    u.email
FROM 
    User u
WHERE 
    (SELECT 
        COUNT(*)
     FROM 
        Booking b
     WHERE 
        b.user_id = u.user_id) > 3; 
