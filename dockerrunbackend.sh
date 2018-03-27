#!/bin/bash

echo "Starting Store Backend Docker Container"

CONTAINER_NAME=store-backend  

echo "Stop container ..."
docker stop ${CONTAINER_NAME}  
echo "Start container ..."
docker rm ${CONTAINER_NAME}

docker run -it \
--name ${CONTAINER_NAME} \
-p 3000:3000 \
store-backend:dev