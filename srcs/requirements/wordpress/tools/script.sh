#!/bin/sh

mkdir -p /var/www/html
cd /var/www/html
rm -rf *

# https://wp-cli.org/
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar 
chmod +x wp-cli.phar 
mv wp-cli.phar /usr/local/bin/wp

# https://developer.wordpress.org/cli/commands/core/
wp core download --allow-root
mv /var/www/html/wp-config-sample.php /var/www/html/wp-config.php
mv /wp-config.php /var/www/html/wp-config.php

# change the those lines in wp-config.php file to connect with database
sed -i -r "s/WP_DB_NAME/$MYSQL_DATABASE/1"   wp-config.php
sed -i -r "s/WP_DB_USER/$MYSQL_USER/1"  wp-config.php
sed -i -r "s/WP_DB_PASSWORD/$MYSQL_PASSWORD/1"    wp-config.php
sed -i -r "s/WP_DB_HOST/$WP_DB_HOST/1"    wp-config.php


wp core install --url=$DOMAIN_NAME/ --title=$WP_TITLE --admin_user=$WP_ADMIN_USER --admin_password=$WP_ADMIN_PWD --admin_email=$WP_ADMIN_EMAIL --skip-email --allow-root
wp user create $WP_USER $WP_USER_EMAIL --role=author --user_pass=$WP_USER_PWD --allow-root
wp theme install astra --activate --allow-root
# wp plugin install redis-cache --activate --allow-root
wp plugin update --all --allow-root
sed -i 's/listen = \/run\/php\/php8-fpm.sock/listen = 9000/g' /etc/php8/php-fpm.d/www.conf
mkdir /run/php
#wp redis enable --allow-root
/usr/sbin/php-fpm8 -F