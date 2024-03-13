use Innovatech;

-- Crear la tabla de clientes
create table client(
    Client_id int NOT NULL AUTO_INCREMENT, -- Identificador único del cliente
    Name varchar(20) NOT NULL,
    Last_Name varchar(20) NOT NULL,
    Birthdate date,
    Number_Phone int,
    Email varchar(50) NOT NULL,
    Gender varchar(10),
    Address varchar(30),
    primary key(Client_id)
);

create table category(
    Category_id int NOT NULL AUTO_INCREMENT, -- Identificador único de la categoría
    Description_Category varchar(20),
    primary key(Category_id)
);

CREATE TABLE payment_method (
    Payment_id INT NOT NULL AUTO_INCREMENT, -- Identificador único del metodo de pago
    Method varchar(30) NOT NULL,
    PRIMARY KEY (Payment_id)
);

-- Crear la tabla de productos
create table product(
    Product_id int NOT NULL AUTO_INCREMENT, -- Identificador único del producto
    Name_Product varchar(30) NOT NULL,
    Description varchar(100) NOT NULL,
    Price int NOT NULL,
    Stock int NOT NULL,
    Category_id int NOT NULL,
    Supplier_id INT,
    Promotion_id INT NOT NULL DEFAULT 1,
    primary key(Product_id),
    foreign key(Category_id) REFERENCES category (Category_id),
    foreign key (Supplier_id) REFERENCES supplier (Supplier_id)
);

create table branch(
    Branch_id int NOT NULL AUTO_INCREMENT, -- Identificador único de la sucursal
    Name_Branch varchar(40),
    Address_Branch varchar(30) NOT NULL,
    Number_Phone_Branch int,
    Email_Branch varchar(50) NOT NULL,
    primary key(Branch_id)
);

create table employee(
    Employee_id int NOT NULL AUTO_INCREMENT, -- Identificador único del empleado
    Name varchar(20) NOT NULL,
    Last_Name varchar(20),
    Birthdate date,
    Number_Phone int,
    Email varchar(50) NOT NULL,
    Address varchar(20),
    Branch_id INT,
    primary key(Employee_id),
    foreign key (Branch_id) REFERENCES branch (Branch_id)
);

CREATE TABLE purchase (
    Purchase_id INT NOT NULL AUTO_INCREMENT, -- Identificador único de la compra
    Branch_id INT NOT NULL,
    Product_id INT NOT NULL,
    Employee_id INT NOT NULL,
    Client_id INT NOT NULL,
    Quantity INT NOT NULL,
    Purchase_Date DATE NOT NULL,
    Payment_id INT NOT NULL,
    PRIMARY KEY(Purchase_id),
    FOREIGN KEY(Branch_id) REFERENCES branch (Branch_id),
    FOREIGN KEY(Product_id) REFERENCES product (Product_id),
    FOREIGN KEY(Employee_id) REFERENCES employee (Employee_id),
    FOREIGN KEY(Client_id) REFERENCES client (Client_id),
    FOREIGN KEY(Payment_id) REFERENCES payment_method (Payment_id)
);


CREATE TABLE supplier (
    Supplier_id INT NOT NULL AUTO_INCREMENT, -- Identificador único del proveedor
    Name varchar(50) NOT NULL,
    Address varchar(50),
    Phone_Number varchar(20),
    Email varchar(50) NOT NULL,
    PRIMARY KEY (Supplier_id)
);

CREATE TABLE product_review (
    Review_id INT NOT NULL AUTO_INCREMENT, -- Identificador único de comentarios del producto
    Product_id INT,
    Client_id INT,
    Rating INT,
    Comment TEXT,
    Review_Date DATE,
    PRIMARY KEY (Review_id),
    FOREIGN KEY (Product_id) REFERENCES product (Product_id),
    FOREIGN KEY (Client_id) REFERENCES client (Client_id)
);

CREATE TABLE returns (
    Return_id INT NOT NULL AUTO_INCREMENT, -- Identificador único de las devoluciones
    Product_id INT,
    Client_id INT,
    Return_date DATE,
    Reason VARCHAR(255),
    PRIMARY KEY (Return_id),
    FOREIGN KEY (Product_id) REFERENCES product (Product_id),
    FOREIGN KEY (Client_id) REFERENCES client (Client_id)
);

CREATE TABLE promotions (
    Promotion_id INT NOT NULL AUTO_INCREMENT, -- Identificador único de las promociones
    Description VARCHAR(255),
    Start_date DATE,
    End_date DATE,
    Discount DECIMAL(5,2),
    PRIMARY KEY (Promotion_id)
);

/* TABLAS PARA TRIGGERS */

CREATE TABLE recycle_table (
    Product_id INT NOT NULL,
    Name_Product VARCHAR(20),
    Description VARCHAR(40),
    Price INT,
    Stock INT,
    Category_id INT,
    Deleted_At TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE purchase_audit (
    Audit_id INT NOT NULL AUTO_INCREMENT,
    Purchase_id INT,
    Branch_id INT,
    Product_id INT,
    Employee_id INT,
    Client_id INT,
    Quantity INT,
    Purchase_Date DATE,
    Audit_action VARCHAR(20),
    Audit_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (Audit_id)
);