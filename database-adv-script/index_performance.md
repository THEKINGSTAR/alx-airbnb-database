# Index Performance Evaluation

## Tables Optimized
- User
- Booking
- Property

## Indexes Created

| Table     | Column         | Index Name             |
|-----------|----------------|------------------------|
| User      | email          | idx_user_email         |
| User      | role           | idx_user_role          |
| Booking   | user_id        | idx_booking_user       |
| Booking   | property_id    | idx_booking_property   |
| Booking   | status         | idx_booking_status     |
| Booking   | start_date     | idx_booking_start_date |
| Property  | host_id        | idx_property_host      |
| Property  | location       | idx_property_location  |

## Performance Comparison (Example)

### Query: Get all bookings for a specific user
```sql
EXPLAIN SELECT * FROM Booking WHERE user_id = 'u001-0000-0000-0000-000000000001';
```
