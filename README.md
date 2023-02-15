# Docker (Ubuntu)
```
# Install packages for work with net
sudo apt install net-tools
sudo apt-get -y install apt-transport-https ca-certificates curl software-properties-common
# Install docker and docker-compose
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install docker-ce docker-compose
# Add user in docker group, that do not launch docker with sudo
sudo usermod -aG docker ${USER}
```

# Install extentions
1. Get docker id : `sudo docker ps` 
1. Connect to docker via bash: `sudo docker exec -it id bash`
1. Connect to postgres: `psql -U volokzhanin`
1. Install:
```
# Install extentions
CREATE EXTENSION postgis;
CREATE EXTENSION fuzzystrmatch;
# Preview extentions
\dx
```
# Restore 
1. Delete directory: `sudo rm -rf /mnt/0/postgres/`
1. Restore: `cat /mnt/0/backup/vvy_backup_pg/backup_pg.dump | sudo docker exec -i postgres_pg_db_1 psql -U volokzhanin`

# Insatll [DBeaver](https://en.wikipedia.org/wiki/DBeaver): 
![img](https://dbeaver.io/wp-content/uploads/2015/09/beaver-head.png)<br>
`sudo pacman -S dbeaver` 

## Settings connecting 
`$HOME/.local/share/DBeaverData/workspace6/General/.dbeaver`
