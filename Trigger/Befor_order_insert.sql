DELIMITER $$

CREATE TRIGGER before_order_insert
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN
    DECLARE product_price INT;
	-- -----------------
    -- Get product price
    -- -----------------
    SELECT price INTO product_price
    FROM products
    WHERE product_id = NEW.product_id;
	-- ------------------------------------
    -- Automatic calculation of total price
    -- ------------------------------------
    SET NEW.total_price = NEW.quantity * product_price;
END$$

DELIMITER ;