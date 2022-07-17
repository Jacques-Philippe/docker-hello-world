#!/bin/bash

IMAGE_NAME="dockerhelloworld"
VOLUME_NAME="todo-db"
PORT=3000

docker volume create $VOLUME_NAME
docker run -d -p $PORT:3000 -v $VOLUME_NAME:/etc/todos $IMAGE_NAME