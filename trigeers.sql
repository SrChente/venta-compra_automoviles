/* TRIGGERS */


/* Generar id automático para clientes */

CREATE OR REPLACE TRIGGER trg_cliente
BEFORE INSERT ON Cliente
FOR EACH ROW
BEGIN
    :NEW.id_cliente:=seq_cliente.NEXTVAL;
END;
/


/* Generar id automático para proveedores */

CREATE OR REPLACE TRIGGER trg_proveedor
BEFORE INSERT ON Proveedor
FOR EACH ROW
BEGIN
    :NEW.id_proveedor:=seq_proveedor.NEXTVAL;
END;
/

/* Generar id automático para automóviles */

CREATE OR REPLACE TRIGGER trg_automovil
BEFORE INSERT ON Automovil
FOR EACH ROW
BEGIN
    :NEW.id_automovil:=seq_automovil.NEXTVAL;
END;
/