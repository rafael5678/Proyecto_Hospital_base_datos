-- Vista para consultar citas pendientes con detalle del paciente y prioridad de triaje
CREATE OR REPLACE VIEW v_citas_pendientes AS
SELECT c.id AS cita_id, p.nombre_completo AS paciente, m.nombre_completo AS medico, m.especialidad, c.fecha, c.hora, c.prioridad
FROM citas c
JOIN pacientes p ON c.paciente_id = p.id
JOIN medicos m ON c.medico_id = m.id
WHERE c.estado = 'PENDIENTE';
