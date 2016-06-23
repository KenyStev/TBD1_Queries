
-- USER SQL
CREATE USER ESTRUCTURA IDENTIFIED BY clave 
DEFAULT TABLESPACE "USERS"
TEMPORARY TABLESPACE "TEMP";

-- QUOTAS
ALTER USER ESTRUCTURA QUOTA UNLIMITED ON USERS;

-- ROLES

-- SYSTEM PRIVILEGES
GRANT CREATE TABLE TO ESTRUCTURA ;
GRANT CREATE SESSION TO ESTRUCTURA ;


Alter session set current_schema = ESTRUCTURA;

--------------------------------------------------------
--  File created - Wednesday-June-15-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CIUDAD
--------------------------------------------------------

  CREATE TABLE "CIUDAD" 
   (	"CIUDAD" VARCHAR2(20), 
	"CODIGO_AREA" VARCHAR2(5)
   ) ;
--------------------------------------------------------
--  DDL for Table EMPLEADO
--------------------------------------------------------

  CREATE TABLE "EMPLEADO" 
   (	"ID_PERSONA" NUMBER(10,0), 
	"NOMBRE_EMPLEADO" VARCHAR2(100), 
	"CALLE" NUMBER(8,0), 
	"CIUDAD" VARCHAR2(100), 
	"ID_PERSONA_JEFE" NUMBER(10,0)
   ) ;
--------------------------------------------------------
--  DDL for Table EMPRESA
--------------------------------------------------------

  CREATE TABLE "EMPRESA" 
   (	"ID_EMPRESA" NUMBER(10,0), 
	"NOMBRE_EMPRESA" VARCHAR2(100), 
	"CIUDAD" VARCHAR2(100)
   ) ;
--------------------------------------------------------
--  DDL for Table GRUPOS
--------------------------------------------------------

  CREATE TABLE "GRUPOS" 
   (	"ID_GRUPO" NUMBER(6,0), 
	"NOMBRE_GRUPO" VARCHAR2(20)
   ) ;
--------------------------------------------------------
--  DDL for Table PAIS
--------------------------------------------------------

  CREATE TABLE "PAIS" 
   (	"CODIGO_AREA" VARCHAR2(5), 
	"PAIS" VARCHAR2(50)
   ) ;
--------------------------------------------------------
--  DDL for Table TELEFONOS
--------------------------------------------------------

  CREATE TABLE "TELEFONOS" 
   (	"ID_USUARIO" NUMBER(6,0), 
	"TELEFONO" VARCHAR2(20)
   ) ;
--------------------------------------------------------
--  DDL for Table TRABAJA
--------------------------------------------------------

  CREATE TABLE "TRABAJA" 
   (	"ID_PERSONA" NUMBER(10,0), 
	"ID_EMPRESA" NUMBER(10,0), 
	"SUELDO" FLOAT(126)
   ) ;
--------------------------------------------------------
--  DDL for Table USUARIO
--------------------------------------------------------

  CREATE TABLE "USUARIO" 
   (	"ID_USUARIO" NUMBER(6,0), 
	"NOMBRE" VARCHAR2(50), 
	"CIUDAD" VARCHAR2(20)
   ) ;
--------------------------------------------------------
--  DDL for Table USUARIOS_GRUPOS
--------------------------------------------------------

  CREATE TABLE "USUARIOS_GRUPOS" 
   (	"ID_USUARIO" NUMBER(6,0), 
	"ID_GRUPO" NUMBER(6,0)
   ) ;
REM INSERTING into CIUDAD
SET DEFINE OFF;
Insert into CIUDAD (CIUDAD,CODIGO_AREA) values ('SPS','504');
Insert into CIUDAD (CIUDAD,CODIGO_AREA) values ('San Jose','506');
REM INSERTING into EMPLEADO
SET DEFINE OFF;
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (1,'Ivor Finley',9,'San Pedro Sula',null);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (2,'Beatrice Parsons',3,'San Pedro Sula',1);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (3,'Risa Ball',1,'San Pedro Sula',1);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (4,'Margaret Andrews',2,'San Pedro Sula',2);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (5,'Allen Peters',1,'San Pedro Sula',2);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (6,'Brennan Nelson',5,'Tegucugalpa',2);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (7,'Martha Patel',7,'Tegucugalpa',3);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (8,'Bo Brewer',2,'Tegucugalpa',3);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (9,'Elaine Mayo',8,'Tegucugalpa',3);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (10,'McKenzie Dorsey',6,'Tegucugalpa',3);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (11,'Ulysses Owen',8,'La Ceiba',3);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (12,'Christian Parsons',1,'La Ceiba',3);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (13,'Carl Franco',9,'La Ceiba',7);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (14,'Uriah Moses',1,'La Ceiba',4);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (15,'Stuart Rodriquez',7,'La Ceiba',6);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (16,'Hollee Townsend',1,'Choloma',10);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (17,'Orlando Browning',8,'Choloma',9);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (18,'Cailin Warren',3,'Choloma',5);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (19,'Ronan Bryant',6,'Choloma',10);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (20,'Donovan Frost',2,'Choloma',5);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (21,'Hop Shelton',8,'Potrerillos',5);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (22,'MacKenzie Carter',0,'Potrerillos',7);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (23,'Beck Ryan',1,'Potrerillos',5);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (24,'Harlan Suarez',0,'Potrerillos',3);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (25,'Shannon Flowers',5,'Potrerillos',2);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (26,'Kitra Ball',2,'San Pedro Sula',3);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (27,'Nayda Talley',2,'San Pedro Sula',1);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (28,'Fallon Sanchez',9,'San Pedro Sula',9);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (29,'Quamar Hampton',5,'San Pedro Sula',9);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (30,'Fredericka Randall',8,'San Pedro Sula',4);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (31,'Adara Holcomb',0,'Tegucugalpa',8);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (32,'Colorado Davis',1,'Tegucugalpa',10);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (33,'Jasmine Cross',9,'Tegucugalpa',7);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (34,'Katell Haney',9,'Tegucugalpa',5);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (35,'Jameson Lyons',5,'Tegucugalpa',1);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (36,'Macon Carroll',7,'La Ceiba',4);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (37,'Ursula Caldwell',8,'La Ceiba',4);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (38,'Cassidy May',6,'La Ceiba',10);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (39,'Rhonda Hensley',0,'La Ceiba',5);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (40,'Callie Kane',2,'La Ceiba',7);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (41,'Lenore Eaton',5,'Choloma',6);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (42,'Rahim Flowers',4,'Choloma',2);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (43,'Charity Atkinson',0,'Choloma',4);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (44,'Axel Stafford',2,'Choloma',7);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (45,'Seth Maxwell',9,'Choloma',8);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (46,'David Parrish',4,'Potrerillos',5);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (47,'Kaye Cherry',1,'Potrerillos',7);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (48,'Pamela Douglas',3,'Potrerillos',2);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (49,'Dorothy Baker',2,'Potrerillos',10);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (50,'Tasha Wiggins',3,'Potrerillos',6);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (51,'Katelyn Conley',5,'San Pedro Sula',9);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (52,'Pascale Bowman',6,'San Pedro Sula',1);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (53,'Abbot Hicks',5,'San Pedro Sula',4);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (54,'Megan Baldwin',6,'San Pedro Sula',4);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (55,'Georgia Stevens',1,'San Pedro Sula',3);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (56,'Kennan Reese',7,'Tegucugalpa',10);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (57,'Wang Manning',2,'Tegucugalpa',10);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (58,'Eagan Alston',9,'Tegucugalpa',7);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (59,'Maia Duke',7,'Tegucugalpa',5);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (60,'Zane Duncan',2,'Tegucugalpa',8);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (61,'Jesse Hubbard',7,'La Ceiba',7);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (62,'Shad Burgess',6,'La Ceiba',8);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (63,'Clio Crosby',0,'La Ceiba',6);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (64,'Dorian Hayden',8,'La Ceiba',7);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (65,'Amir Johns',3,'La Ceiba',8);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (66,'Juliet Rollins',7,'Choloma',5);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (67,'Tyrone Pena',2,'Choloma',5);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (68,'Gisela Barr',8,'Choloma',2);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (69,'Sydney Tillman',7,'Choloma',6);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (70,'Angelica Christensen',8,'Choloma',2);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (71,'Karly Grant',3,'Potrerillos',9);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (72,'MacKensie Johnston',3,'Potrerillos',4);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (73,'Nicholas Crosby',9,'Potrerillos',10);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (74,'Gray Mccall',5,'Potrerillos',2);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (75,'Berk Cameron',0,'Potrerillos',10);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (76,'Amena Huber',3,'San Pedro Sula',2);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (77,'Nathaniel Terrell',5,'San Pedro Sula',2);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (78,'Kellie Harris',1,'San Pedro Sula',4);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (79,'Maisie Pollard',2,'San Pedro Sula',6);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (80,'Blair Lowery',3,'San Pedro Sula',4);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (81,'Kylie Weaver',7,'Tegucugalpa',9);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (82,'Dara Romero',7,'Tegucugalpa',10);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (83,'Emery Spears',7,'Tegucugalpa',9);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (84,'Megan Wade',2,'Tegucugalpa',1);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (85,'Hayfa Bird',3,'Tegucugalpa',8);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (86,'Galena Palmer',5,'La Ceiba',6);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (87,'Shay Hamilton',8,'La Ceiba',10);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (88,'Charles Jordan',0,'La Ceiba',5);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (89,'Taylor Hatfield',3,'La Ceiba',3);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (90,'Jolie Hurst',8,'La Ceiba',3);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (91,'Kiona Jackson',3,'Choloma',1);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (92,'Scarlet Payne',3,'Choloma',2);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (93,'Carol Conley',4,'Choloma',7);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (94,'Ishmael David',4,'Choloma',8);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (95,'Bryar Watkins',6,'Choloma',4);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (96,'Lacey Edwards',6,'Potrerillos',10);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (97,'Stacey Burris',9,'Potrerillos',10);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (98,'Tamekah Nixon',6,'Potrerillos',3);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (99,'Carla Smith',6,'Potrerillos',5);
Insert into EMPLEADO (ID_PERSONA,NOMBRE_EMPLEADO,CALLE,CIUDAD,ID_PERSONA_JEFE) values (100,'Whitney Allison',4,'Potrerillos',9);
REM INSERTING into EMPRESA
SET DEFINE OFF;
Insert into EMPRESA (ID_EMPRESA,NOMBRE_EMPRESA,CIUDAD) values (1,'Banco Pequeño','San Pedro Sula');
Insert into EMPRESA (ID_EMPRESA,NOMBRE_EMPRESA,CIUDAD) values (2,'Banco Importante','San Pedro Sula');
Insert into EMPRESA (ID_EMPRESA,NOMBRE_EMPRESA,CIUDAD) values (3,'UNITEC','San Pedro Sula');
Insert into EMPRESA (ID_EMPRESA,NOMBRE_EMPRESA,CIUDAD) values (4,'Altara','San Pedro Sula');
Insert into EMPRESA (ID_EMPRESA,NOMBRE_EMPRESA,CIUDAD) values (5,'Altia','San Pedro Sula');
REM INSERTING into GRUPOS
SET DEFINE OFF;
Insert into GRUPOS (ID_GRUPO,NOMBRE_GRUPO) values (1,'Administrador');
Insert into GRUPOS (ID_GRUPO,NOMBRE_GRUPO) values (2,'Auditor');
Insert into GRUPOS (ID_GRUPO,NOMBRE_GRUPO) values (3,'Lectura');
Insert into GRUPOS (ID_GRUPO,NOMBRE_GRUPO) values (4,'Visitante');
Insert into GRUPOS (ID_GRUPO,NOMBRE_GRUPO) values (5,'Revisor');
Insert into GRUPOS (ID_GRUPO,NOMBRE_GRUPO) values (6,'Creador');
REM INSERTING into PAIS
SET DEFINE OFF;
Insert into PAIS (CODIGO_AREA,PAIS) values ('504','Honduras');
Insert into PAIS (CODIGO_AREA,PAIS) values ('506','Costa Rica');
REM INSERTING into TELEFONOS
SET DEFINE OFF;
Insert into TELEFONOS (ID_USUARIO,TELEFONO) values (1,'7777-6666');
Insert into TELEFONOS (ID_USUARIO,TELEFONO) values (1,'9999-6666');
Insert into TELEFONOS (ID_USUARIO,TELEFONO) values (2,'8888-9999');
Insert into TELEFONOS (ID_USUARIO,TELEFONO) values (3,'3333-9999');
REM INSERTING into TRABAJA
SET DEFINE OFF;
Insert into TRABAJA (ID_PERSONA,ID_EMPRESA,SUELDO) values (1,2,100000);
Insert into TRABAJA (ID_PERSONA,ID_EMPRESA,SUELDO) values (2,4,26259);
Insert into TRABAJA (ID_PERSONA,ID_EMPRESA,SUELDO) values (3,1,10199);
Insert into TRABAJA (ID_PERSONA,ID_EMPRESA,SUELDO) values (4,3,14590);
Insert into TRABAJA (ID_PERSONA,ID_EMPRESA,SUELDO) values (5,4,8164);
Insert into TRABAJA (ID_PERSONA,ID_EMPRESA,SUELDO) values (6,3,8740);
Insert into TRABAJA (ID_PERSONA,ID_EMPRESA,SUELDO) values (7,3,12508);
Insert into TRABAJA (ID_PERSONA,ID_EMPRESA,SUELDO) values (8,2,20019);
Insert into TRABAJA (ID_PERSONA,ID_EMPRESA,SUELDO) values (9,3,12474);
Insert into TRABAJA (ID_PERSONA,ID_EMPRESA,SUELDO) values (10,4,26730);
Insert into TRABAJA (ID_PERSONA,ID_EMPRESA,SUELDO) values (11,4,19591);
Insert into TRABAJA (ID_PERSONA,ID_EMPRESA,SUELDO) values (12,5,11862);
Insert into TRABAJA (ID_PERSONA,ID_EMPRESA,SUELDO) values (13,2,14577);
Insert into TRABAJA (ID_PERSONA,ID_EMPRESA,SUELDO) values (14,5,23523);
Insert into TRABAJA (ID_PERSONA,ID_EMPRESA,SUELDO) values (15,2,19874);
Insert into TRABAJA (ID_PERSONA,ID_EMPRESA,SUELDO) values (16,2,16816);
Insert into TRABAJA (ID_PERSONA,ID_EMPRESA,SUELDO) values (17,1,17646);
Insert into TRABAJA (ID_PERSONA,ID_EMPRESA,SUELDO) values (18,1,9086);
Insert into TRABAJA (ID_PERSONA,ID_EMPRESA,SUELDO) values (19,4,10002);
Insert into TRABAJA (ID_PERSONA,ID_EMPRESA,SUELDO) values (20,3,7426);
Insert into TRABAJA (ID_PERSONA,ID_EMPRESA,SUELDO) values (21,2,29112);
Insert into TRABAJA (ID_PERSONA,ID_EMPRESA,SUELDO) values (22,4,17322);
Insert into TRABAJA (ID_PERSONA,ID_EMPRESA,SUELDO) values (23,4,17520);
Insert into TRABAJA (ID_PERSONA,ID_EMPRESA,SUELDO) values (24,4,29199);
Insert into TRABAJA (ID_PERSONA,ID_EMPRESA,SUELDO) values (25,2,19977);
Insert into TRABAJA (ID_PERSONA,ID_EMPRESA,SUELDO) values (26,2,17292);
Insert into TRABAJA (ID_PERSONA,ID_EMPRESA,SUELDO) values (27,3,18244);
Insert into TRABAJA (ID_PERSONA,ID_EMPRESA,SUELDO) values (28,4,16632);
Insert into TRABAJA (ID_PERSONA,ID_EMPRESA,SUELDO) values (29,5,20059);
Insert into TRABAJA (ID_PERSONA,ID_EMPRESA,SUELDO) values (30,4,29609);
Insert into TRABAJA (ID_PERSONA,ID_EMPRESA,SUELDO) values (31,3,29032);
Insert into TRABAJA (ID_PERSONA,ID_EMPRESA,SUELDO) values (32,2,8997);
Insert into TRABAJA (ID_PERSONA,ID_EMPRESA,SUELDO) values (33,2,16688);
Insert into TRABAJA (ID_PERSONA,ID_EMPRESA,SUELDO) values (34,5,14512);
Insert into TRABAJA (ID_PERSONA,ID_EMPRESA,SUELDO) values (35,3,8608);
Insert into TRABAJA (ID_PERSONA,ID_EMPRESA,SUELDO) values (36,5,16822);
Insert into TRABAJA (ID_PERSONA,ID_EMPRESA,SUELDO) values (37,5,29531);
Insert into TRABAJA (ID_PERSONA,ID_EMPRESA,SUELDO) values (38,5,13553);
Insert into TRABAJA (ID_PERSONA,ID_EMPRESA,SUELDO) values (39,2,29165);
Insert into TRABAJA (ID_PERSONA,ID_EMPRESA,SUELDO) values (40,2,25998);
Insert into TRABAJA (ID_PERSONA,ID_EMPRESA,SUELDO) values (41,2,11340);
Insert into TRABAJA (ID_PERSONA,ID_EMPRESA,SUELDO) values (42,3,10109);
Insert into TRABAJA (ID_PERSONA,ID_EMPRESA,SUELDO) values (43,2,8332);
Insert into TRABAJA (ID_PERSONA,ID_EMPRESA,SUELDO) values (44,4,12039);
Insert into TRABAJA (ID_PERSONA,ID_EMPRESA,SUELDO) values (45,3,8061);
Insert into TRABAJA (ID_PERSONA,ID_EMPRESA,SUELDO) values (46,5,9455);
Insert into TRABAJA (ID_PERSONA,ID_EMPRESA,SUELDO) values (47,3,23735);
Insert into TRABAJA (ID_PERSONA,ID_EMPRESA,SUELDO) values (48,2,27143);
Insert into TRABAJA (ID_PERSONA,ID_EMPRESA,SUELDO) values (49,3,18424);
Insert into TRABAJA (ID_PERSONA,ID_EMPRESA,SUELDO) values (50,5,23164);
REM INSERTING into USUARIO
SET DEFINE OFF;
Insert into USUARIO (ID_USUARIO,NOMBRE,CIUDAD) values (1,'Carlos Perez','SPS');
Insert into USUARIO (ID_USUARIO,NOMBRE,CIUDAD) values (2,'Pedro Rivera','San Jose');
Insert into USUARIO (ID_USUARIO,NOMBRE,CIUDAD) values (3,'Ricardo Gomez','SPS');
REM INSERTING into USUARIOS_GRUPOS
SET DEFINE OFF;
Insert into USUARIOS_GRUPOS (ID_USUARIO,ID_GRUPO) values (1,2);
Insert into USUARIOS_GRUPOS (ID_USUARIO,ID_GRUPO) values (1,3);
Insert into USUARIOS_GRUPOS (ID_USUARIO,ID_GRUPO) values (2,2);
Insert into USUARIOS_GRUPOS (ID_USUARIO,ID_GRUPO) values (2,5);
Insert into USUARIOS_GRUPOS (ID_USUARIO,ID_GRUPO) values (2,6);
Insert into USUARIOS_GRUPOS (ID_USUARIO,ID_GRUPO) values (3,1);
Insert into USUARIOS_GRUPOS (ID_USUARIO,ID_GRUPO) values (3,4);
