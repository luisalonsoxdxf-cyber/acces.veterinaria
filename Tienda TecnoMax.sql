DROP DATABASE IF EXISTS TecnoMax_db;
CREATE DATABASE TecnoMax_db;
USE TecnoMax_db;

CREATE TABLE productos (
    id_producto INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    marca VARCHAR(50) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    stock INT NOT NULL
);

CREATE TABLE reparaciones (
    id_reparacion INT AUTO_INCREMENT NOT NULL,
    tipo_equipo VARCHAR(50) NOT NULL,
    descripcion TEXT NOT NULL,
    costo DECIMAL(10, 2) NOT NULL,
    fecha DATE NOT NULL,
    KEY (id_reparacion)
);

INSERT INTO productos (nombre, marca, precio, stock) VALUES 
('Laptop Pavilion', 'HP', 750.00, 10),
('Smartphone Galaxy S23', 'Samsung', 900.00, 5),
('Monitor Gamer 24', 'LG', 200.00, 15);

INSERT INTO reparaciones (tipo_equipo, descripcion, costo, fecha) VALUES 
('Laptop', 'Cambio de pantalla rota', 120.50, '2024-05-20'),
('Celular', 'Limpieza de puerto', 25.00, '2024-05-21'),
('Tablet', 'Cambio de bateria', 45.00, '2024-05-22');

-- Estas dos líneas harán que aparezcan cuadros de "Result Grid" con tus datos
SELECT * FROM productos;
SELECT * FROM reparaciones;
 

