-- Vista de trazabilidad completa de citas y sus cambios históricos
CREATE OR REPLACE VIEW v_trazabilidad_citas AS
SELECT c.id, c.fecha, c.hora, c.estado, cc.motivo_cambio, cc.modificado_en
FROM citas c
LEFT JOIN cambios_citas cc ON c.id = cc.cita_id;
