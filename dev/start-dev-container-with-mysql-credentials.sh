#!/bin/bash

# Should be run from project (repo) root
PORT=3000
WORKING_DIRECTORY=app
PROJECT_ROOT="$(pwd)"

NETWORK_NAME="todo-app"
MYSQL_CONTAINER_NETWORK_ALIAS="mysql"
TABLE_NAME="todos"

docker run -d \
    -p $PORT:3000 \
    -w "/$WORKING_DIRECTORY" \
    -v "$PROJECT_ROOT/$WORKING_DIRECTORY:/$WORKING_DIRECTORY" \
    --network $NETWORK_NAME \
    -e MYSQL_HOST=$MYSQL_CONTAINER_NETWORK_ALIAS \
    -e MYSQL_USER=root \
    -e MYSQL_PASSWORD=secret \
    -e MYSQL_DB=$TABLE_NAME \
    node:12-alpine \
    sh -c "yarn install && yarn run dev"


