# Phase 2 - Filtering and Sorting

This phase focuses on retrieving a specific records using conditions

Core concepts:

- WHERE
- comparison operators
- logical operators
- ORDER BY
- LIMIT

These allow SQL queries to filter and control returned data.

---

# WHERE

The WHERE cluaes filters rows.

Example:

SELECT \* FROM users
WHERE city = 'Cebu';

This returns only users located in Cebu.

---

# Comparison Operators

Common operators used in WHERE.

= equal
!= not equal

> greater than
> < less than
> = greater or equal
> <= less or equal

Example

SELECT \* FROM products
WHERE price > 1000;

Returns products more expensive than 1000.

# Logical Operators

Used to combine conditions.

AND -> both conditions must be true
OR -> one condition must be true
NOT -> reverse condition

# ORDER BY

Sort query results.

Ascending order:

SELECT \* FROM products
ORDER BY price ASC;

Descending order:

SELECT \* FROM products
ORDER BY price DESC;

# LIMIT

Limit the number of returned rows.

Example:

SELECT \* FROM products
LIMIT 3;

Return only the first 3 rows.

---

# Combined Query Example

SELECT name, price
FROM products
WHERE price > 1000
ORDER BY price DESC
LIMIT 5;

Meaning:

1. get product name and price from products tabel
2. show only products with price above 1000
3. sort from the highest price
4. show top 5
