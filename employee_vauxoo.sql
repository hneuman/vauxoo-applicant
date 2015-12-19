-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.




CREATE TABLE employee (
);


CREATE TABLE employee_department (
);

CREATE TABLE employee_hobby (
);








ALTER TABLE employee   ADD id serial   PRIMARY KEY  NOT NULL;
ALTER TABLE  employee   ADD first_name  CHAR(120) NOT NULL;
ALTER TABLE  employee   ADD last_name  CHAR(120) NOT NULL;
ALTER TABLE  employee   ADD department_id integer ;
ALTER TABLE  employee   ADD FOREIGN KEY (department_id) REFERENCES employee_department(id);


ALTER TABLE employee   ADD id serial   PRIMARY KEY  NOT NULL;
ALTER TABLE  employee   ADD first_name  CHAR(120) NOT NULL;
ALTER TABLE  employee   ADD last_name  CHAR(120) NOT NULL;




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





ALTER TABLE  employee_hobby   ADD id serial   PRIMARY KEY    NOT NULL;
ALTER TABLE  employee_hobby   ADD name CHAR(120) NOT NULL;
ALTER TABLE employee_hobby   ADD  description text;

CREATE TABLE employee_hobby_relacion (
    employee_id integer REFERENCES employee (id),
    employee_hobby_id integer REFERENCES employee_hobby (id),
    PRIMARY KEY (employee_id, employee_hobby_id)
);


INSERT INTO employee_hobby (name,description) VALUES ('Leer','LEER de ');
INSERT INTO employee_hobby (name,description) VALUES ('Programar',' PC de ');
INSERT INTO employee_hobby (name,description) VALUES ('Correr',' EN la calle ');


INSERT INTO employee_hobby_relacion (employee_id,employee_hobby_id) VALUES ('1','1');
INSERT INTO employee_hobby_relacion (employee_id,employee_hobby_id) VALUES ('1','2');
INSERT INTO employee_hobby_relacion (employee_id,employee_hobby_id) VALUES ('2','2');
INSERT INTO employee_hobby_relacion (employee_id,employee_hobby_id) VALUES ('2','3');
INSERT INTO employee_hobby_relacion (employee_id,employee_hobby_id) VALUES ('3','1');
INSERT INTO employee_hobby_relacion (employee_id,employee_hobby_id) VALUES ('3','3');
INSERT INTO employee_hobby_relacion (employee_id,employee_hobby_id) VALUES ('4','2');
INSERT INTO employee_hobby_relacion (employee_id,employee_hobby_id) VALUES ('4','1');








ALTER TABLE  employee   ADD jefe CHAR(120) NOT NULL ;

UPDATE  employee SET jefe='Jefe neuman' WHERE id='1';

UPDATE  employee SET jefe='Jefe rivero' WHERE id='2';
UPDATE  employee SET jefe='Jefe rivero' WHERE id='3';
UPDATE  employee SET jefe='Jefe santiago' WHERE id='4';

