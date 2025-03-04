SELECT 
    Departamento,
    SUM(Rosas) AS Total_Rosas,
    SUM(Claveles) AS Total_Claveles,
    SUM(Macetas) AS Total_Macetas,
    SUM(Tierra) AS Total_Tierra,
    SUM(Girasoles) AS Total_Girasoles,
    SUM(Hortensia) AS Total_Hortensia,
    SUM(Globos) AS Total_Globos,
    SUM(Tarjetas) AS Total_Tarjetas,
    SUM(Orquideas) AS Total_Orquideas,
    SUM(Carmesi) AS Total_Carmesi,
    SUM(Lirios) AS Total_Lirios,
    SUM(Aurora) AS Total_Aurora,
    SUM(Tulipanes) AS Total_Tulipanes,
    SUM(Liston) AS Total_Liston
FROM Vista_ComprasClientes
GROUP BY Departamento
ORDER BY Total_Rosas DESC;
