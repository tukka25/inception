#! /bin/bash
mkdir /run/php
touch /run/php/php7.4-fpm.sock
chmod -R 766 /run/php
chown -R www-data:www-data /run/php
# wp user create $WP_ADMIN example@coolexample.com --role=administrator
php-fpm7.4

#wordpress 172.19.0.2 172.18.0.3
#nginx  172.19.0.3
#mariadb 172.18.0.2