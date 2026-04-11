-- Phase 3 Answers

-- Exercise 1
INSERT INTO users (name, email, city)
VALUES ('David','david@email.com','Cebu');

-- Exercise 2
INSERT INTO products (name, category, price, stock)
VALUES ('Laptop Sleeve','Accessories',1200,15);

-- Exercise 3
INSERT INTO reservations
(user_id, reservation_date, reservation_time, party_size, area, status)
VALUES
(1,'2026-07-28','19:00:00',2,'Riverside','CONFIRMED');

-- Exercise 4
UPDATE users
SET city = 'Manila'
WHERE id = 1;

-- Exercise 5
UPDATE products
SET stock = 30
WHERE id = 1;

-- Exercise 6
UPDATE reservations
SET party_size = 5
WHERE id = 2;

-- Exercise 7
DELETE FROM orders
WHERE id = 3;

-- Exercise 8
DELETE FROM reservations
WHERE status = 'PENDING';