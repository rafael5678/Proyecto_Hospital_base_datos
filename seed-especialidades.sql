-- Default specialty catalog. Matches SpecialtyService.DEFAULTS.
-- Hibernate also inserts these on boot. This script is for a fresh SQL-only database.

INSERT INTO especialidades (nombre) VALUES
    ('Medicina General'),
    ('Cardiología'),
    ('Neurología'),
    ('Dermatología'),
    ('Traumatología'),
    ('Ortopedia'),
    ('Pediatría'),
    ('Ginecología'),
    ('Oftalmología'),
    ('Otorrinolaringología'),
    ('Gastroenterología'),
    ('Endocrinología'),
    ('Urología'),
    ('Psiquiatría'),
    ('Neumología'),
    ('Medicina Interna'),
    ('Reumatología'),
    ('Oncología'),
    ('Nefrología'),
    ('Infectología')
ON CONFLICT (nombre) DO NOTHING;
