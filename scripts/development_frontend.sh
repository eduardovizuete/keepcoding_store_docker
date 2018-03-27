#!/bin/bash

CONTAINER_NAME=my-frontend-container_DEV  

docker stop ${CONTAINER_NAME}  
docker rm ${CONTAINER_NAME}

docker run -it \
-p 4200:4200 \
--name ${CONTAINER_NAME} \
-v `pwd`:/app \
node:carbon \
/app/scripts/dev_frontend_entrypoint.sh

#--net="host" \