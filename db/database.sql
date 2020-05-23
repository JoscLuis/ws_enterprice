CREATE DATABASE IF NOT EXISTS grocery;

USE grocery;

CREATE TABLE users (
  iduser INT(11) NOT NULL AUTO_INCREMENT,
  name VARCHAR(45) DEFAULT NULL,
  email VARCHAR(45) DEFAULT NULL,
  password VARCHAR(45) DEFAULT NULL,
  phone VARCHAR(45) DEFAULT NULL,
  address VARCHAR(45) DEFAULT NULL,
  photo VARCHAR(45) DEFAULT NULL,
  age INT(10) DEFAULT NULL,
  status INT(10) DEFAULT 1,
  token VARCHAR(45) DEFAULT NULL,
  PRIMARY KEY(iduser)
);
CREATE TABLE clients (
  idclient INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(45) NOT NULL,
  address VARCHAR(45) NOT NULL,
  car VARCHAR(45) NOT NULL,
  phone VARCHAR(45) NOT NULL,
  status INT NOT NULL DEFAULT 1,
  PRIMARY KEY (idclient));

DESCRIBE users;

INSERT INTO users values 
  (1, 'Jose Luis Reyes Sanchez', 'josc.rar@gmail.com', '123456', '5533012377', 'Toluca, Estado de México', '', 23, 1, 'TYSMCM290723NKSAVSA'),
  (2, 'Alejandro Perez', 'email@domain.com', '123456', '98052345345', 'Toluca, Estado de México', '', 23, 1, 'IOUFBALSBCL9038742JKBSACJSA');
SELECT * FROM users;

DESCRIBE clients;
INSERT INTO clients values 
  (1, 'Luis Perez Mendez', 'Benito Juarez CDMX', 'BMW BLUE', '5533012377', 1),
  (2, 'Jose Manuel Ortiz', 'Chavacano #21', 'BMW', '93825073521', 1),
  (3, 'David Ortega Arriaga', 'Los Arcos, San Francisco Cal.', 'NISAN', '346623643632', 1),
  (4, 'Alejandro Mendoza', 'Tlalpan #38', 'Audi 2020', '232135235', 1);

SELECT * FROM clients;
