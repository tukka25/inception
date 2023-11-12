FROM debian:bullseye

EXPOSE 3306

EXPOSE 9000

RUN apt-get update \
		&& apt-get install sudo wget unzip php php-curl php-fpm php-bcmath php-gd php-soap php-zip php-curl php-mbstring php-mysqlnd php-gd php-xml php-intl php-zip -y \
		&& wget https://wordpress.org/latest.zip \
		&& mkdir /var/www/ \
		&& unzip latest.zip -d /var/www/html/

COPY wp.conf /var/www/html/wordpress/wp-config.php

COPY wordpress.sh /bin/

COPY www.conf /etc/php/7.4/fpm/pool.d/www.conf

RUN wordpress.sh

RUN apt update && php-fpm7.4

CMD ["php-fpm7.4", "-F"]

# VOLUME [ "/var/www/html/wordpress" ]