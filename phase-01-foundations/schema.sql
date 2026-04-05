-- =========================================
-- Phase 1: SQL Foundations
-- Schema setup
-- =========================================

-- Drop tables first so the script can be rerun safely
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS reservations;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS users;

-- =========================================
-- 1. USERS
-- =========================================
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    city VARCHAR(100),
    is_active BOOLEAN DEFAULT TRUE
);

-- =========================================
-- 2. PRODUCTS
-- =========================================
CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    category VARCHAR(100),
    price DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL
);

-- =========================================
-- 3. ORDERS
-- Each order belongs to one user
-- =========================================
CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    order_date DATE NOT NULL,
    total_amount DECIMAL(10,2) NOT NULL,
    status VARCHAR(50) NOT NULL,
    CONSTRAINT fk_orders_user
        FOREIGN KEY (user_id)
        REFERENCES users(id)
);

-- =========================================
-- 4. RESERVATIONS
-- Each reservation belongs to one user
-- =========================================
CREATE TABLE reservations (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    reservation_date DATE NOT NULL,
    reservation_time TIME NOT NULL,
    party_size INT NOT NULL,
    area VARCHAR(50) NOT NULL,
    is_smoking BOOLEAN DEFAULT FALSE,
    status VARCHAR(50) NOT NULL,
    CONSTRAINT fk_reservations_user
        FOREIGN KEY (user_id)
        REFERENCES users(id)
);

-- =========================================
-- SAMPLE DATA: USERS
-- =========================================
INSERT INTO users (name, email, city, is_active) VALUES
('Mee', 'mee@email.com', 'Cebu', TRUE),
('Ana', 'ana@email.com', 'Manila', TRUE),
('John', 'john@email.com', 'Davao', FALSE),
('Sara', 'sara@email.com', 'Cebu', TRUE);

-- =========================================
-- SAMPLE DATA: PRODUCTS
-- =========================================
INSERT INTO products (name, category, price, stock) VALUES
('Mechanical Keyboard', 'Accessories', 3500.00, 10),
('Gaming Mouse', 'Accessories', 1800.00, 25),
('27-inch Monitor', 'Monitors', 12000.00, 5),
('Laptop Stand', 'Office', 900.00, 18),
('USB-C Hub', 'Accessories', 1500.00, 12);

-- =========================================
-- SAMPLE DATA: ORDERS
-- =========================================
INSERT INTO orders (user_id, order_date, total_amount, status) VALUES
(1, '2026-03-01', 5300.00, 'PAID'),
(2, '2026-03-03', 12000.00, 'PAID'),
(1, '2026-03-05', 1500.00, 'PENDING'),
(4, '2026-03-07', 900.00, 'PAID');

-- =========================================
-- SAMPLE DATA: RESERVATIONS
-- =========================================
INSERT INTO reservations (user_id, reservation_date, reservation_time, party_size, area, is_smoking, status) VALUES
(1, '2026-07-24', '18:00:00', 2, 'Main Hall', FALSE, 'CONFIRMED'),
(2, '2026-07-25', '19:30:00', 4, 'Riverside', FALSE, 'CONFIRMED'),
(3, '2026-07-26', '20:00:00', 3, 'Bar', TRUE, 'PENDING'),
(4, '2026-07-27', '18:30:00', 6, 'Main Hall', FALSE, 'CONFIRMED');