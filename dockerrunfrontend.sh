#!/bin/bash

echo "Starting Store Frontend Docker Container"

CONTAINER_NAME=store-frontend  

echo "Stop container ..."
docker stop ${CONTAINER_NAME}  
echo "Start container ..."
docker rm ${CONTAINER_NAME}

docker run -it \
--name ${CONTAINER_NAME} \
-p 4200:4200 \
store-frontend:dev