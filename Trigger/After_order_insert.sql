DELIMITER $$

-- -----------------------------
-- Insert log after insert order
-- -----------------------------
CREATE TRIGGER after_order_insert
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
	INSERT INTO logs(description)
    VALUES(CONCAT(
    'New order placed. Order_ID : ', NEW.order_id,
    ' , Customer_ID : ', NEW.customer_id,
    ' , Product_ID : ', NEW.product_id,
    ' , Quantity : ', NEW.quantity
    ));
END $$

DELIMITER ;