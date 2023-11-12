#!/bin/bash

sudo docker network create ngin-word
sudo docker volume create --name ngin-word-volume
sudo docker build -t $1 .
sudo docker run -d -p 443:443 --net ngin-word --name $2 $1
sudo docker exec -it $2 /bin/bash