FROM debian:bullseye

EXPOSE 443

COPY index.html etc/web/

RUN apt-get update && apt-get install -y sudo && sudo apt-get -y install nginx && apt-get install -y vim && apt-get install -y systemctl

COPY self-signed.crt /etc/ssl/certs/nginx-selfsigned.crt

COPY self-signed.key /etc/ssl/private/

COPY def /etc/nginx/sites-available/default

COPY nginx.conf /etc/nginx/nginx.config

CMD ["nginx", "-g" , "daemon off;"]

# VOLUME [ "/var/www/html/wordpress" ]
