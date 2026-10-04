-- Consulta de franjas horarias configuradas por cada profesional médico
SELECT m.nombre_completo, m.especialidad, h.dia_semana, h.hora_inicio, h.hora_fin
FROM horarios h
JOIN medicos m ON h.medico_id = m.id
WHERE h.activo = true
ORDER BY m.nombre_completo, h.dia_semana;
