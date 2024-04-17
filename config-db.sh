## load sample database
sudo apt-get install curl

curl -O https://www.postgresqltutorial.com/wp-content/uploads/2019/05/dvdrental.zip

unzip dvdrental.zip

sudo -u postgres psql

CREATE DATABASE dvdrental;

## restore database 
## before restore database, open connection 

sudo vim /etc/postgresql/16/main/pg_hba.conf
# Database administrative login by Unix domain socket
local   all             postgres                               md5

sudo systemctl restart postgrel

## RESTROE DVDRENTAL
pg_restore -U postgres --dbname=dvdrental --verbose dvdrental.tar
