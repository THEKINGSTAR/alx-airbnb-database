-- Write a query to find the total number of bookings made by each user, using the COUNT function and GROUP BY clause.
SELECT COUNT(*) AS total_bookings, user_id
FROM `Booking`
GROUP BY user_id;


-- Use a window function (ROW_NUMBER, RANK) to rank properties based on the total number of bookings they have received.

SELECT property_id, 
       COUNT(*) AS total_bookings,
       RANK() OVER (ORDER BY COUNT(*) DESC) AS booking_rank
FROM `Booking`
GROUP BY property_id 
ORDER BY booking_rank DESC;