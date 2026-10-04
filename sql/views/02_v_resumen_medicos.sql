-- Vista de consolidación de citas por profesional médico
CREATE OR REPLACE VIEW v_resumen_medicos AS
SELECT m.id AS medico_id, m.nombre_completo, m.especialidad, COUNT(c.id) AS total_citas
FROM medicos m
LEFT JOIN citas c ON m.id = c.medico_id
GROUP BY m.id, m.nombre_completo, m.especialidad;
