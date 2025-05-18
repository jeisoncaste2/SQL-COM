/*1.1.5*/
/*1*/SELECT fabr.nombre, prod.nombre 
FROM fabricante AS fabr
LEFT JOIN producto AS prod
ON fabr.codigo = prod.codigo_fabricante;

/*2*/SELECT fabr.nombre, prod.nombre 
FROM fabricante AS fabr
LEFT JOIN producto AS prod
ON fabr.codigo = prod.codigo_fabricante
WHERE prod.codigo_fabricante IS NULL;


