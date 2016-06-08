--------------------------------------------------------
--  File created - Wednesday-June-01-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Trigger TR_USUARIO_BI
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "AHORRO"."TR_USUARIO_BI" 
BEFORE INSERT ON USUARIO FOR EACH ROW
BEGIN
  :NEW.CREADO_POR := USER;
  :NEW.FECHA_CREACION := SYSDATE;
END;
/
ALTER TRIGGER "AHORRO123"."TR_USUARIO_BI" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TR_USUARIO_BU
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "AHORRO"."TR_USUARIO_BU" 
BEFORE UPDATE ON USUARIOS FOR EACH ROW
BEGIN
  :NEW.MODIFICADO_POR := USER;
  :NEW.FECHA_MODIFICACION := SYSDATE;
END;
/
ALTER TRIGGER "AHORRO123"."TR_USUARIO_BU" ENABLE;
