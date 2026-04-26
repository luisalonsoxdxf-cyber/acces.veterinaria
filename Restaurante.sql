CREATE DATABASE IF NOT EXISTS restaurante_db;
USE restaurante_db;
CREATE TABLE IF NOT EXISTS menu (
    id_plato INT AUTO_INCREMENT NOT NULL,
    nombre_plato VARCHAR(100) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    disponible BOOLEAN NOT NULL,
    PRIMARY KEY (id_plato)
);
CREATE TABLE IF NOT EXISTS pedidos (
    id_pedido INT AUTO_INCREMENT NOT NULL,
    cliente VARCHAR(100) NOT NULL,
    total DECIMAL(10, 2) NOT NULL,
    fecha DATE NOT NULL,
    PRIMARY KEY (id_pedido)
);
INSERT INTO menu (nombre_plato, categoria, precio, disponible) VALUES 
('Baleada Especial', 'comida', 45.50, TRUE),
('Horchata Natural', 'bebida', 30.00, TRUE),
('Arroz con Leche', 'postre', 25.00, TRUE);
INSERT INTO pedidos (cliente, total, fecha) VALUES 
('Juan Pérez', 120.75, '2024-05-20'),
('Ana García', 45.50, '2024-05-21'),
('Carlos López', 210.00, '2024-05-21');
select * from menu;
select * from pedidos;