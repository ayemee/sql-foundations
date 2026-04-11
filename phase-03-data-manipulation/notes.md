# Phase 3 - Data Manipulation

This phase focuses on modifying data in the database.

Core commands:

- INSERT
- UPDATE
- DELETE

These are used by backend applications when users interact with a system.

Examples:

- creating an account
- placing an order
- updating a reservation
- removing a record

---

# INSERT

INSERT adds new rows to a table.

Example:

INSERT INTO users (name, email, city)
VALUES ('Mark', 'mark@email.com', 'Cebu')

Meaning:

Add a new user with the given values.

# INSERT multiple rows

INSERT INTO products (name, category, price, stock)
VALUES
('Headset', 'Accesories', 2500, 10),
('Webcam', 'Accesories', 1800, 8),

# UPDATE

UPDATE modifies existing records.

Example:

Update users
SET city = 'Bohol'
WHERE id = 2;

Important rule:

Always user WHERE.

Without WHERE you update ALL rows.

# UPDATE multiple columns

UPDATE products
SET price = 3200, stock = 20
WHERE id = 1;

---

# DELETE

DELETE removes rows.

Example:

DELETE FROM orders
WHERE id = 3;

Again:

Without WHERE you DELETE all rows.

# Backend thinking

INSERT -> create resource
UPDATE -> modify resource
DELETE -> remove resource
SELECT -> read resource

These are the core CRUD operations.

Create
Read
Update
Delete
