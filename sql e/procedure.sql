USE `consultas`;
DROP procedure IF EXISTS `Fabricante`;

DELIMITER $$
USE `consultas`$$
CREATE PROCEDURE `Fabricante`(
    IN	nombre VARCHAR(100)
)
BEGIN
	INSERT INTO fabricante(nombre)
	VALUES (nombre);
END$$

DELIMITER ;


USE `consultas`;
DROP PROCEDURE IF EXISTS `prod`;

DELIMITER $$
USE `consultas`$$
CREATE PROCEDURE `prod`(
    IN	nombre VARCHAR(100),
    IN	precio DOUBLE,
    IN	codigo_fabricante INT(10)
)
BEGIN
	INSERT INTO producto(nombre, precio, codigo_fabricante)
	VALUES (nombre, precio, codigo_fabricante);
END$$