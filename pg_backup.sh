#!/bin/bash

# Делаем backup
docker exec postgres_pg_db_1 pg_dump -U volokzhanin volokzhanin > /mnt/0/backup/vvy_backup_pg/backup_pg`date +%Y-%m-%d`.dump
# Удаляем архивы резервной копии старше n дней
find /mnt/0/backup/vvy_backup_pg/ -mtime +3 -type f -delete

