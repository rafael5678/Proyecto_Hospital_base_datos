# Hospy schema

PostgreSQL 16. Live Render uses Hibernate `ddl-auto=update`. This folder is the course copy of that model.

## Tables

| Table | Purpose |
|---|---|
| `usuarios` | Login. Roles: PACIENTE, MEDICO, ADMIN. |
| `pacientes` | Patient profile. One row per user. |
| `medicos` | Doctor profile plus specialty and license. |
| `administradores` | Admin profile. Look here, not in `pacientes`. |
| `especialidades` | Specialty catalog for chat and doctor forms. |
| `horarios` | Weekly work windows. |
| `citas` | Visits. `fecha_hora` is Colombia wall clock. `concluida_en` is when the visit actually finished. |
| `cambios_cita` | Reschedule history. |
| `notificaciones` | Bell notices. `mensaje` is up to 4000 characters. |

## Scripts

1. `init-schema.sql` — create tables and indexes.
2. `migrate-live-columns.sql` — add columns that older copies were missing.
3. `indexes.sql` — the same indexes for a database that already exists.
4. `seed-especialidades.sql` — default specialty names.
5. `comments-schema.sql` — table comments for DBeaver.
6. `completar-datos-demo.sql` — fill demo profiles and readable views.

Do not commit passwords. Credentials stay in the Render panel.
