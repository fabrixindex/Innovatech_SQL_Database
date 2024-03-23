-- LISTADO DE PRODUCTOS COMPLETO --

SELECT 
    p.Product_id,
    p.Name_Product,
    p.Description,
    p.Price,
    p.Stock,
    c.Description_Category AS Category,
    s.Name AS Supplier,
    promo.Description AS Promotion
FROM 
    product p
JOIN 
    category c ON p.Category_id = c.Category_id
JOIN 
    supplier s ON p.Supplier_id = s.Supplier_id
LEFT JOIN
    promotions promo ON p.Promotion_id = promo.Promotion_id;

-- LISTADO DE EMPLEADOS COMPLETO --

SELECT 
    e.Employee_id,
    e.Name,
    e.Last_Name,
    e.Birthdate,
    e.Number_Phone,
    e.Email,
    e.Address,
    b.Name_Branch AS Branch
FROM 
    employee e
JOIN 
    branch b ON e.Branch_id = b.Branch_id;

-- LISTADO DE REVIEWS DE PRODUCTOS COMPLETO --

SELECT 
    pr.Review_id,
    pr.Product_id,
    p.Name_Product AS Product_Name,
    pr.Client_id,
    c.Name AS Client_Name,
    pr.Rating,
    pr.Comment,
    pr.Review_Date
FROM 
    product_review pr
JOIN 
    product p ON pr.Product_id = p.Product_id
JOIN 
    client c ON pr.Client_id = c.Client_id;

-- LISTADO DE DEVOLUCIONES COMPLETO --

SELECT 
    r.Return_id,
    r.Product_id,
    p.Name_Product AS Product_Name,
    r.Client_id,
    c.Name AS Client_Name,
    r.Return_date,
    r.Reason
FROM 
    returns r
JOIN 
    product p ON r.Product_id = p.Product_id
JOIN 
    client c ON r.Client_id = c.Client_id;

-- LISTADO DE COMPRAS COMPLETO --

SELECT 
    pu.Purchase_id,
    pu.Branch_id,
    b.Name_Branch AS Branch_Name,
    pu.Product_id,
    p.Name_Product AS Product_Name,
    pu.Employee_id,
    e.Name AS Employee_Name,
    pu.Client_id,
    c.Name AS Client_Name,
    pu.Quantity,
    p.Price,
    pu.Purchase_Date,
    pm.Method AS Payment_Method,
    (p.Price * pu.Quantity) AS Total
FROM 
    purchase pu
JOIN 
    branch b ON pu.Branch_id = b.Branch_id
JOIN 
    product p ON pu.Product_id = p.Product_id
JOIN 
    employee e ON pu.Employee_id = e.Employee_id
JOIN 
    client c ON pu.Client_id = c.Client_id
JOIN
    payment_method pm ON pu.Payment_id = pm.Payment_id
ORDER BY
    Total DESC;