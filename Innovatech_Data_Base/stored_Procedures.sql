use Innovatech;

-- Stored Procedure de una venta

DELIMITER //

CREATE PROCEDURE MakeSale(
    IN productId INT,
    IN clientId INT,
    IN branchId INT,
    IN employeeId INT,
    IN quantity INT,
    IN paymentMethodId INT -- Nuevo parámetro para el método de pago
)
BEGIN
    DECLARE productStock INT;
    DECLARE totalPrice DECIMAL(10, 2);

    -- Verificar si hay suficiente stock del producto
    SELECT Stock INTO productStock
    FROM product
    WHERE Product_id = productId;

    IF productStock < quantity THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Insufficient stock available';
    ELSE
        -- Calcular el precio total de la venta
        SELECT Price * quantity INTO totalPrice
        FROM product
        WHERE Product_id = productId;

        -- Registrar la venta en la tabla de compras
        INSERT INTO purchase (Branch_id, Product_id, Employee_id, Client_id, Quantity, Purchase_Date, Payment_id)
        VALUES (branchId, productId, employeeId, clientId, quantity, CURDATE(), paymentMethodId);

        -- Actualizar el stock del producto
        UPDATE product
        SET Stock = Stock - quantity
        WHERE Product_id = productId;

        -- Devolver el total de la venta
        SELECT totalPrice AS TotalPrice;
    END IF;
END //

DELIMITER ;

CALL MakeSale(1, 1, 1, 1, 3, 1); 

-- '1' es el Product_id, Client_id, Branch_id, Employee_id, quantity y paymentMethod_Id respectivamente.

-- Stored Procedure para agregar un nuevo cliente

DELIMITER //

CREATE PROCEDURE AddNewClient(
    IN clientName VARCHAR(20),
    IN clientLastName VARCHAR(20),
    IN clientBirthdate DATE,
    IN clientNumberPhone INT,
    IN clientEmail VARCHAR(50),
    IN clientGender VARCHAR(10),
    IN clientAddress VARCHAR(50)
)
BEGIN
    INSERT INTO client (Name, Last_Name, Birthdate, Number_Phone, Email, Gender, Address)
    VALUES (clientName, clientLastName, clientBirthdate, clientNumberPhone, clientEmail, clientGender, clientAddress);
END //

DELIMITER ;

CALL AddNewClient('Juan', 'Perez', '1990-01-01', 1135679389, 'juanperez@gmail.com', 'male', 'Viamonte 1234');



