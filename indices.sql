/* INDICES */

/* Índice para búsquedas de clientes */

CREATE INDEX idx_cliente_nombre
ON Cliente(nombre);


/* Índice para búsquedas de automóviles */

CREATE INDEX idx_auto_modelo
ON Automovil(modelo);


/* Índice para búsquedas por fecha de venta */

CREATE INDEX idx_venta_fecha
ON Venta(fecha_venta);


/* Índice compuesto */

CREATE INDEX idx_auto_marca_modelo
ON Automovil(marca,modelo);