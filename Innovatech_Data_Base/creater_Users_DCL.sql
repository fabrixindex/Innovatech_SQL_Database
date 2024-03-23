-- Creacion de Usuarios

CREATE USER "usuarioCoder1"@"localhost" identify "123456coder";
CREATE USER "usuarioCoder2"@"localhost" identify "654321coder";
CREATE USER "usuarioCoder3"@"localhost" identify "123321coder";

-- Establecer permisos de lectura sobre determinadas tablas (usuarioCoder 1)

GRANT SELECT ON Innovatech.client, Innovatech.payment_method, Innovatech.product, Innovatech.category, Innovatech.product_review, Innovatech.promotions TO "usuarioCoder1"@"localhost";

-- Establecer permisos de lectura y escritura sobre todas las tablas (usuarioCoder 2)

GRANT SELECT, INSERT, UPDATE ON *.* TO "usuarioCoder2"@"localhost";

-- Establecer permisos de lectura y eliminacion sobre todas las tablas (usuarioCoder 3)

GRANT SELECT, DELETE ON *.* TO "usuarioCoder3"@"localhost";

-- Ejemplo de como eliminar un usuario.

DROP USER "usuarioCoder3"@"localhost";
