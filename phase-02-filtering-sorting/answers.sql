-- Phase 2 Answers

-- Exercise 1
SELECT *
FROM users
WHERE city = 'Cebu';

-- Exercise 2
SELECT *
FROM users
WHERE is_active = true;

-- Exercise 3
SELECT *
FROM products
WHERE price > 2000;

-- Exercise 4
SELECT *
FROM products
WHERE stock < 15;

-- Exercise 5
SELECT *
FROM reservations
WHERE party_size > 3;

-- Exercise 6
SELECT *
FROM reservations
WHERE area = 'Main Hall';

-- Exercise 7
SELECT *
FROM users
WHERE city = 'Cebu'
AND is_active = true;

-- Exercise 8
SELECT *
FROM products
ORDER BY price ASC;

-- Exercise 9
SELECT *
FROM products
ORDER BY price DESC;

-- Exercise 10
SELECT *
FROM products
ORDER BY price DESC
LIMIT 3;

-- Exercise 11
SELECT *
FROM reservations
ORDER BY reservation_date;

-- Exercise 12
SELECT *
FROM orders
WHERE total_amount > 1000;