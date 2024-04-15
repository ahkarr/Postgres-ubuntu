-- allow ssh connection
sudo ufw enable
sudo ufw status
sudo ufw allow 22
sudo ufw allow openssh

-- add key
sudo apt install wget ca-certificates

wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'

-- install postgrel

sudo apt get update

sudo apt install postgresql postgresql-contrib

-- check postgrel status

sudo systemctl status postgrel

-- postgrel command line tool

sudo -u postgres psql

-- allow remote access

sudo vim /etc/postgresql/16/main/postgresql.conf

## listen_address = '*'

sudo vim /etc/postgresql/16/main/pg_hba.conf

## IPV4 host all all 0.0.0.0/0 md5

-- restart service

sudo systemctl restart postgrel

## allow port
ss -nlt | grep 5432

sudo ufw enable 5432