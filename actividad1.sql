/*1*/SELECT Nombre FROM producto;
/*2*/SELECT Nombre,Precio FROM producto;
/*3*/SELECT * FROM producto;
/*4*/SELECT Precio AS euros
FROM Producto;
/*5*/SELECT Nombre AS `nombre de producto`,
Precio AS euros,
Precio * 1.08 AS dólares
FROM Producto;
/*6*/ SELECT UPPER(Nombre) AS Nombre_Mayusculas, Precio 
FROM Producto;
/*7*/ SELECT LOWER(Nombre) AS Nombre_Minusculas, Precio 
FROM Producto;
/*8*/ SELECT Nombre, UPPER(SUBSTRING(Nombre, 1, 2)) AS Primeros_Caracteres 
FROM Fabricante;
/*9*/ SELECT Nombre, ROUND(Precio) AS Precio_Redondeado 
FROM Producto;
/*10*/ SELECT Nombre, TRUNCATE(Precio, 0) AS Precio_Truncado 
FROM Producto;
/*11*/ SELECT DISTINCT codigo_fabricante 
FROM Producto;
/*12*/ SELECT DISTINCT codigo_fabricante 
FROM Producto;
/*13*/ SELECT Nombre 
FROM Fabricante ORDER BY Nombre ASC;
/*14*/ SELECT Nombre
 FROM Fabricante ORDER BY Nombre DESC;
/*15*/ SELECT Nombre, Precio FROM Producto ORDER BY Nombre ASC, Precio DESC;
/*16*/ SELECT * 
FROM Fabricante LIMIT 5;
/*17*/ SELECT * FROM Fabricante LIMIT 3 OFFSET 3;
/*18*/ SELECT Nombre, Precio 
FROM Producto ORDER BY Precio ASC LIMIT 1;
/*19*/ SELECT Nombre, Precio 
FROM Producto ORDER BY Precio DESC LIMIT 1;
/*20*/ SELECT Nombre FROM Producto 
WHERE codigo_fabricante = 2;
/*21*/ SELECT Nombre FROM Producto 
WHERE Precio <= 120;
/*22*/ SELECT Nombre FROM Producto 
WHERE Precio >= 400;
/*23*/ SELECT Nombre FROM Producto 
WHERE NOT Precio >= 400;
/*24*/ SELECT Nombre FROM Producto 
WHERE Precio > 80 AND Precio < 300;
/*25*/ SELECT Nombre FROM Producto 
WHERE Precio BETWEEN 60 AND 200;
/*26*/ SELECT Nombre FROM Producto 
WHERE Precio > 200 AND codigo_fabricante = 6;
/*27*/ SELECT Nombre FROM Producto 
WHERE codigo_fabricante = 1 OR codigo_fabricante = 3 OR codigo_fabricante = 5;
/*28*/ SELECT Nombre FROM Producto 
WHERE codigo_fabricante IN (1, 3, 5);
/*29*/ SELECT Nombre, Precio * 100 AS céntimos FROM Producto;
/*30*/ SELECT Nombre FROM Fabricante 
WHERE Nombre LIKE 'S%';
/*31*/ SELECT Nombre FROM Fabricante 
WHERE Nombre LIKE '%e';
/*32*/ SELECT Nombre FROM Fabricante
 WHERE Nombre LIKE '%w%';
/*33*/ SELECT Nombre FROM Fabricante 
WHERE LENGTH(Nombre) = 4;
/*34*/ SELECT Nombre FROM Producto 
WHERE Nombre LIKE '%Portátil%';
/*35*/ SELECT Nombre FROM Producto 
WHERE Nombre LIKE '%Monitor%' AND Precio < 215;
/*36*/ SELECT Nombre, Precio FROM Producto 
WHERE Precio >= 180 ORDER BY Precio DESC, Nombre ASC;