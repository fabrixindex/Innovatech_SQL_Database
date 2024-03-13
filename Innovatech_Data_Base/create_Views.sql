use Innovatech;

-- Vista de cliente con detalle de compra

CREATE VIEW client_purchase_view AS
SELECT c.*, p.Product_id, p.Name_Product, p.Price, pu.Purchase_Date
FROM client c
JOIN purchase pu ON c.Client_id = pu.Client_id
JOIN product p ON pu.Product_id = p.Product_id;

SELECT * FROM client_purchase_view;

-- Vista de ventas por sucursal

CREATE VIEW branch_sales_view AS
SELECT b.Name_Branch, p.Name_Product, p.Price, pu.Purchase_Date
FROM branch b
JOIN purchase pu ON b.Branch_id = pu.Branch_id
JOIN product p ON pu.Product_id = p.Product_id;

SELECT * FROM branch_sales_view;

-- Vista de productos mas vendidos

CREATE VIEW top_selling_products_view AS
SELECT p.Product_id, p.Name_Product, SUM(pu.Quantity) AS Total_Sales
FROM product p
JOIN purchase pu ON p.Product_id = pu.Product_id
GROUP BY p.Product_id, p.Name_Product
ORDER BY Total_Sales DESC;

SELECT * FROM top_selling_products_view;

-- Vista de clientes con mayor gasto

CREATE VIEW top_spending_clients_view AS
SELECT c.Client_id, c.Name, c.Last_Name, SUM(p.Price * pu.Quantity) AS Total_Spending
FROM client c
JOIN purchase pu ON c.Client_id = pu.Client_id
JOIN product p ON pu.Product_id = p.Product_id
GROUP BY c.Client_id, c.Name, c.Last_Name
ORDER BY Total_Spending DESC;

SELECT * FROM top_spending_clients_view;

-- Vista de total de ingresos en un mes 

CREATE VIEW monthly_sales_view AS
SELECT
    YEAR(pu.Purchase_Date) AS Year,
    MONTH(pu.Purchase_Date) AS Month,
    SUM(pu.Quantity) AS Total_Products_Sold,
    SUM(p.Price * pu.Quantity) AS Total_Revenue
FROM
    purchase pu
JOIN
    product p ON pu.Product_id = p.Product_id
GROUP BY
    YEAR(pu.Purchase_Date),
    MONTH(pu.Purchase_Date)
ORDER BY
    Year,
    Month;

SELECT * FROM monthly_sales_view;


