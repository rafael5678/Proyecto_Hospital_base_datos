# Automatización de Respaldos con Cron

```bash
0 2 * * * pg_dump -U postgres -d hospital_db > /backups/db_$(date +%Y%m%d).sql
```
