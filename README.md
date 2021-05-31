## Устанавливаем docker

`sudo pacman -Syu`

`sudo pacman -S docker`

Устанавливаем docker compose: `sudo pacman -S docker-compose`
# Устанавливаем расширения необходимые
1. Смотрим id docker: `sudo docker ps` 
1. Подключаемся к docker чеерз bash: `sudo docker exec -it id bash`
1. Подключаемся к postgres: `psql -U volokzhanin`
1. Устанавливаем:
```
# Устанавливаем необходимые расширения
CREATE EXTENSION postgis;
CREATE EXTENSION fuzzystrmatch;
# Просмотр установленных расширений
\dx
```
# Восстанавливаемся из backup 
1. Удаляем папку, так как записи могу задваиваться: `sudo rm -rf /mnt/0/postgres/`
1. Восстанавливаемся: `cat /mnt/0/backup/vvy_backup_pg/backup_pg.dump | sudo docker exec -i postgres_pg_db_1 psql -U volokzhanin`

# Устанавливаем клиент [DBeaver](https://en.wikipedia.org/wiki/DBeaver) для работы с базами данных: 
![картинка](https://dbeaver.io/wp-content/uploads/2015/09/beaver-head.png)<br>
`sudo pacman -S dbeaver` 

## Настройки подключения 
$HOME/.local/share/DBeaverData/workspace6/General/.dbeaver

# Переменные окружения
```
sudo nano ~/.bashrc
# Задаем переменные 
source ~/.bashrc
```
