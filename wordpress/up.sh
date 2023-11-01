#!/bin/bash

sudo docker network create word-db
sudo docker build -t $1 .
sudo docker run -d -ti --net ngin-word -v ngin-word-volume:/var/www/html/wordpress -e MYSQL_ROOT_PASSWORD=1234 -p 9000:9000 --name $2 $1
sudo docker network connect word-db $2
sudo docker exec -it $2 /bin/bash