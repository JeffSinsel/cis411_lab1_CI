#!/bin/bash

sudo service docker start
docker pull jeffsinsel/lab1
docker stop $(docker ps -aq)
docker run -p 4000:4000 --rm jeffsinsel/lab1