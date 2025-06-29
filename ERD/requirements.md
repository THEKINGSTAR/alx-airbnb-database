# ALX-Airbnb-Database Project

## Directory: ERD/

### File: requirements.md

---
**Objective:** Create an Entity-Relationship (ER) diagram based on the Airbnb-style database specification.

### ✅ Instructions:

1. **Identify Entities and Attributes**
   Extract all entities involved in the system along with their respective attributes.

   **Entities Identified:**

   * **User**

     * user\_id (PK)
     * first\_name
     * last\_name
     * email (UNIQUE)
     * password\_hash
     * phone\_number
     * role (ENUM: guest, host, admin)
     * created\_at

   * **Property**

     * property\_id (PK)
     * host\_id (FK to User.user\_id)
     * name
     * description
     * location
     * pricepernight
     * created\_at
     * updated\_at

   * **Booking**

     * booking\_id (PK)
     * property\_id (FK to Property.property\_id)
     * user\_id (FK to User.user\_id)
     * start\_date
     * end\_date
     * total\_price
     * status (ENUM: pending, confirmed, canceled)
     * created\_at

   * **Payment**

     * payment\_id (PK)
     * booking\_id (FK to Booking.booking\_id)
     * amount
     * payment\_date
     * payment\_method (ENUM: credit\_card, paypal, stripe)

   * **Review**

     * review\_id (PK)
     * property\_id (FK to Property.property\_id)
     * user\_id (FK to User.user\_id)
     * rating (1–5)
     * comment
     * created\_at

   * **Message**

     * message\_id (PK)
     * sender\_id (FK to User.user\_id)
     * recipient\_id (FK to User.user\_id)
     * message\_body
     * sent\_at

2. **Define Relationships Between Entities**

   * **User ↔ Booking**: One-to-Many (One user can make many bookings)
   * **Property ↔ Booking**: One-to-Many (One property can be booked many times)
   * **Booking ↔ Payment**: One-to-One (One booking has one payment)
   * **User ↔ Property**: One-to-Many (One host user can own many properties)
   * **User ↔ Review**: One-to-Many (One user can write many reviews)
   * **Property ↔ Review**: One-to-Many (One property can receive many reviews)
   * **User ↔ Message (sender & recipient)**: Self-referencing relationship with two roles (sender and receiver)

3. **Create Visual Representation**

   * Use Draw\.io or diagrams.net.
   * Represent each entity as a table with its attributes.
   * Use connectors to draw relationships with labels.
   * Highlight primary keys (PK), foreign keys (FK), and ENUM constraints visually.

4. **Deliverables**

   * ER Diagram in `.drawio` format
   * Optional: Export as `.png` or `.pdf` for visual review
