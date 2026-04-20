# Phase 5 - Aggregation and Grouping

Aggregation allows us to calculate summaries from data.

Examples:

- total orders
- average price
- number of reservations
- total revenue

SQL provides aggregate functions for this.

---

# Aggregate Functions

Common functions:

COUNT() -> count rows
SUM() -> sum numbers
AVG() -> average value
MIN() -> smallest value
MAX() -> largest value

Example:

SELECT COUNT(\*)
FROM users;

Returns total number of users.

---

# SUM

Example:

SELECT SUM(total_amount)
FROM orders;

Returns total revenue from all orders.

---

# AVG

Example:

SELECT AVG(price)
FROM products;

Returns average product price.

---

# MIN and MAX

Example:

SELECT MAX(price)
FROM products;

Returns the highest priced product.

---

# GROUP BY

GROUP BY rows with the same value.

Example:

SELECT user_id, COUNT(\*)
FROM orders
GROUP BY user_id;

Meaning:

Count how many orders each user has.

---

# Aggregation with JOIN

Example:

SELECT u.name, COUNT(o.id)
FROM users u
LEFT JOIN orders o
ON ui.id = o.user_id
GROUP BY u.name;

This shows:

how many orders each user made.

---

# HAVING

HAVING filters grouped results.

Example:

SELECT user_id, COUNT(_)
FROM orders
GROUP BY user_id
HAVING COUNT(_) > 1;

Meaning:

Return users with more than 1 order.
