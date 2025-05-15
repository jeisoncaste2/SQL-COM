DROP DATABASE IF EXISTS consultas;
CREATE DATABASE consultas;
USE consultas;

CREATE TABLE Fabricante(
	codigo INT (10) PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(100)
);

CREATE TABLE Producto(
	Codigo INT (10) PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(100),
    Precio DOUBLE,
    codigo_fabricante INT(10)
);
ALTER TABLE Producto
ADD CONSTRAINT FK_CODIGO_FABRICANTE
FOREIGN KEY (codigo_fabricante) REFERENCES Fabricante (codigo)