#!/bin/bash

docker network rm -f $2
docker stop $1
docker rm $1