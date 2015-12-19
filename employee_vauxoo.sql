-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE ROLE hache WITH PASSWORD 'hache' LOGIN SUPERUSER;

CREATE DATABASE employee_employee WITH OWNER hache;




CREATE TABLE employee (
);


CREATE TABLE employee_department (
);

CREATE TABLE employee_hobby (
);



ALTER TABLE  employee_department   ADD id serial   PRIMARY KEY    NOT NULL;
ALTER TABLE  employee_department   ADD name CHAR(120) NOT NULL;
ALTER TABLE employee_department   ADD  description text;

ALTER TABLE employee   ADD id serial   PRIMARY KEY  NOT NULL;
ALTER TABLE  employee   ADD first_name  CHAR(120) NOT NULL;
ALTER TABLE  employee   ADD last_name  CHAR(120) NOT NULL;
ALTER TABLE  employee   ADD FOREIGN KEY (department_id) REFERENCES employee_department(id);



INSERT INTO employee_department (name,description) VALUES ('tecnologia','departamento de tecnologia');
INSERT INTO employee_department (name,description) VALUES ('almacen','departamento de almacen');
INSERT INTO employee_department (name,description) VALUES ('gerencia','departamento de gerencia');
INSERT INTO employee_department (name,description) VALUES ('gerencia2','departamento de gerencia2');
INSERT INTO employee_department (name,description) VALUES ('gerencia3','departamento de gerencia3');
INSERT INTO employee_department (name,description) VALUES ('gerencia4','departamento de gerencia4');

INSERT INTO employee (first_name,last_name,department_id) VALUES ('HERNAN','N',1);
INSERT INTO employee (first_name,last_name,department_id) VALUES ('EDGAR','R',2);
INSERT INTO employee (first_name,last_name,department_id) VALUES ('DEIVIS','L',2);
INSERT INTO employee (first_name,last_name,department_id) VALUES ('MAURICIo','S',5);



