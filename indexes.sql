-- Indexes for an existing Hospy database. Safe to run more than once.
-- init-schema.sql already creates these on a fresh database.

CREATE INDEX IF NOT EXISTS idx_citas_fecha_hora ON citas (fecha_hora);
CREATE INDEX IF NOT EXISTS idx_citas_estado ON citas (estado);
CREATE INDEX IF NOT EXISTS idx_citas_paciente ON citas (paciente_id);
CREATE INDEX IF NOT EXISTS idx_citas_medico ON citas (medico_id);
CREATE INDEX IF NOT EXISTS idx_notificaciones_usuario ON notificaciones (usuario_id);
CREATE INDEX IF NOT EXISTS idx_notificaciones_leida ON notificaciones (leida);
CREATE INDEX IF NOT EXISTS idx_horarios_medico ON horarios (medico_id);
CREATE INDEX IF NOT EXISTS idx_cambios_cita_cita ON cambios_cita (cita_id);
