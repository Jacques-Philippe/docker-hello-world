#!/bin/bash

CONTAINER_ID="$1"

docker logs -f $CONTAINER_ID