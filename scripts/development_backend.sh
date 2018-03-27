#!/bin/bash

CONTAINER_NAME=my-backend-container_DEV  

docker stop ${CONTAINER_NAME}  
docker rm ${CONTAINER_NAME}

docker run -it -p 80:3000 \
--name ${CONTAINER_NAME} \
-v `pwd`:/app \
node:carbon \
/app/scripts/dev_backend_entrypoint.sh