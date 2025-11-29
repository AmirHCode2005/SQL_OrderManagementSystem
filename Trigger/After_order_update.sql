DELIMITER $$

-- ------------------------------
-- Trigger after Update in Orders
-- ------------------------------
CREATE TRIGGER after_order_update
AFTER UPDATE ON orders
FOR EACH ROW
BEGIN
	INSERT INTO logs(description)
    VALUES(CONCAT('Your order has been successfully placed. Order_ID = ', NEW.order_id,
    'Quantity = ',NEW.quantity));
END $$

DELIMITER ;