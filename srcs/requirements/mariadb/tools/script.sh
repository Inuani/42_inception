#!/bin/bash

# init Mariadb data directory
mysql_install_db --user=mysql --ldata=/var/lib/mysql

# start mariadb in the background
mysqld --user=mysql 

# Wait for MariaDB to become available
mysqladmin --wait=30 ping >/dev/null 2>&1

# Run SQL commands
mysql -e "CREATE DATABASE IF NOT EXISTS ${MYSQL_DATABASE};"
mysql -e "CREATE USER IF NOT EXISTS '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';"
mysql -e "GRANT ALL PRIVILEGES ON ${MYSQL_DATABASE}.* TO '${MYSQL_USER}'@'%';"
# mysql -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}' WITH GRANT OPTION;"
mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';"
mysql -e "FLUSH PRIVILEGES;"

# Start MariaDB in the foreground
exec mysqld --user=mysql