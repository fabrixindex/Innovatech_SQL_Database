use Innovatech;

-- Trigger papelera de productos eliminados

DELIMITER //

CREATE TRIGGER MoveToRecycleTable
BEFORE DELETE ON product
FOR EACH ROW
BEGIN
    INSERT INTO recycle_table (Product_id, Name_Product, Description, Price, Stock, Category_id)
    VALUES (OLD.Product_id, OLD.Name_Product, OLD.Description, OLD.Price, OLD.Stock, OLD.Category_id);
END //

DELIMITER ;

DELETE FROM purchase WHERE Product_id = 14;
DELETE FROM product WHERE Product_id = 14;

SELECT * FROM recycle_table;

-- Trigger para auditar tabla de ventas

DELIMITER //

CREATE TRIGGER PurchaseInsertAuditTrigger
AFTER INSERT ON purchase
FOR EACH ROW
BEGIN
    INSERT INTO purchase_audit (Purchase_id, Branch_id, Product_id, Employee_id, Client_id, Quantity, Purchase_Date, Audit_action)
    VALUES (NEW.Purchase_id, NEW.Branch_id, NEW.Product_id, NEW.Employee_id, NEW.Client_id, NEW.Quantity, NEW.Purchase_Date, 'INSERT');
END //

CREATE TRIGGER PurchaseUpdateAuditTrigger
AFTER UPDATE ON purchase
FOR EACH ROW
BEGIN
    INSERT INTO purchase_audit (Purchase_id, Branch_id, Product_id, Employee_id, Client_id, Quantity, Purchase_Date, Audit_action)
    VALUES (NEW.Purchase_id, NEW.Branch_id, NEW.Product_id, NEW.Employee_id, NEW.Client_id, NEW.Quantity, NEW.Purchase_Date, 'UPDATE');
END //

CREATE TRIGGER PurchaseDeleteAuditTrigger
AFTER DELETE ON purchase
FOR EACH ROW
BEGIN
    INSERT INTO purchase_audit (Purchase_id, Branch_id, Product_id, Employee_id, Client_id, Quantity, Purchase_Date, Audit_action)
    VALUES (OLD.Purchase_id, OLD.Branch_id, OLD.Product_id, OLD.Employee_id, OLD.Client_id, OLD.Quantity, OLD.Purchase_Date, 'DELETE');
END //

DELIMITER ;

INSERT INTO purchase (Branch_id, Product_id, Employee_id, Client_id, Quantity, Purchase_Date, Payment_id)
VALUES (1, 1, 1, 1, 3, '2024-02-28', 1);

SELECT * FROM purchase_audit;

