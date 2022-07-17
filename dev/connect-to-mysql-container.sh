#!/bin/bash

MY_SQL_CONTAINER_ID=$1

echo "Password is secret"
docker exec -it $MY_SQL_CONTAINER_ID mysql -u root -p