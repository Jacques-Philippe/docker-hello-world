#!/bin/bash

IMAGE_NAME="dockerhelloworld"
PORT=3000


docker run -d -p $PORT:3000 $IMAGE_NAME