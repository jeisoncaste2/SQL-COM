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


