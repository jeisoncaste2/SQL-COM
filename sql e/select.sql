/*1*/SELECT nombre FROM producto;
/*2*/SELECT nombre,precio FROM producto;
/*3*/SELECT * FROM producto;
/*4*/SELECT nombre, 
precio,
precio * 0.90 AS precio
FROM producto;
/*5*/SELECT nombre AS `nombre de producto`,
precio AS euros,
precio * 0.90 AS dólares
FROM producto;
/*6*/ SELECT UPPER(nombre) AS nombre, precio 
FROM producto;
/*7*/ SELECT LOWER(nombre) AS nombre, precio 
FROM producto;
/*8*/ SELECT nombre, UPPER(SUBSTRING(nombre, 1, 2)) AS nombre
FROM fabricante;
/*9*/ SELECT nombre, ROUND(precio) AS precio 
FROM producto;
/*10*/ SELECT nombre, TRUNCATE(precio, 0) AS precio 
FROM producto;
/*11*/ SELECT  codigo_fabricante 
FROM producto;
/*12*/ SELECT DISTINCT codigo_fabricante 
FROM producto;
/*13*/ SELECT nombre 
FROM fabricante ORDER BY nombre ASC;
/*14*/ SELECT nombre
 FROM fabricante ORDER BY nombre DESC;
/*15*/ SELECT nombre FROM producto ORDER BY nombre ASC;
SELECT  precio FROM producto ORDER BY precio DESC;
/*16*/ SELECT * 
FROM fabricante LIMIT 5;
/*17*/ SELECT * FROM fabricante LIMIT 3 OFFSET 3;
/*18*/ SELECT nombre, precio 
FROM producto ORDER BY precio ASC LIMIT 1;
/*19*/ SELECT nombre, precio 
FROM producto ORDER BY precio DESC LIMIT 1;
/*20*/ SELECT nombre FROM producto 
WHERE codigo_fabricante = 2;
/*21*/ SELECT nombre FROM producto 
WHERE precio <= 120;
/*22*/ SELECT nombre FROM producto 
WHERE precio >= 400;
/*23*/ SELECT nombre FROM producto 
WHERE NOT precio >= 400;
/*24*/ SELECT nombre FROM producto 
WHERE precio > 80 AND precio < 300;
/*25*/ SELECT nombre FROM producto 
WHERE precio BETWEEN 60 AND 200;
/*26*/ SELECT nombre FROM producto 
WHERE precio > 200 AND codigo_fabricante = 6;
/*27*/ SELECT nombre FROM producto 
WHERE codigo_fabricante = 1 OR codigo_fabricante = 3 OR codigo_fabricante = 5;
/*28*/ SELECT nombre FROM producto 
WHERE codigo_fabricante IN (1, 3, 5);
/*29*/ SELECT nombre, precio * 100 AS céntimos FROM producto;
/*30*/ SELECT nombre FROM fabricante 
WHERE nombre LIKE 'S%';
/*31*/ SELECT nombre FROM fabricante 
WHERE nombre LIKE '%e';
/*32*/ SELECT nombre FROM fabricante
 WHERE nombre LIKE '%w%';
/*33*/ SELECT nombre FROM fabricante 
WHERE LENGTH(nombre) = 4;
/*34*/ SELECT nombre FROM producto 
WHERE nombre LIKE '%Portátil%';
/*35*/ SELECT nombre FROM producto 
WHERE nombre LIKE '%Monitor%' AND precio < 215;
/*36*/ SELECT nombre, precio FROM producto 
WHERE precio >= 180 ORDER BY precio DESC, nombre ASC;
/*1.1.4*/
/*1*/
SELECT prod.nombre, prod.precio, fabr.nombre
FROM producto AS prod
INNER JOIN fabricante AS fabr
ON prod.codigo_fabricante = fabr.codigo;
/*2*/
SELECT prod.nombre, prod.precio, fabr.nombre
FROM producto AS prod
INNER JOIN fabricante AS fabr
ON prod.codigo_fabricante = fabr.codigo
ORDER BY fabr.nombre ASC;
/*3*/
SELECT  prod.codigo,prod.nombre,fabr.codigo,fabr.nombre
FROM producto AS prod
INNER JOIN fabricante AS fabr
ON prod.codigo_fabricante  = fabr.codigo;
/*4*/
SELECT prod.nombre,prod.precio,fabr.nombre 
FROM producto AS prod
INNER JOIN fabricante AS fabr
ON prod.codigo_fabricante= fabr.codigo
ORDER BY precio ASC LIMIT 1;
/*5*/
SELECT prod.nombre,prod.precio,fabr.nombre 
FROM producto AS prod
INNER JOIN fabricante AS fabr
ON prod.codigo_fabricante= fabr.codigo
ORDER BY precio DESC LIMIT 1;
/*6*/
SELECT prod.nombre 
FROM producto AS prod
INNER JOIN fabricante AS fabr
ON prod.codigo_fabricante= fabr.codigo
WHERE fabr.nombre="Lenovo";
/*7*/
SELECT prod.nombre 
FROM producto AS prod
INNER JOIN fabricante AS fabr
ON prod.codigo_fabricante= fabr.codigo
WHERE fabr.nombre="Crucial" AND prod.precio>200;
/*8*/
SELECT prod.nombre 
FROM producto AS prod
INNER JOIN fabricante AS fabr
ON prod.codigo_fabricante= fabr.codigo
WHERE fabr.nombre="Asus" OR fabr.nombre="Hewlett-Packard" OR fabr.nombre="Seagate";
/*9*/
SELECT prod.nombre 
FROM producto AS prod
INNER JOIN fabricante AS fabr
ON prod.codigo_fabricante= fabr.codigo
WHERE fabr.nombre IN("Asus" ,"Hewlett-Packard","Seagate");
/*10*/
SELECT prod.nombre,prod.precio 
FROM producto AS prod
INNER JOIN fabricante AS fabr
ON prod.codigo_fabricante= fabr.codigo
WHERE fabr.nombre like "%e";
/*11*/
SELECT prod.nombre,prod.precio 
FROM producto AS prod
INNER JOIN fabricante AS fabr
ON prod.codigo_fabricante= fabr.codigo
WHERE fabr.nombre like "%w%";
/*12*/
SELECT prod.nombre,prod.precio,fabr.nombre
FROM producto AS prod 
INNER JOIN fabricante AS fabr
ON prod.codigo_fabricante=fabr.codigo
WHERE prod.precio>=180 ORDER BY prod.precio DESC;

SELECT prod.nombre,prod.precio,fabr.nombre
FROM producto AS prod 
INNER JOIN fabricante AS fabr
ON prod.codigo_fabricante=fabr.codigo
WHERE prod.precio>=180 ORDER BY prod.nombre ASC;
/*13*/
SELECT DISTINCT fabr.codigo, fabr.nombre
FROM fabricante AS fabr
INNER JOIN producto AS prod
ON prod.codigo_fabricante=fabr.codigo
WHERE prod.codigo_fabricante=fabr.codigo;


