/* VISTAS */


/* Vista de ventas */

CREATE VIEW vista_ventas AS
SELECT
v.id_venta,
c.nombre AS cliente,
a.marca,
a.modelo,
v.total,
v.fecha_venta
FROM Venta v
INNER JOIN Cliente c
ON v.id_cliente=c.id_cliente
INNER JOIN Automovil a
ON v.id_automovil=a.id_automovil;


/* Vista de mantenimientos */

CREATE VIEW vista_mantenimientos AS
SELECT
m.id_mantenimiento,
a.marca,
a.modelo,
me.nombre AS mecanico,
m.descripcion,
m.costo
FROM Mantenimiento m
INNER JOIN Automovil a
ON m.id_automovil=a.id_automovil
INNER JOIN Mecanico me
ON m.id_mecanico=me.id_mecanico;


/* Vista de inventario */

CREATE VIEW vista_inventario AS
SELECT
a.marca,
a.modelo,
i.estado,
i.fecha_ingreso
FROM Automovil a
INNER JOIN Inventario i
ON a.id_automovil=i.id_automovil;