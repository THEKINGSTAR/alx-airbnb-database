-- Write a query to find the total number of bookings made by each user, using the COUNT function and GROUP BY clause.
SELECT COUNT(*) AS total_bookings, user_id
FROM `Booking`
GROUP BY user_id;


-- Use a window function (ROW_NUMBER, RANK) to rank properties based on the total number of bookings they have received.

SELECT
    property_id,
    total_bookings,
    RANK() OVER (ORDER BY total_bookings DESC) AS booking_rank,
    ROW_NUMBER() OVER (ORDER BY total_bookings DESC) AS row_num
FROM (
    SELECT
        property_id,
        COUNT(*) AS total_bookings
    FROM Booking
    GROUP BY property_id
) AS subquery
LIMIT 100;
