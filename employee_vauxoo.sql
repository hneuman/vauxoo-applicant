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



ALTER TABLE  employee_hobby   ADD id serial   PRIMARY KEY    NOT NULL;
ALTER TABLE  employee_hobby   ADD name CHAR(120) NOT NULL;
ALTER TABLE employee_hobby   ADD  description text;



ALTER TABLE employee   ADD id serial   PRIMARY KEY  NOT NULL;
ALTER TABLE  employee   ADD first_name  CHAR(120) NOT NULL;
ALTER TABLE  employee   ADD last_name  CHAR(120) NOT NULL;


-- This is the junction table.
CREATE TABLE employee_hobby_relacion (
	id serial    NOT NULL;
    employee_id varchar(50) REFERENCES employee (id),
    employee_hobby_id varchar(50) REFERENCES employee_hobby (id),
    PRIMARY KEY (employee_id, employee_hobby_id)
)



INSERT INTO employee_hobby (name,description) VALUES ('Leer','LEER de ');
INSERT INTO employee_hobby (name,description) VALUES ('Programar',' PC de ');
INSERT INTO employee_hobby (name,description) VALUES ('Correr',' EN la calle ');


INSERT INTO employee (first_name,last_name,department_id) VALUES ('HERNAN','N',1);
INSERT INTO employee (first_name,last_name,department_id) VALUES ('EDGAR','R',2);
INSERT INTO employee (first_name,last_name,department_id) VALUES ('DEIVIS','L',2);
INSERT INTO employee (first_name,last_name,department_id) VALUES ('MAURICIo','S',5);

INSERT INTO employee_hobby_relacion (employee_id,employee_hobby_id) VALUES ('1','1',5);
INSERT INTO employee_hobby_relacion (employee_id,employee_hobby_id) VALUES ('1','2',5);
INSERT INTO employee_hobby_relacion (employee_id,employee_hobby_id) VALUES ('2','2',5);
INSERT INTO employee_hobby_relacion (employee_id,employee_hobby_id) VALUES ('2','3',5);
INSERT INTO employee_hobby_relacion (employee_id,employee_hobby_id) VALUES ('3','1',5);
INSERT INTO employee_hobby_relacion (employee_id,employee_hobby_id) VALUES ('3','3',5);
INSERT INTO employee_hobby_relacion (employee_id,employee_hobby_id) VALUES ('4','2',5);
INSERT INTO employee_hobby_relacion (employee_id,employee_hobby_id) VALUES ('5','1',5);
INSERT INTO employee_hobby_relacion (employee_id,employee_hobby_id) VALUES ('4','3',5);
INSERT INTO employee_hobby_relacion (employee_id,employee_hobby_id) VALUES ('2','2',5);
INSERT INTO employee_hobby_relacion (employee_id,employee_hobby_id) VALUES ('1','1',5);


