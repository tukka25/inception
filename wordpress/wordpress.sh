#! /bin/bash
mkdir /run/php
touch /run/php/php7.4-fpm.sock
chmod -R 766 /run/php
chown -R www-data:www-data /run/php
php-fpm7.4