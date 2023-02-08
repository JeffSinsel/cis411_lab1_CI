#!/bin/bash

#put your docker login below where jeffsinsel is 
DOCKER_LOGIN='jeffsinsel'

docker pull ${DOCKER_LOGIN}/lab1
if ! [ $(docker ps -aq) == "" ]; then
    docker stop $(docker ps -aq)
fi
docker run -p 4000:4000 --rm ${DOCKER_LOGIN}/lab1