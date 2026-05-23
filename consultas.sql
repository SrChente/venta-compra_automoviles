/* Mostrar clientes */

SELECT *
FROM Cliente;


/* Mostrar automóviles disponibles */

SELECT a.marca,
       a.modelo,
       i.estado
FROM Automovil a
INNER JOIN Inventario i
ON a.id_automovil=i.id_automovil
WHERE i.estado='Disponible';


/* Mostrar ventas realizadas */

SELECT
c.nombre,
a.marca,
a.modelo,
v.total,
v.fecha_venta
FROM Venta v
INNER JOIN Cliente c
ON v.id_cliente=c.id_cliente
INNER JOIN Automovil a
ON v.id_automovil=a.id_automovil;


/* Mostrar mantenimientos */

SELECT
a.marca,
a.modelo,
m.descripcion,
m.costo,
me.nombre
FROM Mantenimiento m
INNER JOIN Automovil a
ON m.id_automovil=a.id_automovil
INNER JOIN Mecanico me
ON m.id_mecanico=me.id_mecanico;