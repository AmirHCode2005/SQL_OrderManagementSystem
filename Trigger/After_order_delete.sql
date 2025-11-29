DELIMITER $$

-- ------------------------------
-- Trigger after Delete in Orders
-- ------------------------------
CREATE TRIGGER after_order_delete
AFTER DELETE ON orders
FOR EACH ROW
BEGIN
	INSERT INTO logs(description)
    VALUES(CONCAT('Your order has been successfully deleted. Order_ID = ',OLD.order_id));
END $$

DELIMITER ;