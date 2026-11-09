-- Bring an older Hospy database in line with the live JPA model.
-- Hibernate ddl-auto=update usually does this. Use this when applying SQL by hand.

ALTER TABLE usuarios ADD COLUMN IF NOT EXISTS clave_cifrada VARCHAR(500);

ALTER TABLE citas ADD COLUMN IF NOT EXISTS receta TEXT;
ALTER TABLE citas ADD COLUMN IF NOT EXISTS concluida_en TIMESTAMP;

ALTER TABLE notificaciones ALTER COLUMN titulo TYPE VARCHAR(160);
ALTER TABLE notificaciones ALTER COLUMN mensaje TYPE VARCHAR(4000);
