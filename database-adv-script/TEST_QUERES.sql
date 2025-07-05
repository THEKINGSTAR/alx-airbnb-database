SELECT * FROM (
    SELECT
        user_id,
        first_name,
        last_name,
        email,
        phone_number,
        created_at,
        role
    FROM
        User
    WHERE
        created_at > '2025-07-05'
) AS subquery
WHERE
    role LIKE 'admin%';


    SELECT
        user_id,
        first_name,
        last_name,
        email,
        phone_number,
        created_at,
        role
    FROM
        User
    WHERE
        created_at > '2025-07-05'