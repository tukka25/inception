FROM debian:bullseye

EXPOSE 443

COPY index.html etc/web/

RUN apt-get update && apt-get -y install nginx

COPY self-signed.crt /etc/ssl/certs/nginx-selfsigned.crt

COPY self-signed.key /etc/ssl/private/

COPY def /etc/nginx/sites-available/default

COPY nginx.conf /etc/nginx/nginx.config

CMD ["nginx", "-g" , "daemon off;"]

# VOLUME [ "/var/www/html/wordpress" ]
