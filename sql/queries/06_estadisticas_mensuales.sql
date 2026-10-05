-- Conteo de citas por mes y estado
SELECT DATE_TRUNC('month', fecha) AS mes, estado, COUNT(*) AS total
FROM citas
GROUP BY mes, estado
ORDER BY mes DESC;
