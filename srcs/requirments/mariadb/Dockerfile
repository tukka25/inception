FROM debian:bullseye

EXPOSE 3306

ARG DB_USER DB_NAME DB_PASSWORD

EXPOSE 9000

COPY ./tools/mariacon.sh /usr/bin

RUN	apt-get update && chmod 777 /usr/bin/mariacon.sh &&  apt-get install -y mariadb-server

CMD ["mariacon.sh"]
