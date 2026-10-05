-- Consulta de pacientes con mayor número de citas agendadas
SELECT p.nombre_completo, COUNT(c.id) AS total_consultas
FROM pacientes p
JOIN citas c ON p.id = c.paciente_id
GROUP BY p.id, p.nombre_completo
ORDER BY total_consultas DESC LIMIT 10;
