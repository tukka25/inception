FROM debian:bullseye

EXPOSE 3306

EXPOSE 9000

COPY mariacon.sh /usr/bin

RUN	apt-get update && apt-get install -y systemctl && apt-get install -y mariadb-server

CMD ["mariacon.sh"]
