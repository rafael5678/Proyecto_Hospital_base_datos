-- Consulta optimizada: Citas programadas para el día actual ordenadas por prioridad
SELECT c.id, p.nombre_completo, c.hora, c.prioridad, c.motivo
FROM citas c
JOIN pacientes p ON c.paciente_id = p.id
WHERE c.fecha = CURRENT_DATE AND c.estado = 'PENDIENTE'
ORDER BY CASE WHEN c.prioridad = 'ALTA' THEN 1 WHEN c.prioridad = 'MEDIA' THEN 2 ELSE 3 END, c.hora;
