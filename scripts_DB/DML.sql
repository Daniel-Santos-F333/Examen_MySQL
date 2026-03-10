-- INSERTS

insert into clientes (nombre_cliente, telefono_cliente)
    values ('Juan Perez', '3162311516'),
    ('Camilo Castillo', '3201516721'),
    ('Hernan Chaparro', '3178491209'),
    ('Jaime Lizarazo', '3188901230')
;

insert into productos (nombre_producto, precio_producto, stock)
    values ('torta_chocolate', 20000, 8),
    ('torta_genovesa', 30000, 9),
    ('torta_envinada', 40000, 3),
    ('torta_tiramisu', 35000, 5)
;

insert into ventas (fecha, cantidad, cliente_id, producto_id)
    values ('2026-02-14', 2, 4, 1),
    ('2026-03-03', 1, 1, 3),
    ('2026-03-08', 3, 2, 2),
    ('2026-03-09', 1, 3, 4)
;
--###############
--## CONSULTAS ##
--###############

--Ventas Generales: Mostrar id_venta, fecha y nombre_cliente.

select v.id_venta, v.fecha, c.nombre_cliente
from ventas v
join clientes c on c.id_cliente = v.cliente_id
order by v.id_venta
;

-- **Detalle de Venta:** Mostrar id_venta, nombre_cliente, nombre_producto, cantidad, precio_producto y el **Subtotal** (cantidad × precio).

SELECT
    v.id_venta,
    c.nombre_cliente,
    p.nombre_producto,
    v.cantidad,
    p.precio_producto,
    (p.precio_producto * v.cantidad) AS subtotal
FROM ventas v
JOIN productos p ON v.producto_id = p.id_producto
JOIN clientes c ON v.cliente_id = c.id_cliente
ORDER BY v.id_venta
;

-- Reporte de Gastos: Mostrar nombre_cliente y el __Total Gastado__ (suma de todos sus subtotales). Ordenar de mayor a menor gasto.

SELECT 
    c.nombre_cliente, 
    SUM(v.cantidad * p.precio) AS total_gastado
FROM clientes c
JOIN ventas v ON c.id_cliente = v.cliente_id
JOIN productos p ON v.producto_id = p.id_producto
GROUP BY c.id_cliente, c.nombre_cliente
ORDER BY total_gastado DESC;
