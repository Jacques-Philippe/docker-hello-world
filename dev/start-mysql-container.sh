#!/bin/bash

NETWORK_NAME="todo-app"
VOLUME_NAME="todo-mysql-data"

docker network create $NETWORK_NAME
docker run -d \
     --network $NETWORK_NAME --network-alias mysql \
     --platform "linux/amd64" \ #Mac Silicon only
     -v $VOLUME_NAME:/var/lib/mysql \
     -e MYSQL_ROOT_PASSWORD=secret \
     -e MYSQL_DATABASE=todos \
     mysql:5.7