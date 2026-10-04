# Diccionario: Tabla `usuarios`

Almacena las credenciales y datos básicos de todos los usuarios (pacientes, médicos, administradores).
- id (SERIAL PK): Identificador único.
- correo (VARCHAR UNIQUE): Correo electrónico para acceso.
- password (VARCHAR): Contraseña encriptada con BCrypt.
- rol (VARCHAR): Rol del usuario (PACIENTE, MEDICO, ADMIN).
- activo (BOOLEAN): Estado de habilitación de la cuenta.
