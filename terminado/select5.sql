/*1*/
SELECT prod.nombre
FROM producto AS prod
LEFT JOIN fabricante AS fabr 
ON prod.codigo_fabricante=fabr.codigo
WHERE fabr.nombre="Lenovo";
/*2*/
SELECT prod.nombre
	FROM producto AS prod
LEFT JOIN fabricante AS fabr 
ON prod.codigo_fabricante=fabr.codigo
WHERE prod.precio=(
SELECT MAX(prod.precio)
FROM producto AS prod
LEFT JOIN fabricante AS fabr 
ON prod.codigo_fabricante=fabr.codigo
WHERE fabr.nombre="Lenovo");
/*3*/
SELECT prod.nombre
FROM producto AS prod
JOIN fabricante AS fabr ON prod.codigo_fabricante = fabr.codigo
WHERE fabr.nombre = 'Lenovo'
AND prod.precio = (
SELECT MIN(p.precio)
FROM producto AS p
JOIN fabricante AS f ON p.codigo_fabricante = f.codigo
WHERE f.nombre = 'Lenovo'
);
/*4*/
SELECT prod.nombre
FROM producto AS prod
JOIN fabricante AS fabr ON prod.codigo_fabricante = fabr.codigo
WHERE fabr.nombre = 'Hewlett-Packard'
AND prod.precio = (
SELECT MIN(p.precio)
FROM producto AS p
JOIN fabricante AS f ON p.codigo_fabricante = f.codigo
WHERE f.nombre = 'Hewlett-Packard'
);
/*5*/
SELECT prod.nombre
	FROM producto AS prod
LEFT JOIN fabricante AS fabr 
ON prod.codigo_fabricante=fabr.codigo
WHERE prod.precio>=(
SELECT MAX(prod.precio)
FROM producto AS prod
LEFT JOIN fabricante AS fabr 
ON prod.codigo_fabricante=fabr.codigo
WHERE fabr.nombre="Lenovo");
/*6*/
SELECT prod.nombre
FROM producto AS prod
LEFT JOIN fabricante AS fabr 
ON prod.codigo_fabricante=fabr.codigo
WHERE prod.precio>=(
SELECT AVG(prod.precio)
FROM producto AS prod
LEFT JOIN fabricante AS fabr 
ON prod.codigo_fabricante=fabr.codigo
WHERE fabr.nombre="Lenovo");

SELECT prod.nombre, prod.precio
FROM producto AS prod
WHERE prod.precio >= ALL (
SELECT prod2.precio
FROM producto AS prod2
);

SELECT prod.nombre, prod.precio
FROM producto AS prod
WHERE prod.precio <= ALL (
SELECT prod2.precio
FROM producto AS prod2
);

SELECT fabr.nombre
FROM fabricante AS fabr
WHERE fabr.codigo > ALL (
SELECT prod.codigo_fabricante
FROM producto AS prod
);

SELECT fabr.nombre
FROM fabricante AS fabr
WHERE fabr.codigo IN (
SELECT DISTINCT prod.codigo_fabricante
FROM producto AS prod
);

SELECT fabr.nombre
FROM fabricante AS fabr
WHERE fabr.codigo IN (
SELECT DISTINCT prod.codigo_fabricante
FROM producto AS prod
);

SELECT fabr.nombre
FROM fabricante AS fabr
WHERE EXISTS (
SELECT 1
FROM producto AS prod
WHERE prod.codigo_fabricante = fabr.codigo
);

SELECT fabr.nombre
FROM fabricante AS fabr
WHERE NOT EXISTS (
SELECT 1
FROM producto AS prod
WHERE prod.codigo_fabricante = fabr.codigo
);

SELECT prod.nombre AS producto, prod.precio, fabr.nombre AS fabricante
FROM producto AS prod
JOIN fabricante AS fabr ON prod.codigo_fabricante = fabr.codigo
WHERE prod.precio >= ALL (
    SELECT prod2.precio
    FROM producto AS prod2
    WHERE prod2.codigo_fabricante = prod.codigo_fabricante
);


SELECT prod.nombre AS producto, prod.precio, fabr.nombre AS fabricante
FROM producto AS prod
JOIN fabricante AS fabr ON prod.codigo_fabricante = fabr.codigo
WHERE prod.precio >= (
    SELECT AVG(prod2.precio)
    FROM producto AS prod2
    WHERE prod2.codigo_fabricante = prod.codigo_fabricante
);


SELECT prod.nombre, prod.precio
FROM producto AS prod
JOIN fabricante AS fabr ON prod.codigo_fabricante = fabr.codigo
WHERE fabr.nombre = 'Lenovo'
  AND prod.precio >= ALL (
    SELECT prod2.precio
    FROM producto AS prod2
    JOIN fabricante AS fabr2 ON prod2.codigo_fabricante = fabr2.codigo
    WHERE fabr2.nombre = 'Lenovo'
);

SELECT fabr.nombre
FROM fabricante AS fabr
LEFT JOIN producto AS prod ON fabr.codigo = prod.codigo_fabricante
GROUP BY fabr.codigo, fabr.nombre
HAVING COUNT(prod.codigo) = (
    SELECT COUNT(prod2.codigo)
    FROM producto AS prod2
    JOIN fabricante AS fabr2 ON prod2.codigo_fabricante = fabr2.codigo
    WHERE fabr2.nombre = 'Lenovo'
);
