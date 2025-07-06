-- 1. Create database
CREATE DATABASE IF NOT EXISTS store_db;
USE store_db;

-- 2. Create table
CREATE TABLE IF NOT EXISTS products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    stock INT
);

-- 3. Insert sample data
INSERT INTO products (product_name, category, price, stock) VALUES
('Apple iPhone 13', 'Electronics', 75000.00, 50),
('Samsung Galaxy M14', 'Electronics', 14000.00, 80),
('Dell Laptop', 'Electronics', 55000.00, 30),
('Running Shoes', 'Footwear', 3000.00, 100),
('Casual Shoes', 'Footwear', 2000.00, 120),
('T-Shirt', 'Clothing', 500.00, 200),
('Jeans', 'Clothing', 1500.00, 180);

--  SELECT Queries Demonstration

-- A. Select all records
SELECT * FROM products;

-- B. Select specific columns
SELECT product_name, price FROM products;

-- C. WHERE condition
SELECT * FROM products WHERE price > 10000;

-- D. WHERE with AND
SELECT * FROM products WHERE category = 'Electronics' AND price < 60000;

-- E. WHERE with OR
SELECT * FROM products WHERE category = 'Footwear' OR stock > 150;

-- F. LIKE operator
SELECT * FROM products WHERE product_name LIKE '%Shoes%';

-- G. BETWEEN operator
SELECT * FROM products WHERE price BETWEEN 1000 AND 10000;

-- H. ORDER BY (ascending)
SELECT * FROM products ORDER BY price;

-- I. ORDER BY (descending)
SELECT * FROM products ORDER BY stock DESC;

-- J. LIMIT result rows
SELECT * FROM products LIMIT 5;

-- K. DISTINCT values
SELECT DISTINCT category FROM products;

-- L. IN operator
SELECT * FROM products WHERE category IN ('Clothing', 'Footwear');

-- M. Aliasing columns
SELECT product_name AS Name, price AS Cost FROM products;


