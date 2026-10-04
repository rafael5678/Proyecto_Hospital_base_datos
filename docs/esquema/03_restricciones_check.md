# Restricciones CHECK en la Base de Datos

Validaciones a nivel de base de datos:
- Estado de cita restringido a valores permitidos ('PENDIENTE', 'CONFIRMADA', 'ATENDIDA', 'CANCELADA').
- Rango horario: hora_inicio < hora_fin en horarios.
- Prioridad restringida a niveles definidos de triage.
