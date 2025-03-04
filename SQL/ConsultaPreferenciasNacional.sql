SELECT 
    'Rosas' AS Producto, SUM(Rosas) AS Total_Ventas FROM Vista_ComprasClientes
UNION ALL
SELECT 
    'Claveles', SUM(Claveles) FROM Vista_ComprasClientes
UNION ALL
SELECT 
    'Macetas', SUM(Macetas) FROM Vista_ComprasClientes
UNION ALL
SELECT 
    'Tierra', SUM(Tierra) FROM Vista_ComprasClientes
UNION ALL
SELECT 
    'Girasoles', SUM(Girasoles) FROM Vista_ComprasClientes
UNION ALL
SELECT 
    'Hortensia', SUM(Hortensia) FROM Vista_ComprasClientes
UNION ALL
SELECT 
    'Globos', SUM(Globos) FROM Vista_ComprasClientes
UNION ALL
SELECT 
    'Tarjetas', SUM(Tarjetas) FROM Vista_ComprasClientes
UNION ALL
SELECT 
    'Orquideas', SUM(Orquideas) FROM Vista_ComprasClientes
UNION ALL
SELECT 
    'Carmesi', SUM(Carmesi) FROM Vista_ComprasClientes
UNION ALL
SELECT 
    'Lirios', SUM(Lirios) FROM Vista_ComprasClientes
UNION ALL
SELECT 
    'Aurora', SUM(Aurora) FROM Vista_ComprasClientes
UNION ALL
SELECT 
    'Tulipanes', SUM(Tulipanes) FROM Vista_ComprasClientes
UNION ALL
SELECT 
    'Liston', SUM(Liston) FROM Vista_ComprasClientes
ORDER BY Total_Ventas DESC;
