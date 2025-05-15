UPDATE Producto
SET Precio = Precio - (Precio * 0.03)
WHERE Precio > 0;

CREATE VIEW Precio_Euros AS
SELECT Precio
FROM Producto;

SELECT Precio FROM Precio_Euros;
