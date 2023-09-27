#!/bin/bash

docker build -t $1 .
docker run -d --name $2 $1
docker exec -it $2 /bin/bash