WITH ProductosComprados AS (
    -- Convertimos cada compra en filas individuales con cada producto comprado
    SELECT Nombre, 'Rosas' AS Producto FROM Vista_ComprasClientes WHERE Rosas = 1
    UNION ALL
    SELECT Nombre, 'Claveles' FROM Vista_ComprasClientes WHERE Claveles = 1
    UNION ALL
    SELECT Nombre, 'Macetas' FROM Vista_ComprasClientes WHERE Macetas = 1
    UNION ALL
    SELECT Nombre, 'Tierra' FROM Vista_ComprasClientes WHERE Tierra = 1
    UNION ALL
    SELECT Nombre, 'Girasoles' FROM Vista_ComprasClientes WHERE Girasoles = 1
    UNION ALL
    SELECT Nombre, 'Hortensia' FROM Vista_ComprasClientes WHERE Hortensia = 1
    UNION ALL
    SELECT Nombre, 'Globos' FROM Vista_ComprasClientes WHERE Globos = 1
    UNION ALL
    SELECT Nombre, 'Tarjetas' FROM Vista_ComprasClientes WHERE Tarjetas = 1
    UNION ALL
    SELECT Nombre, 'Orquideas' FROM Vista_ComprasClientes WHERE Orquideas = 1
    UNION ALL
    SELECT Nombre, 'Carmesi' FROM Vista_ComprasClientes WHERE Carmesi = 1
    UNION ALL
    SELECT Nombre, 'Lirios' FROM Vista_ComprasClientes WHERE Lirios = 1
    UNION ALL
    SELECT Nombre, 'Aurora' FROM Vista_ComprasClientes WHERE Aurora = 1
    UNION ALL
    SELECT Nombre, 'Tulipanes' FROM Vista_ComprasClientes WHERE Tulipanes = 1
    UNION ALL
    SELECT Nombre, 'Liston' FROM Vista_ComprasClientes WHERE Liston = 1
)

-- Contamos cuántas veces tres productos aparecen juntos en la misma compra
SELECT P1.Producto AS Producto1, P2.Producto AS Producto2, P3.Producto AS Producto3, COUNT(*) AS Frecuencia
FROM ProductosComprados P1
JOIN ProductosComprados P2 ON P1.Nombre = P2.Nombre AND P1.Producto < P2.Producto
JOIN ProductosComprados P3 ON P1.Nombre = P3.Nombre AND P2.Producto < P3.Producto
GROUP BY P1.Producto, P2.Producto, P3.Producto
ORDER BY Frecuencia DESC;
