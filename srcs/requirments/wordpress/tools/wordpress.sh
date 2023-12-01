#! /bin/bash
sleep 20
mkdir /run/php
touch /run/php/php7.4-fpm.sock
chmod -R 766 /run/php
chown -R www-data:www-data /run/php
cd /var/www/html/wordpress
wp config create --dbname=$DB_NAME --dbuser=$DB_USER --dbpass=$DB_PASSWORD --dbhost=$DB_HOST --force --config-file=/var/www/html/wordpress/wp-config.php --allow-root
wp core install --url=$URL --title=$WEBSITE_TITLE --admin_user=$AD_USER --admin_password=$AD_PASSWORD --admin_email=$AD_EMAIL --path=/var/www/html/wordpress  --allow-root
wp user create $SEC_USER $SEC_EMAIL --role=author --user_pass=$SEC_PASSWORD --path=/var/www/html/wordpress --allow-root
php-fpm7.4 -F

#wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
# chmod +x wp-cli.phar
# mv wp-cli.phar /usr/local/bin/wp
#wp core download --allow-root