use Innovatech;

DELIMITER //

-- Función para calcular el total gastado por un cliente
CREATE FUNCTION CalculateTotalSpent(clientId INT)
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    DECLARE totalSpent DECIMAL(10, 2);
    SELECT SUM(p.Price * pu.Quantity) INTO totalSpent
    FROM purchase pu
    JOIN product p ON pu.Product_id = p.Product_id
    WHERE pu.Client_id = clientId;
    RETURN totalSpent;
END//

-- LLAMADO DE LA FUNCION: SELECT CalculateTotalSpent(1) AS TotalSpent;

-- Función para verificar el stock de un producto
CREATE FUNCTION CheckStock(productId INT, quantityNeeded INT)
RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN
    DECLARE message VARCHAR(50);
    SELECT 
        CASE
            WHEN Stock >= quantityNeeded THEN 'Sufficient stock'
            ELSE 'Insufficient stock'
        END
    INTO message
    FROM product
    WHERE Product_id = productId;
    RETURN message;
END//

-- LLAMADO DE LA FUNCION: SELECT CheckStock(1, 5) AS StockStatus;

-- Función para calcular el precio total de una compra
CREATE FUNCTION CalculateTotalPrice(productId INT, quantity INT)
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    DECLARE totalPrice DECIMAL(10, 2);
    SELECT Price * quantity INTO totalPrice
    FROM product
    WHERE Product_id = productId;
    RETURN totalPrice;
END//

-- LLAMADO DE LA FUNCION: SELECT CalculateTotalPrice(1, 3) AS TotalPrice;

-- Función para obtener el nombre completo de un empleado
CREATE FUNCTION GetEmployeeFullName(employeeId INT)
RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN
    DECLARE fullName VARCHAR(50);
    SELECT CONCAT(Name, ' ', Last_Name) INTO fullName
    FROM employee
    WHERE Employee_id = employeeId;
    RETURN fullName;
END//

DELIMITER ;