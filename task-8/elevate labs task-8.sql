
-- Creating a stored procedure to get orders above a certain amount
DELIMITER //
CREATE PROCEDURE GetHighValuepayments(IN minAmount DECIMAL(10,2))
BEGIN
    SELECT * FROM payments WHERE Amount > minAmount;
END //
DELIMITER ;

-- Calling the stored procedure
CALL GetHighValuepayments(50000);

-- Creating a function to get total orders for a customer
DELIMITER //
CREATE FUNCTION GetOrderCount(custID INT)
RETURNS INT
READS SQL DATA
BEGIN
    DECLARE total INT;
    SELECT COUNT(*) INTO total FROM Orders WHERE Customernumber = custID;
    RETURN total;
END //
DELIMITER ;
SELECT COUNT(*) 
FROM Orders 
WHERE Customernumber = 103;
-- Using the function in a SELECT
SELECT Customernumber, 
       GetOrderCount(Customernumber) AS TotalOrders 
FROM Customers 
ORDER BY totalorders DESC;