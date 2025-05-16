/*1*/ SELECT p.Nombre AS NombreProducto, p.Precio, f.Nombre AS NombreFabricante 
FROM Producto p INNER JOIN Fabricante f ON p.codigo_fabricante = f.codigo;
/*2*/ SELECT p.Nombre AS NombreProducto, p.Precio, f.Nombre AS NombreFabricante 
FROM Producto p INNER JOIN Fabricante f ON p.codigo_fabricante = f.codigo ORDER BY f.Nombre ASC;
/*3*/ SELECT p.Codigo AS IDProducto, p.Nombre AS NombreProducto, f.codigo AS IDFabricante, f.Nombre AS NombreFabricante 
FROM Producto p INNER JOIN Fabricante f ON p.codigo_fabricante = f.codigo;
/*4*/ SELECT p.Nombre AS NombreProducto, p.Precio, f.Nombre AS NombreFabricante 
FROM Producto p INNER JOIN Fabricante f ON p.codigo_fabricante = f.codigo ORDER BY p.Precio ASC LIMIT 1;
/*5*/ SELECT p.Nombre AS NombreProducto, p.Precio, f.Nombre AS NombreFabricante 
FROM Producto p INNER JOIN Fabricante f ON p.codigo_fabricante = f.codigo ORDER BY p.Precio DESC LIMIT 1;
/*6*/ SELECT p.Nombre AS NombreProducto, p.Precio 
FROM Producto p INNER JOIN Fabricante f ON p.codigo_fabricante = f.codigo WHERE f.Nombre = 'Lenovo';
/*7*/ SELECT p.Nombre AS NombreProducto, p.Precio 
FROM Producto p INNER JOIN Fabricante f ON p.codigo_fabricante = f.codigo WHERE f.Nombre = 'Crucial' AND p.Precio > 200;
/*8*/ SELECT p.Nombre AS NombreProducto, p.Precio, f.Nombre AS NombreFabricante 
FROM Producto p INNER JOIN Fabricante f ON p.codigo_fabricante = f.codigo WHERE f.Nombre = 'Asus' OR f.Nombre = 'Hewlett-Packard' OR f.Nombre = 'Seagate';
/*9*/ SELECT p.Nombre AS NombreProducto, p.Precio, f.Nombre AS NombreFabricante 
FROM Producto p INNER JOIN Fabricante f ON p.codigo_fabricante = f.codigo WHERE f.Nombre IN ('Asus', 'Hewlett-Packard', 'Seagate');
/*10*/ SELECT p.Nombre AS NombreProducto, p.Precio, f.Nombre AS NombreFabricante 
FROM Producto p INNER JOIN Fabricante f ON p.codigo_fabricante = f.codigo WHERE f.Nombre LIKE '%e';
/*11*/ SELECT p.Nombre AS NombreProducto, p.Precio, f.Nombre AS NombreFabricante 
FROM Producto p INNER JOIN Fabricante f ON p.codigo_fabricante = f.codigo WHERE f.Nombre LIKE '%w%';
/*12*/ SELECT p.Nombre AS NombreProducto, p.Precio, f.Nombre AS NombreFabricante 
FROM Producto p INNER JOIN Fabricante f ON p.codigo_fabricante = f.codigo WHERE p.Precio >= 180 ORDER BY p.Precio DESC, p.Nombre ASC;
/*13*/ SELECT DISTINCT f.codigo AS IDFabricante, f.Nombre AS NombreFabricante 
FROM Fabricante f INNER JOIN Producto p ON f.codigo = p.codigo_fabricante;

