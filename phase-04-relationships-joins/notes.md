# Phase 4 - Relationships and Joins

Relational databases store data across multiple tables.

Relationships are created using foreign keys.

Example relationship:

users
|
|----< orders
|
|----< reservations

This means:

- one user can have many orders
- one user can have many reservations

JOIN allows us to combine data from multiple tables.

---

# INNER JOIN

INNER JOIN returns rows where a match exists in both tables.

Example:

SELECT \* FROM orders
INNER JOIN users
ON orders.user_id = users.id;

Meaning:

Combine orders with their corresponding user.

---

# Selecting specific columns

SELECT users.name, orders.total_amount
FROM orders
INNER JOIN users
ON orders.user_id = user.id

Result:

user name + order amount.

---

#LEFT JOIN

LEFT JOIN returns all rows from the left table.

If no match exists in the right table, NULL is returned.

Example:

SELECT users.name, orders.total_amount
FROM users
LEFT JOIN orders
ON users.id = orders.user_id;

Meaning:

Show all users even if they have no orders.

---

# Table Aliases

Aliases make queries shorter.

Example:

SELECT u.name, o.total_amount
FROM orders o
JOIN users u
ON o.user_id = u.id;

u -> users
o -> orders

---

# Mental Model

Think of tables like related objects.

Example Javascript:

const users = [
{id: 1, name: "Mee"}
]

const orders = [
{ id:1, user_id:1, total:500 }
]

JOIN connects:

orders.user_id -> users.id

So we can see:

Mee -> order 500
