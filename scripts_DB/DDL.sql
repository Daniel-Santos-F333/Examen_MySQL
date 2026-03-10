-- CREATES

create database examen_ventas;

use examen_ventas;

create table productos (
    id_producto INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nombre_producto VARCHAR(100) NOT NULL,
    precio_producto DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL
);

create table clientes (
    id_cliente INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nombre_cliente VARCHAR(50) NOT NULL,
    telefono_cliente VARCHAR(10) NOT NULL
);

create table ventas (
    id_venta INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    fecha DATE NOT NULL,
    cantidad INT NOT NULL,
    cliente_id INT NOT NULL,
    producto_id INT NOT NULL,
    FOREIGN KEY (cliente_id) references clientes(id_cliente),
    FOREIGN KEY (producto_id) references productos(id_producto)
);

