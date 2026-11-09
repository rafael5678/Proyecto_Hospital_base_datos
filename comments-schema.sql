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
