# Diccionario: Tabla `horarios`

Define los bloques de atención configurados por cada médico.
- id (SERIAL PK): Identificador del bloque.
- medico_id (INT FK): Médico propietario del horario.
- dia_semana (VARCHAR): Día de la semana (LUNES a DOMINGO).
- hora_inicio (TIME): Hora de inicio de disponibilidad.
- hora_fin (TIME): Hora de finalización.
- activo (BOOLEAN): Indica si la franja está disponible para agendar.
