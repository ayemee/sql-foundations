- id
- name
- email

Each column has a data type.

## Data Types

Common SQL datat types:

INT -> whole numbers
VARCHAR(n) -> text
Boolean -> true/false
DATE -> date value
TIME -> time value
DECIMAL(n, n) -> precise numeric value

Example:

price DECIMAL(10, 2)

Means:

- up to 10 digits
- 2 digits after decimal

Example value: 120000.50

## Primary Key

A primary key uniquely identifies each row in a table.

Usually an `id` column.

Example:

id SERIAL PRIMARY KEY

Properties:

- unique
- not null
- one per table

---

## Foreign Key

A foreign key links two tables together.

Example:

orders table references users.

user_id -> users.id

Meaning:

Each order belongs to one user.

---

# Basic Query

### SELECT

Retrieve data from a table.

SELECT \* FROM users;

Meaning:

Return all columns from the users table.

---

### Selecting specific columns

SELECT name, email FROM users;

Return only name and email.

# Mental Model

Think of SQL tables like arrays of objects in JavaScript.

Example:

const users = [
{id: 1, name: "Mee"},
{id: 2, name: "Ana"},
]

SQL stores this structure permanently and allows querying across millions of rows efficiently.
