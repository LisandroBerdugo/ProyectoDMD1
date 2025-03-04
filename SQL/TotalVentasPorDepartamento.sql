SELECT 
    Departamento,
    COUNT(*) AS Total_Transacciones,
    SUM(Rosas + Claveles + Macetas + Tierra + Girasoles + Hortensia + Globos + Tarjetas +
        Orquideas + Carmesi + Lirios + Aurora + Tulipanes + Liston) AS Total_Productos_Vendidos
FROM Vista_ComprasClientes
GROUP BY Departamento
ORDER BY Total_Productos_Vendidos DESC;
