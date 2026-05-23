/* CLIENTES */

INSERT INTO Cliente
(nombre,telefono,direccion,correo)
VALUES
('Juan Perez','2221234567','Puebla','juan@gmail.com');

INSERT INTO Cliente
(nombre,telefono,direccion,correo)
VALUES
('Maria Lopez','2227654321','Cholula','maria@gmail.com');


/* PROVEEDORES */

INSERT INTO Proveedor
(nombre,telefono,direccion,correo)
VALUES
('Autos Puebla','2224567890','Puebla','autos@gmail.com');


/* COMPRAS */

INSERT INTO Compra
(id_compra,fecha_compra,total,id_proveedor)
VALUES
(1,SYSDATE,350000,1);


/* AUTOMOVILES */

INSERT INTO Automovil
(marca,modelo,anio,color,num_serie,precio_compra,precio_venta,id_compra)
VALUES
('Toyota','Corolla',2022,'Blanco',
'ABC12345',250000,320000,1);

INSERT INTO Automovil
(marca,modelo,anio,color,num_serie,precio_compra,precio_venta,id_compra)
VALUES
('Nissan','Versa',2023,'Negro',
'XYZ98765',280000,350000,1);


/* INVENTARIO */

INSERT INTO Inventario
(id_inventario,fecha_ingreso,fecha_salida,estado,id_automovil)
VALUES
(1,SYSDATE,NULL,'Disponible',1);


/* MECANICOS */

INSERT INTO Mecanico
(id_mecanico,nombre,especialidad,telefono)
VALUES
(1,'Carlos Martinez',
'Motores','2221111111');


/* MANTENIMIENTO */

INSERT INTO Mantenimiento
(id_mantenimiento,descripcion,costo,id_automovil,id_mecanico)
VALUES
(1,'Cambio de aceite',
1200,1,1);


/* VENTA */

INSERT INTO Venta
(id_venta,fecha_venta,total,id_cliente,id_automovil)
VALUES
(1,SYSDATE,320000,1,1);

COMMIT;