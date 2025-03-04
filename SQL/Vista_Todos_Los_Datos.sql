CREATE OR ALTER VIEW Vista_ComprasClientes AS
SELECT *, 'San Miguel' AS Departamento FROM ComprasClientesSanMiguel
UNION ALL
SELECT *, 'San Salvador' AS Departamento FROM ComprasClientesSanSalvador
UNION ALL
SELECT *, 'Santa Ana' AS Departamento FROM ComprasClientesSantaAna;

