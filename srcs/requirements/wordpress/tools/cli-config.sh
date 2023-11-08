#!/bin/bash


sleep 10
if [ ! -f "wp-config.php" ]; then

wp config create --allow-root --dbname=$DATABASE --dbuser=$USER --dbpass=$USER_PASSWORD --dbhost=mariadb:3306 --path="/var/www/wordpress"

wp core install --allow-root --title=$TITLE --url=$URL --admin_user=$ADMIN_USER --admin_password=$ADMIN_PASSWORD --admin_email=$ADMIN_EMAIL 

wp plugin install --allow-root redis-cache --activate

wp config --allow-root set WP_REDIS_HOST redis
wp config --allow-root set WP_REDIS_PASSWORD $REDIS_PASSWORD
wp config --allow-root set WP_REDIS_PORT 6379
wp config --allow-root set WP_CACHE true

wp user create --allow-root testuser testuser@42.fr --role=author --user_pass="23061966"
fi
/usr/sbin/php-fpm7.4 -F -R