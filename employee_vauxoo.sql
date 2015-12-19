-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE ROLE hache WITH PASSWORD 'hache' LOGIN SUPERUSER;

CREATE DATABASE employee_employee WITH OWNER hache;


CREATE TABLE employee(
   id serial   PRIMARY KEY  NOT NULL,
   first_name           CHAR(120) NOT NULL,
   last_name         CHAR(120)      NOT NULL,
	FOREIGN KEY (id) REFERENCES employee(id)
);



CREATE TABLE employee_department (
	id serial   PRIMARY KEY    NOT NULL ,
	name           CHAR(120) NOT NULL,
	description         CHAR(120)      NOT NULL


);





INSERT INTO employee_department (name,description) VALUES ('tecnologia','departamento de tecnologia');
INSERT INTO employee_department (name,description) VALUES ('almacen','departamento de almacen');
INSERT INTO employee_department (name,description) VALUES ('gerencia','departamento de gerencia');
INSERT INTO employee_department (name,description) VALUES ('gerencia2','departamento de gerencia2');
INSERT INTO employee_department (name,description) VALUES ('gerencia3','departamento de gerencia3');
INSERT INTO employee_department (name,description) VALUES ('gerencia4','departamento de gerencia4');

INSERT INTO employee (first_name,last_name) VALUES ('HERNAN','N');
INSERT INTO employee (first_name,last_name) VALUES ('EDGAR','R');
INSERT INTO employee (first_name,last_name) VALUES ('DEIVIS','L');
INSERT INTO employee (first_name,last_name) VALUES ('MAURICIo','S');



