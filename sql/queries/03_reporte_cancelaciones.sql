-- Consulta de auditoría: Listado de citas canceladas y motivos registrados
SELECT cc.cita_id, cc.fecha_anterior, cc.hora_anterior, cc.motivo_cambio, cc.modificado_en
FROM cambios_citas cc
ORDER BY cc.modificado_en DESC;
