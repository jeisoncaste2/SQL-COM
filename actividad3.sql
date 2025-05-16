/*1*/ SELECT f.Nombre AS NombreFabricante, p.Nombre AS NombreProducto 
FROM Producto p RIGHT JOIN Fabricante f ON f.codigo = p.codigo_fabricante;
/*2*/ SELECT f.Nombre AS NombreFabricante 
FROM Fabricante f LEFT JOIN Producto p ON f.codigo = p.codigo_fabricante WHERE p.Codigo IS NULL;

