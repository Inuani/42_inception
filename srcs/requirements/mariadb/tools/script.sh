#!/bin/sh

# init Mariadb data directory
if [ ! -d "/var/lib/mysql/mysql" ]; then
    mysql_install_db --user=mysql --datadir=/var/lib/mysql
fi

# start mariadb in the background
mysqld --user=mysql --datadir=/var/lib/mysql &

mysql_pid=$!

# Wait for MariaDB to become available
until mysqladmin -u root -p${MYSQL_ROOT_PASSWORD} ping >/dev/null 2>&1; do
    sleep 1
done

# Run SQL commands
mysql -u root -p${MYSQL_ROOT_PASSWORD} -e "CREATE DATABASE IF NOT EXISTS ${MYSQL_DATABASE};"
mysql -u root -p${MYSQL_ROOT_PASSWORD} -e "CREATE USER IF NOT EXISTS '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';"
mysql -u root -p${MYSQL_ROOT_PASSWORD} -e "GRANT ALL PRIVILEGES ON ${MYSQL_DATABASE}.* TO '${MYSQL_USER}'@'%';"
# mysql -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}' WITH GRANT OPTION;"
mysql -u root -p${MYSQL_ROOT_PASSWORD} -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';"
mysql -u root -p${MYSQL_ROOT_PASSWORD} -e "FLUSH PRIVILEGES;"

kill "$mysql_pid"

# Wait for the MariaDB process to stop completely
wait "$mysql_pid"

# Start MariaDB in the foreground
exec mysqld --user=mysql
