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

DESCRIBE users;

INSERT INTO users values 
  (1, 'Jose Luis Reyes Sanchez', 'josc.rar@gmail.com', '123456', '5533012377', 'Toluca, Estado de México', '', 23, 1, 'TYSMCM290723NKSAVSA'),
  (2, 'Alejandro Perez', 'email@domain.com', '123456', '98052345345', 'Toluca, Estado de México', '', 23, 1, 'IOUFBALSBCL9038742JKBSACJSA');


SELECT * FROM users;
