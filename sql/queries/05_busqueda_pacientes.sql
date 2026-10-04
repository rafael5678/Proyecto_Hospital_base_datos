-- Consulta parametrizada para búsqueda rápida de pacientes por documento o nombre
SELECT p.id, p.nombre_completo, p.documento, p.telefono, u.correo
FROM pacientes p
JOIN usuarios u ON p.usuario_id = u.id
WHERE p.documento ILIKE '%DOC%'
ORDER BY p.nombre_completo;
