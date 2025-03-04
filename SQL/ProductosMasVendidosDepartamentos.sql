WITH Ventas AS (
    SELECT 
        Departamento,
        'Rosas' AS Producto, SUM(Rosas) AS Total_Ventas FROM Vista_ComprasClientes GROUP BY Departamento
    UNION ALL
    SELECT 
        Departamento,
        'Claveles' AS Producto, SUM(Claveles) FROM Vista_ComprasClientes GROUP BY Departamento
    UNION ALL
    SELECT 
        Departamento,
        'Macetas' AS Producto, SUM(Macetas) FROM Vista_ComprasClientes GROUP BY Departamento
    UNION ALL
    SELECT 
        Departamento,
        'Tierra' AS Producto, SUM(Tierra) FROM Vista_ComprasClientes GROUP BY Departamento
    UNION ALL
    SELECT 
        Departamento,
        'Girasoles' AS Producto, SUM(Girasoles) FROM Vista_ComprasClientes GROUP BY Departamento
    UNION ALL
    SELECT 
        Departamento,
        'Hortensia' AS Producto, SUM(Hortensia) FROM Vista_ComprasClientes GROUP BY Departamento
    UNION ALL
    SELECT 
        Departamento,
        'Globos' AS Producto, SUM(Globos) FROM Vista_ComprasClientes GROUP BY Departamento
    UNION ALL
    SELECT 
        Departamento,
        'Tarjetas' AS Producto, SUM(Tarjetas) FROM Vista_ComprasClientes GROUP BY Departamento
    UNION ALL
    SELECT 
        Departamento,
        'Orquideas' AS Producto, SUM(Orquideas) FROM Vista_ComprasClientes GROUP BY Departamento
    UNION ALL
    SELECT 
        Departamento,
        'Carmesi' AS Producto, SUM(Carmesi) FROM Vista_ComprasClientes GROUP BY Departamento
    UNION ALL
    SELECT 
        Departamento,
        'Lirios' AS Producto, SUM(Lirios) FROM Vista_ComprasClientes GROUP BY Departamento
    UNION ALL
    SELECT 
        Departamento,
        'Aurora' AS Producto, SUM(Aurora) FROM Vista_ComprasClientes GROUP BY Departamento
    UNION ALL
    SELECT 
        Departamento,
        'Tulipanes' AS Producto, SUM(Tulipanes) FROM Vista_ComprasClientes GROUP BY Departamento
    UNION ALL
    SELECT 
        Departamento,
        'Liston' AS Producto, SUM(Liston) FROM Vista_ComprasClientes GROUP BY Departamento
)
SELECT Departamento, Producto, Total_Ventas
FROM (
    SELECT *, RANK() OVER (PARTITION BY Departamento ORDER BY Total_Ventas DESC) AS Rango
    FROM Ventas
) AS Ranking
WHERE Rango = 1;
