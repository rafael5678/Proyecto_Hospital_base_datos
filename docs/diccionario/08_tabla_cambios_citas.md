# Diccionario: Tabla `cambios_citas`

Tabla de auditoría para registro histórico de reprogramaciones y cancelaciones.
- id (SERIAL PK): Identificador del registro.
- cita_id (INT FK): Cita afectada.
- fecha_anterior / hora_anterior: Datos previos al cambio.
- fecha_nueva / hora_nueva: Nuevos datos acordados.
- motivo_cambio (TEXT): Justificación del cambio o cancelación.
- modificado_en (TIMESTAMP): Fecha y hora exacta de la modificación.
