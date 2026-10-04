# Diccionario: Tabla `citas`

Entidad de transacciones principales para consultas médicas.
- id (SERIAL PK): Identificador de la cita.
- paciente_id (INT FK): Paciente solicitante.
- medico_id (INT FK): Médico asignado.
- fecha (DATE): Fecha programada de la consulta.
- hora (TIME): Hora programada.
- estado (VARCHAR): PENDIENTE, CONFIRMADA, ATENDIDA, CANCELADA.
- motivo (TEXT): Motivo de consulta manifestado por el paciente.
- prioridad (VARCHAR): Nivel de urgencia evaluado por el triaje (ALTA, MEDIA, BAJA).
