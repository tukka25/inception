#!/bin/bash

sudo docker build -t $1 .
# sudo docker volume create --name db-volume
sudo docker run -d --net word-db -e MYSQL_ROOT_PASSWORD=tukka11 -p 3306:3306 --name $2 $1
sudo docker exec -it $2 /bin/bash