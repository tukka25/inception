#!/bin/bash

sudo docker build -t $1 .
sudo docker run -d -p 443:443 --name $2 $1
sudo docker exec -it $2 /bin/bash