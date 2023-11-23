FROM debian:bullseye

EXPOSE 3306

ARG DB_USER DB_NAME DB_PASSWORD

EXPOSE 9000

COPY ./tools/mariacon.sh /usr/bin

RUN	apt-get update && apt-get install -y mariadb-server

CMD ["mariacon.sh"]
