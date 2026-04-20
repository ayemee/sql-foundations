-- Phase 5 Answers

-- Exercise 1
SELECT COUNT(*)
FROM users;

-- Exercise 2
SELECT COUNT(*)
FROM products;

-- Exercise 3
SELECT SUM(total_amount)
FROM orders;

-- Exercise 4
SELECT AVG(price)
FROM products;

-- Exercise 5
SELECT MAX(price)
FROM products;

-- Exercise 6
SELECT COUNT(*)
FROM reservations;

-- Exercise 7
SELECT user_id, COUNT(*)
FROM orders
GROUP BY user_id;

-- Exercise 8
SELECT u.name, COUNT(o.id)
FROM users u
LEFT JOIN orders o
ON u.id = o.user_id
GROUP BY u.name;

-- Exercise 9
SELECT user_id, COUNT(*)
FROM orders
GROUP BY user_id
HAVING COUNT(*) > 1;

-- Exercise 10
SELECT area, SUM(party_size)
FROM reservations
GROUP BY area;