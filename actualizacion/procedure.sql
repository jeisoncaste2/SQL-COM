USE `consultas`;
DROP procedure IF EXISTS `fabricante`;

DELIMITER $$
USE `consultas`$$
CREATE PROCEDURE `fabricante`(
    IN	Nombre VARCHAR(100)
)
BEGIN
	INSERT INTO fabricante(Nombre)
	VALUES (Nombre);
END$$

DELIMITER ;


USE `consultas`;
DROP PROCEDURE IF EXISTS `prod`;

DELIMITER $$
USE `consultas`$$
CREATE PROCEDURE `prod`(
    IN	Nombre VARCHAR(100),
    IN	Precio DOUBLE,
    IN	codigo_fabricante INT(10)
)
BEGIN
	INSERT INTO Producto(Nombre, Precio, codigo_fabricante)
	VALUES (Nombre, Precio, codigo_fabricante);
END$$

DELIMITER ;