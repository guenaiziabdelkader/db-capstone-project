USE littlelemondb;
SELECT Name FROM menu WHERE MenuID=any (SELECT Menu_MenuID FROM Orders WHERE Quantity>2) 