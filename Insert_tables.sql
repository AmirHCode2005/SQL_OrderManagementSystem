-- ----------------------------
-- Sample data for the customer
-- ----------------------------
INSERT INTO customers(full_name,phone)
VALUES
('amirhossin_heydari','09112302898'),
('Michael','09114198654'),
('Jesse','09364741454'),
('Jessica','09874125847'),
('Lucifer','08547142555'),
('Cristiano','09123585857'),
('Muhammad','09114741021');
-- ------------------------
-- Sample data for products
-- ------------------------
INSERT INTO products(product_name,price,stock)
VALUES
('Laptop',100000,5),
('Mouse',20000,25),
('Band and speaker',45000,15),
('Keyboard',50000,10),
('Monitor',85000,5),
('Mouse pad',5000,50),
('Gamepad',20000,10),
('Table decoration',50000,50);
-- ----------------------
-- Sample data for orders
-- ----------------------
INSERT INTO orders(customer_id,product_id,quantity)
VALUES
(1,1,1),
(2,2,10),
(1,2,1),
(1,4,1),
(4,1,2),
(3,8,12),
(5,5,2)