-- Índices para optimizar búsquedas en tabla de auditoría
CREATE INDEX IF NOT EXISTS idx_cambios_cita_id ON cambios_citas (cita_id);
CREATE INDEX IF NOT EXISTS idx_cambios_modificado ON cambios_citas (modificado_en DESC);
