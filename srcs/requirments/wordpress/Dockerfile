FROM debian:bullseye

EXPOSE 9000

COPY ./tools/wordpress.sh /bin/

RUN apt-get update \
		&& apt-get install wget unzip php php-curl php-fpm php-bcmath php-gd php-soap php-zip php-curl php-mbstring php-mysqlnd php-gd php-xml php-intl php-zip -y \
		&& wget https://wordpress.org/latest.zip \
		&& mkdir /var/www/ \
		&& unzip latest.zip -d /var/www/html/ \
		&& wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
		&&	chmod +x wp-cli.phar \
		&&	mv wp-cli.phar /usr/local/bin/wp \
		&& wp core download --allow-root \
		&& chmod 777 /bin/wordpress.sh

COPY ./conf/www.conf /etc/php/7.4/fpm/pool.d/www.conf

CMD ["wordpress.sh"]