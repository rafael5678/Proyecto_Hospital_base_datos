-- Table comments for the Hospy PostgreSQL model.
-- Safe to run more than once.

COMMENT ON TABLE usuarios IS 'Login accounts. Role decides which portal opens.';
COMMENT ON TABLE pacientes IS 'Patient profile linked to one usuarios row.';
COMMENT ON TABLE medicos IS 'Doctor profile linked to one usuarios row.';
COMMENT ON TABLE administradores IS 'Admin profile. Not stored inside pacientes.';
COMMENT ON TABLE especialidades IS 'Hospital specialty catalog used by Registro Hospy and doctor forms.';
COMMENT ON TABLE horarios IS 'Weekly work windows for each doctor.';
COMMENT ON TABLE citas IS 'Appointments. fecha_hora is Colombia wall clock.';
COMMENT ON TABLE cambios_cita IS 'Reschedule history and which emails already went out.';
COMMENT ON TABLE notificaciones IS 'In-app bell notices for a user.';

COMMENT ON COLUMN usuarios.clave_cifrada IS 'Admin-readable encrypted copy. Login still uses BCrypt password.';
COMMENT ON COLUMN citas.fecha_hora IS 'Colombia wall clock of the booked slot, not UTC Instant.';
COMMENT ON COLUMN citas.concluida_en IS 'Colombia clock of when the visit was actually finished.';
COMMENT ON COLUMN citas.receta IS 'Prescription text sent by the doctor.';
COMMENT ON COLUMN citas.estado IS 'PENDIENTE, ACEPTADA, RECHAZADA, CANCELADA, or COMPLETADA.';
COMMENT ON COLUMN notificaciones.mensaje IS 'Notice body. Up to 4000 characters.';
COMMENT ON COLUMN usuarios.id IS 'Primary key of the login account.';
COMMENT ON COLUMN usuarios.nombre IS 'Display name shown in portals and lists.';
COMMENT ON COLUMN usuarios.email IS 'Unique login identifier. Also used as username.';
COMMENT ON COLUMN usuarios.password IS 'BCrypt hash used by login. Not the admin-readable copy.';
COMMENT ON COLUMN usuarios.rol IS 'PACIENTE, MEDICO, or ADMIN. Decides which portal opens.';
COMMENT ON COLUMN usuarios.telefono IS 'Optional Colombian phone, 10 digits when present.';
COMMENT ON COLUMN usuarios.activo IS 'False hides the account from login without deleting it.';
