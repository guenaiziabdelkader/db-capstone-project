
DROP PROCEDURE IF EXISTS AddBooking; 
DELIMITER $$ 
CREATE PROCEDURE AddBooking (IN BookingID INT, IN CustomerID INT, IN TableNumber INT, IN BookingDate DATE)
BEGIN
INSERT INTO booking (bookingid, customerid, tablenumber, bookingdate) VALUES (BookingID, CustomerID, TableNumber, BookingDate);
SELECT "New booking added" AS "Confirmation";
END$$ 
DELIMITER ; 
CALL AddBooking(10, 4, 6, "2022-12-30");