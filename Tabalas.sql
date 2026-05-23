--TABLA CLIENTE

CREATE TABLE Cliente(
    id_cliente NUMBER PRIMARY KEY,
    nombre VARCHAR2(50) NOT NULL,
    telefono VARCHAR2(20),
    direccion VARCHAR2(100),
    correo VARCHAR2(50)
);


--TABLA PROVEEDOR

CREATE TABLE Proveedor(
    id_proveedor NUMBER PRIMARY KEY,
    nombre VARCHAR2(50) NOT NULL,
    telefono VARCHAR2(20),
    direccion VARCHAR2(100),
    correo VARCHAR2(50)
);


--TABLA COMPRA

CREATE TABLE Compra(
    id_compra NUMBER PRIMARY KEY,
    fecha_compra DATE,
    total NUMBER(10,2),
    id_proveedor NUMBER,

    CONSTRAINT fk_compra_proveedor
    FOREIGN KEY(id_proveedor)
    REFERENCES Proveedor(id_proveedor)
);


--TABLA AUTOMOVIL

CREATE TABLE Automovil(
    id_automovil NUMBER PRIMARY KEY,
    marca VARCHAR2(30),
    modelo VARCHAR2(30),
    anio NUMBER(4),
    color VARCHAR2(20),
    num_serie VARCHAR2(50) UNIQUE,
    precio_compra NUMBER(10,2),
    precio_venta NUMBER(10,2),
    id_compra NUMBER,

    CONSTRAINT fk_auto_compra
    FOREIGN KEY(id_compra)
    REFERENCES Compra(id_compra)
);


--TABLA INVENTARIO

CREATE TABLE Inventario(
    id_inventario NUMBER PRIMARY KEY,
    fecha_ingreso DATE,
    fecha_salida DATE,
    estado VARCHAR2(30),
    id_automovil NUMBER,

    CONSTRAINT fk_inventario_automovil
    FOREIGN KEY(id_automovil)
    REFERENCES Automovil(id_automovil)
);


--TABLA VENTA

CREATE TABLE Venta(
    id_venta NUMBER PRIMARY KEY,
    fecha_venta DATE,
    total NUMBER(10,2),
    id_cliente NUMBER,
    id_automovil NUMBER,

    CONSTRAINT fk_venta_cliente
    FOREIGN KEY(id_cliente)
    REFERENCES Cliente(id_cliente),

    CONSTRAINT fk_venta_automovil
    FOREIGN KEY(id_automovil)
    REFERENCES Automovil(id_automovil)
);


--TABLA MECANICO

CREATE TABLE Mecanico(
    id_mecanico NUMBER PRIMARY KEY,
    nombre VARCHAR2(50),
    especialidad VARCHAR2(50),
    telefono VARCHAR2(20)
);


--TABLA MANTENIMIENTO

CREATE TABLE Mantenimiento(
    id_mantenimiento NUMBER PRIMARY KEY,
    descripcion VARCHAR2(200),
    costo NUMBER(10,2),
    id_automovil NUMBER,
    id_mecanico NUMBER,

    CONSTRAINT fk_mant_auto
    FOREIGN KEY(id_automovil)
    REFERENCES Automovil(id_automovil),

    CONSTRAINT fk_mant_mecanico
    FOREIGN KEY(id_mecanico)
    REFERENCES Mecanico(id_mecanico)
);