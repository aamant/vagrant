#! /bin/bash

sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'
sudo apt-get install -y mysql-server-5.5

cat << EOF | sudo tee -a /etc/mysql/conf.d/collation.cnf
[mysqld]
# Version 5.5.3 introduced "utf8mb4", which is recommended
collation-server     = utf8mb4_general_ci # Replaces utf8_general_ci
character-set-server = utf8mb4            # Replaces utf8
EOF