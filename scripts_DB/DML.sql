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

-- CONSULTAS --




