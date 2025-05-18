/*1.1.6*/
/*1*/
SELECT COUNT(*) AS producto
FROM producto;
/*2*/
SELECT COUNT(*) AS fabricante
FROM fabricante;
/*3*/
SELECT COUNT(DISTINCT codigo_fabricante) AS fabricante
FROM producto
WHERE codigo_fabricante IS NOT NULL;
/*4*/
SELECT AVG(precio) AS precio
FROM producto;
/*5*/
SELECT precio 
FROM producto
ORDER BY precio ASC LIMIT 1;
/*6*/
SELECT precio 
FROM producto
ORDER BY precio DESC LIMIT 1;
/*7*/
SELECT nombre, precio FROM producto 
ORDER BY precio ASC LIMIT 1; 
/*8*/
SELECT nombre, precio 
FROM producto 
ORDER BY precio DESC LIMIT 1;
/*9*/
SELECT SUM(precio) 
FROM producto;
/*10*/
SELECT COUNT(prod.nombre) AS producto
FROM producto AS prod
INNER JOIN  fabricante AS fabr
ON fabr.codigo = prod.codigo_fabricante
WHERE fabr.nombre ="Asus";
 /*11*/
SELECT AVG (prod.precio) AS producto
FROM producto AS prod
INNER JOIN  fabricante AS fabr
ON fabr.codigo = prod.codigo_fabricante
WHERE fabr.nombre ="Asus";
/*12*/
SELECT prod.precio AS producto
FROM producto AS prod
INNER JOIN  fabricante AS fabr
ON fabr.codigo = prod.codigo_fabricante
WHERE fabr.nombre ="Asus" ORDER BY precio ASC LIMIT 1; 
/*13*/
SELECT prod.precio AS producto
FROM producto AS prod
INNER JOIN  fabricante AS fabr
ON fabr.codigo = prod.codigo_fabricante
WHERE fabr.nombre ="Asus" ORDER BY precio DESC LIMIT 1; 
/*14*/
SELECT SUM(prod.codigo_fabricante) AS nombre 
FROM producto AS prod
INNER JOIN fabricante AS fabr
ON prod.codigo_fabricante=fabr.codigo
WHERE fabr.nombre ="Asus" ;
/*15*/
SELECT AVG(prod.precio),MIN(prod.precio),MAX(prod.precio),COUNT(prod.codigo_fabricante) AS nombre 
FROM producto AS prod
INNER JOIN fabricante AS fabr
ON prod.codigo_fabricante=fabr.codigo
WHERE fabr.nombre ="Crucial" ;
/*16*/

SELECT fabr.nombre,COUNT(prod.codigo_fabricante)
FROM producto AS prod
RIGHT JOIN fabricante AS fabr 
ON prod.codigo_fabricante = fabr.codigo
GROUP BY fabr.nombre,fabr.codigo
ORDER BY prod.codigo_fabricante DESC; 
/*17*/

SELECT AVG(prod.precio) AS precioMed,MIN(prod.precio) AS precioMin,MAX(prod.precio) AS precioMax,fabr.nombre
FROM producto AS prod
LEFT JOIN fabricante AS fabr
ON prod.codigo_fabricante=fabr.codigo 
GROUP BY  fabr.nombre,prod.codigo_fabricante;
/*18*/

SELECT fabr.codigo AS codigo,AVG(prod.precio) AS precioMed,MIN(prod.precio) AS precioMin,MAX(prod.precio) AS precioMax,COUNT(prod.codigo) AS total_productos
FROM fabricante AS fabr 
LEFT JOIN producto AS prod 
ON fabr.codigo = prod.codigo_fabricante
GROUP BY fabr.codigo, fabr.codigo
HAVING AVG(prod.precio) > 200;
/*19*/
SELECT fabr.nombre AS codigo,AVG(prod.precio) AS precioMed,MIN(prod.precio) AS precioMin,MAX(prod.precio) AS precioMax,COUNT(prod.codigo) AS total_productos
FROM fabricante AS fabr 
LEFT JOIN producto AS prod 
ON fabr.codigo = prod.codigo_fabricante
GROUP BY fabr.nombre, fabr.codigo
HAVING AVG(prod.precio) > 200;
/*20*/
SELECT COUNT(nombre) 
FROM producto
WHERE precio>= 180;
/*21*/
SELECT fabr.nombre,COUNT(prod.codigo_fabricante)
FROM producto AS prod
INNER JOIN fabricante AS fabr
ON fabr.codigo=prod.codigo_fabricante
WHERE precio>= 180
GROUP BY fabr.nombre, fabr.codigo;
/*22*/
SELECT fabr.codigo,AVG(prod.precio)
FROM producto AS prod 
INNER JOIN fabricante AS fabr
ON prod.codigo_fabricante=fabr.codigo
GROUP BY fabr.codigo, fabr.codigo; 
/*23*/
SELECT fabr.nombre,AVG(prod.precio)
FROM producto AS prod 
INNER JOIN fabricante AS fabr
ON prod.codigo_fabricante=fabr.codigo
GROUP BY fabr.nombre, fabr.codigo; 
/*24*/

SELECT fabr.nombre,AVG(prod.precio)
FROM producto AS prod 
INNER JOIN fabricante AS fabr
ON prod.codigo_fabricante=fabr.codigo
GROUP BY fabr.nombre, fabr.codigo 
HAVING AVG(prod.precio)>=150;	
/*25*/
SELECT fabr.nombre
FROM producto AS prod 
INNER JOIN fabricante AS fabr
ON prod.codigo_fabricante=fabr.codigo
GROUP BY fabr.nombre, fabr.codigo 
HAVING COUNT(prod.nombre)>=2;
/*26*/
SELECT fabr.nombre,COUNT(prod.nombre)
FROM producto AS prod 
INNER JOIN fabricante AS fabr
ON prod.codigo_fabricante=fabr.codigo
WHERE precio>=220
GROUP BY fabr.nombre, fabr.codigo;
/*27*/
SELECT fabr.nombre ,IFNULL(SUM(CASE WHEN prod.precio >= 220 THEN 1 ELSE 0 END), 0) AS productos250
FROM fabricante AS fabr
LEFT JOIN producto AS prod ON fabr.codigo = prod.codigo_fabricante
GROUP BY fabr.codigo, fabr.nombre;
/*28*/
SELECT fabr.nombre 
FROM fabricante AS fabr
INNER JOIN producto AS prod ON fabr.codigo = prod.codigo_fabricante
GROUP BY fabr.codigo, fabr.nombre
HAVING SUM(prod.precio)>1000;
/*29*/
SELECT prod.nombre,MAX(prod.precio), fabr.nombre 
FROM producto AS prod 
LEFT JOIN fabricante AS fabr
ON fabr.codigo =prod.codigo_fabricante
GROUP BY fabr.codigo ,prod.codigo_fabricante
ORDER BY MAX(prod.precio) ASC


