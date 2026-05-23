/* Actualizar estado del inventario */

UPDATE Inventario
SET estado='Vendido'
WHERE id_automovil=1;


/* Actualizar teléfono del cliente */

UPDATE Cliente
SET telefono='2229999999'
WHERE id_cliente=1;