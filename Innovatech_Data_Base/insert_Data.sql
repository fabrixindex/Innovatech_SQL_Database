use Innovatech;

-- Insertar datos de clientes

INSERT INTO client (Name, Last_Name, Birthdate, Number_Phone, Email, Gender, Address) 
VALUES
    ('juan', 'perez', '1999-02-01', 1135679389, 'juanperez@gmail.com', 'male', 'Viamonte 1234'),
    ('pia', 'lopez', '1999-02-16', 1173929131, 'pialopez@gmail.com', 'female', 'Tucuman 423'), 
    ('Lucas', 'Gomez', '1988-05-12', 1145678901, 'lucasgomez@mail.com', 'male', 'Libertador 1010'),
    ('Martina', 'Rodriguez', '1993-07-23', 1145678902, 'martinarod@mail.com', 'female', 'Cabildo 2040'),
    ('Diego', 'Martinez', '1990-09-30', 1145678903, 'diegomartinez@mail.com', 'male', 'Santa Fe 3050'),
    ('Sofia', 'Fernandez', '1992-03-15', 1145678904, 'sofiafernandez@mail.com', 'female', 'Pueyrredon 4060'),
    ('Gonzalo', 'Perez', '1985-11-20', 1145678905, 'gonzaloperez@mail.com', 'male', 'Corrientes 5070'),
    ('Camila', 'Lopez', '1994-12-22', 1145678906, 'camilalopez@mail.com', 'female', 'Alvarez Thomas 6080'),
    ('Facundo', 'Garcia', '1987-08-14', 1145678907, 'facundogarcia@mail.com', 'male', 'Triunvirato 7090'),
    ('Micaela', 'Gonzalez', '1995-10-05', 1145678908, 'micaelagonzalez@mail.com', 'female', 'Lacroze 8100'),
    ('Esteban', 'Ruiz', '1982-01-29', 1145678909, 'estebanruiz@mail.com', 'male', 'Monroe 9110'),
    ('Carla', 'Diaz', '1996-04-17', 1145678910, 'carladiaz@mail.com', 'female', 'Congreso 10120'),
    ('Ramiro', 'Sanchez', '1989-06-11', 1145678911, 'ramirosanchez@mail.com', 'male', 'Balbin 11130'),
    ('Paula', 'Romero', '1991-08-08', 1145678912, 'paularomero@mail.com', 'female', 'Cabildo 12140'),
    ('Mariano', 'Alvarez', '1984-10-03', 1145678913, 'marianoalvarez@mail.com', 'male', 'Juramento 13150'),
    ('Florencia', 'Gutierrez', '1997-02-27', 1145678914, 'florenciagutierrez@mail.com', 'female', 'Olazabal 14160'),
    ('Santiago', 'Silva', '1986-12-14', 1145678915, 'santiagosilva@mail.com', 'male', 'Mendoza 15170');

-- Insertar datos de categorías

INSERT INTO category (Description_Category) 
VALUES 
    ('Electrodomésticos'),
    ('Electrónica'),
    ('Hogar'),
    ('Cocina'),
    ('Climatización'),
    ('Cuidado Personal'),
    ('Informática'),
    ('Muebles'),
    ('Iluminación'),
    ('Jardín'),
    ('Deportes'),
    ('Belleza'),
    ('Moda'),
    ('Juguetes'),
    ('Mascotas');

-- Insertar datos en metodos de pago

INSERT INTO payment_method (Method)
VALUES
    ('Débito automático'),
    ('PayPal'),
    ('Cheque'),
    ('Transferencia electrónica'),
    ('Pago en efectivo'),
    ('Tarjeta de débito'),
    ('Criptomoneda'),
    ('Vale de regalo'),
    ('Tarjeta de regalo'),
    ('Financiamiento');

-- Insertar datos de sucursales

INSERT INTO branch (Name_Branch, Address_Branch, Number_Phone_Branch, Email_Branch) 
VALUES 
    ('Sucursal Recoleta', 'Junin 234', 211234567, 'recoleta@innovatech.com'),
    ('Sucursal Belgrano', 'Cabildo 456', 211234568, 'belgrano@innovatech.com'),
    ('Sucursal Palermo', 'Santa Fe 678', 211234569, 'palermo@innovatech.com'),
    ('Sucursal San Isidro', 'Centenario 890', 211234570, 'sanisidro@innovatech.com'),
    ('Sucursal Tigre', 'Cazon 123', 211234571, 'tigre@innovatech.com'),
    ('Sucursal Pilar', 'Panamericana km 50', 211234572, 'pilar@innovatech.com'),
    ('Sucursal Quilmes', 'Lavalle 345', 211234573, 'quilmes@innovatech.com'),
    ('Sucursal Avellaneda', 'Mitre 567', 211234574, 'avellaneda@innovatech.com'),
    ('Sucursal Lomas de Zamora', 'Meeks 789', 211234575, 'lomas@innovatech.com'),
    ('Sucursal Lanus', '9 de Julio 910', 211234576, 'lanus@innovatech.com'),
    ('Sucursal Moron', 'Rivadavia 112', 211234577, 'moron@innovatech.com'),
    ('Sucursal Moreno', 'Roca 1314', 211234578, 'moreno@innovatech.com'),
    ('Sucursal Merlo', 'Libertad 1516', 211234579, 'merlo@innovatech.com'),
    ('Sucursal San Miguel', 'Peron 1718', 211234580, 'sanmiguel@innovatech.com'),
    ('Sucursal Bahía Blanca', 'OHiggins 1920', 211234581, 'bahia@innovatech.com');

-- Insertar datos en Proveedores

INSERT INTO supplier (Name, Address, Phone_Number, Email)
VALUES
    ('Proveedor C', 'Calle 789, Ciudad', '555555555', 'proveedorc@example.com'),
    ('Proveedor D', 'Avenida 012, Ciudad', '666666666', 'proveedord@example.com'),
    ('Proveedor E', 'Calle 345, Ciudad', '777777777', 'proveedore@example.com'),
    ('Proveedor F', 'Avenida 678, Ciudad', '888888888', 'proveedorf@example.com'),
    ('Proveedor G', 'Calle 901, Ciudad', '999999999', 'proveedorg@example.com'),
    ('Proveedor H', 'Avenida 234, Ciudad', '1010101010', 'proveedorh@example.com'),
    ('Proveedor I', 'Calle 567, Ciudad', '1111111111', 'proveedori@example.com'),
    ('Proveedor J', 'Avenida 890, Ciudad', '1212121212', 'proveedorj@example.com'),
    ('Proveedor K', 'Calle 1234, Ciudad', '1313131313', 'proveedork@example.com'),
    ('Proveedor L', 'Avenida 5678, Ciudad', '1414141414', 'proveedorl@example.com');

-- Insertar datos en promociones

INSERT INTO promotions (Description, Start_date, End_date, Discount)
VALUES
    ('Sin ninguna promoción', '2024-01-01', '2999-12-31', 0.00),
    ('Descuento por temporada', '2024-03-01', '2024-03-31', 0.15),
    ('Oferta especial de primavera', '2024-04-01', '2024-04-30', 0.20),
    ('Liquidación de invierno', '2024-05-01', '2024-05-31', 0.30),
    ('Promoción de verano', '2024-06-01', '2024-06-30', 0.25),
    ('Descuento por compra repetida', '2024-07-01', '2024-07-31', 0.10),
    ('Oferta de otoño', '2024-08-01', '2024-08-31', 0.20),
    ('Promoción de fin de año', '2024-09-01', '2024-09-30', 0.30),
    ('Descuento por aniversario', '2024-10-01', '2024-10-31', 0.15),
    ('Oferta de Navidad', '2024-11-01', '2024-11-30', 0.25),
    ('Promoción de año nuevo', '2024-12-01', '2024-12-31', 0.20);

-- Insertar datos de productos

INSERT INTO product (Name_Product, Description, Price, Stock, Category_id, Supplier_id) 
VALUES 
    ('Heladera Whirlpool', 'No Frost 300L', 1200, 15, 1, 1),          
    ('Lavarropas LG', 'Carga Frontal 7kg', 800, 20, 1, 2),             
    ('Microondas Samsung', '20L Digital', 300, 25, 1, 3),              
    ('Aire Acondicionado', 'Split 3000F', 700, 10, 5, 4),             
    ('Smart TV LG', '55 pulgadas 4K', 1400, 8, 2, 5),                 
    ('Aspiradora Philips', 'Sin bolsa 2000W', 200, 30, 1, 6),          
    ('Licuadora Oster', 'Vaso vidrio 1.5L', 150, 40, 6, 7),            
    ('Tostadora ATMA', '8 niveles de tostado', 50, 50, 6, 8),          
    ('Cafetera Nespresso', 'Sistema de cápsulas', 250, 35, 6, 9),      
    ('Batidora KitchenAid', 'Profesional 5L', 600, 12, 6, 10),          
    ('Plancha a Vapor', 'Rowenta 2800W', 100, 45, 6, 1),               
    ('Secador de Pelo', 'Philips Ionico', 75, 50, 12, 2),              
    ('Calefactor', 'Tiro balanceado 2000 kcal', 400, 20, 5, 3),        
    ('Ventilador de Pie', '18 pulgadas 3 velocidades', 120, 60, 5, 4),
    ('Horno Eléctrico', 'Atma 50L convección', 220, 18, 6, 5);
       

-- Insertar datos de empleados

INSERT INTO employee (Name, Last_Name, Birthdate, Number_Phone, Email, Address, Branch_id) 
VALUES 
    ('Roberto', 'Mendez', '1980-03-15', 1156789012, 'robertomendez@mail.com', 'Corrientes 234', 1),
    ('Elena', 'Quiroga', '1985-07-22', 1156789013, 'elenaquiroga@mail.com', 'Medrano 456', 2),
    ('Carlos', 'Villanueva', '1975-11-30', 1156789014, 'carlosv@mail.com', 'Rivadavia 678', 3),
    ('Patricia', 'Fernandez', '1990-01-09', 1156789015, 'patriciaf@mail.com', 'Belgrano 890', 4),
    ('Miguel', 'Torres', '1982-04-17', 1156789016, 'migueltorres@mail.com', 'Jujuy 123', 5),
    ('Laura', 'Garcia', '1988-05-23', 1156789017, 'lauragarcia@mail.com', 'Las Heras 345', 6),
    ('Hernan', 'Martinez', '1979-08-15', 1156789018, 'hernanm@mail.com', 'Pueyrredon 567', 7),
    ('Sofia', 'Rojas', '1993-10-02', 1156789019, 'sofiarojas@mail.com', 'Santa Fe 789', 8),
    ('Gonzalo', 'Perez', '1985-12-20', 1156789020, 'gonzaloperez@mail.com', 'Cabildo 910', 9),
    ('Andrea', 'Lopez', '1978-02-11', 1156789021, 'andrealopez@mail.com', 'Juramento 112', 10),
    ('Matias', 'Silva', '1991-03-29', 1156789022, 'matiassilva@mail.com', 'Libertador 1314', 11),
    ('Luciana', 'Gomez', '1989-06-18', 1156789023, 'lucianagomez@mail.com', 'Ugarte 1516', 12),
    ('Federico', 'Diaz', '1974-09-07', 1156789024, 'federicodiaz@mail.com', 'Congreso 1718', 13),
    ('Mariana', 'Castro', '1992-12-12', 1156789025, 'marianacastro@mail.com', 'Larrea 1920', 14),
    ('Jorge', 'Alvarez', '1983-07-24', 1156789026, 'jorgealvarez@mail.com', 'Acoyte 2122', 15);

-- Insertar datos en comentarios o valoraciones de los productos.

INSERT INTO product_review (Product_id, Client_id, Rating, Comment, Review_Date)
VALUES
    (3, 3, 3, 'El producto funciona bien, pero tuvo un pequeño problema de envío.', '2024-02-27'),
    (4, 4, 2, 'No quedé satisfecho con el producto, no funcionaba como esperaba.', '2024-02-28'),
    (5, 5, 4, 'Buen producto, llegó en perfecto estado.', '2024-03-01'),
    (6, 6, 5, '¡Excelente producto, muy fácil de usar!', '2024-03-02'),
    (7, 7, 1, 'El producto llegó dañado y el proveedor no respondió adecuadamente.', '2024-03-03'),
    (8, 8, 5, 'Muy contento con el producto, cumplió con mis expectativas.', '2024-03-04'),
    (9, 9, 3, 'El producto funciona bien, pero la entrega fue un poco lenta.', '2024-03-05'),
    (10, 10, 4, 'Buen producto, lo recomendaría a otros.', '2024-03-06'),
    (1, 2, 5, 'Gran producto, llegó antes de lo esperado.', '2024-03-07'),
    (2, 1, 3, 'El producto es bueno, pero tuvo un problema de calidad.', '2024-03-08');

-- Insertar datos en devoluciones.

INSERT INTO returns (Product_id, Client_id, Return_date, Reason)
VALUES
    (1, 1, '2024-03-15', 'Producto defectuoso'),
    (2, 2, '2024-03-16', 'Talla incorrecta'),
    (3, 3, '2024-03-17', 'No era lo que esperaba'),
    (4, 4, '2024-03-18', 'Daño durante el envío'),
    (5, 5, '2024-03-19', 'No funcionaba correctamente'),
    (6, 6, '2024-03-20', 'Cambio de opinión'),
    (7, 7, '2024-03-21', 'Producto incorrecto'),
    (8, 8, '2024-03-22', 'No era lo que necesitaba'),
    (9, 9, '2024-03-23', 'No se ajustaba a la descripción'),
    (10, 10, '2024-03-24', 'Pedido duplicado');

-- Insertar datos en ventas

INSERT INTO purchase (Branch_id, Product_id, Employee_id, Client_id, Quantity, Purchase_Date, Payment_id) 
VALUES
    (1, 1, 1, 1, 2, '2023-07-15', 1),
    (2, 2, 2, 2, 1, '2023-08-20', 2),
    (3, 3, 3, 3, 3, '2023-09-25', 3),
    (4, 4, 4, 4, 1, '2023-10-10', 4),
    (5, 5, 5, 5, 2, '2023-11-05', 5),
    (1, 6, 6, 6, 1, '2023-12-12', 6),
    (2, 7, 7, 7, 1, '2024-01-18', 7),
    (3, 8, 8, 8, 2, '2024-02-14', 8),
    (4, 9, 9, 9, 3, '2024-03-20', 9),
    (5, 10, 10, 10, 1, '2024-04-25', 10),
    (1, 11, 11, 11, 2, '2024-05-30', 1),
    (2, 12, 12, 12, 1, '2024-06-05', 2),
    (3, 13, 13, 13, 1, '2024-07-10', 3),
    (4, 14, 14, 14, 2, '2024-08-15', 4),
    (5, 15, 15, 15, 1, '2024-09-20', 5);