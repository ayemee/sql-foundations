-- Phase 4 Answers

-- Exercise 1
SELECT o.id, u.name
FROM orders o
JOIN users u
ON o.user_id = u.id;

-- Exercise 2
SELECT u.name, r.reservation_date
FROM reservations r
JOIN users u
ON r.user_id = u.id;

-- Exercise 3
SELECT u.name, r.party_size
FROM reservations r
JOIN users u
ON r.user_id = u.id;

-- Exercise 4
SELECT u.name, o.total_amount
FROM orders o
JOIN users u
ON o.user_id = u.id;

-- Exercise 5
SELECT u.name, o.total_amount
FROM users u
LEFT JOIN orders o
ON u.id = o.user_id;

-- Exercise 6
SELECT r.reservation_date, r.party_size, u.city
FROM reservations r
JOIN users u
ON r.user_id = u.id;

-- Exercise 7
SELECT u.name, o.order_date, o.total_amount
FROM orders o
JOIN users u
ON o.user_id = u.id
ORDER BY o.order_date;

-- Exercise 8
SELECT u.name, r.area, r.reservation_date
FROM reservations r
JOIN users u
ON r.user_id = u.id;