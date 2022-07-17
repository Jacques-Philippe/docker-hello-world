#!/bin/bash

NETWORK_NAME="todo-app"

docker run -it \
     --network $NETWORK_NAME \
     nicolaka/netshoot