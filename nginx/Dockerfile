FROM debian:latest

EXPOSE 443

COPY index.html etc/web/

RUN apt-get update && apt-get install -y sudo && sudo apt-get -y install nginx && apt-get install -y vim && apt-get install -y systemctl && openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt


COPY def /etc/nginx/sites-available/default

COPY ngi.conf /etc/nginx/nginx.config

CMD ["sleep", "infinity"]
