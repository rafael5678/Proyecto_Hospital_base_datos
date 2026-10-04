# Diccionario: Tabla `medicos`

Registra a los profesionales de la salud adscritos al hospital.
- id (SERIAL PK): Identificador.
- usuario_id (INT FK): Vínculo uno a uno con tabla usuarios.
- nombre_completo (VARCHAR): Nombre del facultativo.
- especialidad (VARCHAR): Especialidad médica (Medicina General, Dermatología, etc.).
- tarjeta_profesional (VARCHAR): Matrícula médica oficial.
