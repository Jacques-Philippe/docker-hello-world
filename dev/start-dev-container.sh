#!/bin/bash

# Should be run from project (repo) root
PORT=3000
WORKING_DIRECTORY=app
PROJECT_ROOT="$(pwd)"

docker run -p $PORT:3000 \
    -w $WORKING_DIRECTORY \
    -v "$PROJECT_ROOT/$WORKING_DIRECTORY:/$WORKING_DIRECTORY" \
    node:12-alpine \
    sh -c "apk add --no-cache python2 g++ make && yarn install && yarn dev"
