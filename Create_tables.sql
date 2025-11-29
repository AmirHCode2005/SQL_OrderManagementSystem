CREATE DATABASE sql_store;
USE sql_store;
-- ------------------------
-- Create a Customers table
-- ------------------------
CREATE TABLE customers
(
customer_id INT AUTO_INCREMENT PRIMARY KEY,
full_name VARCHAR(100) NOT NULL,
phone VARCHAR(20) NOT NULL,
created_at DATETIME DEFAULT NOW()
);
-- ----------------------
-- Create a product table
-- ----------------------
CREATE TABLE products
(
product_id INT AUTO_INCREMENT PRIMARY KEY,
product_name VARCHAR(100) NOT NULL,
price INT NOT NULL,
stock INT NOT NULL
);
-- ----------------------
-- Create an orders table
-- ----------------------
CREATE TABLE orders
(
order_id INT AUTO_INCREMENT PRIMARY KEY,
customer_id INT NOT NULL,
product_id INT NOT NULL,
quantity INT NOT NULL,
total_price INT NOT NULL,
created_at DATETIME DEFAULT NOW(),
FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
ON DELETE CASCADE
ON UPDATE CASCADE,
FOREIGN KEY (product_id) REFERENCES products(product_id)
ON DELETE CASCADE
ON UPDATE CASCADE
);
-- ------------------
-- Create a log table
-- ------------------
CREATE TABLE logs
(
log_id INT AUTO_INCREMENT PRIMARY KEY,
description VARCHAR(255) NOT NULL,
created_at DATETIME DEFAULT NOW()
)