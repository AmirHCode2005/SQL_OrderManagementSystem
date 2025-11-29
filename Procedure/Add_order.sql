DELIMITER $$

CREATE PROCEDURE AddOrder(
	IN p_customer INT,
    IN p_product INT,
    IN p_quantity INT
)
BEGIN
	DECLARE v_stock INT;
    DECLARE v_price INT;
    -- Get product information
    SELECT stock , price
    INTO v_stock , v_price
    FROM products
    WHERE product_id = p_product;
    -- If the product did not exist
    IF v_stock IS NULL THEN
		SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = 'Product does not exist';
	-- If there was not enough inventory
	ELSEIF v_stock < p_quantity THEN
		SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = 'Not enough stock for this product';
	-- Otherwise, the order will be placed
	ELSE
		INSERT INTO orders(customer_id,product_id,quantity)
        VALUES(p_customer,p_product,p_quantity);
        
        UPDATE products
        SET stock = stock - p_quantity
        WHERE product_id = p_product;
	END IF;
END $$

DELIMITER ;