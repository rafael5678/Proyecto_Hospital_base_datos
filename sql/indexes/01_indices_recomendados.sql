-- Índices recomendados para acelerar las consultas transaccionales frecuentes
CREATE INDEX IF NOT EXISTS idx_citas_fecha_estado ON citas (fecha, estado);
CREATE INDEX IF NOT EXISTS idx_citas_prioridad ON citas (prioridad);
CREATE INDEX IF NOT EXISTS idx_horarios_medico_dia ON horarios (medico_id, dia_semana);
