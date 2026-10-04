-- Consulta de distribución de pacientes según nivel de prioridad de triage evaluado
SELECT prioridad, COUNT(*) AS cantidad, ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM citas), 2) AS porcentaje
FROM citas
GROUP BY prioridad;
