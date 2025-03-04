SELECT TOP 10 
    Nombre, 
    Departamento, 
    COUNT(*) AS Total_Compras
FROM Vista_ComprasClientes
GROUP BY Nombre, Departamento
ORDER BY Total_Compras DESC;
