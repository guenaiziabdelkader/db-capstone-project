USE littlelemondb;
DROP PROCEDURE IF EXISTS CancelOrder;
DELIMITER \\
CREATE PROCEDURE CancelOrder(Orderid int) 
BEGIN
DELETE FROM Orders WHERE OrderID=Orderid;
SELECT  concat("Order ", OrderID, " is cancelled") AS Confirmation;
END\\
DELIMITER ;

CALL  CancelOrder(5)