# Diccionario: Tabla `pacientes`

Registra el perfil personal y de salud de los pacientes.
- id (SERIAL PK): Identificador.
- usuario_id (INT FK): Vínculo uno a uno con tabla usuarios.
- nombre_completo (VARCHAR): Nombre del paciente.
- documento (VARCHAR UNIQUE): Documento de identidad.
- telefono (VARCHAR): Teléfono de contacto.
- antecedentes (TEXT): Historial médico previo relevante.
