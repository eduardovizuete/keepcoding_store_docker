#!/bin/bash

echo "Starting Store Database MongoDB Docker Container"

CONTAINER_NAME=store-mongodb  

echo "Stop container ..."
docker stop ${CONTAINER_NAME}  
echo "Start container ..."
docker rm ${CONTAINER_NAME}

docker run -it \
--name ${CONTAINER_NAME} \
-p 27017:27017 \
mongo