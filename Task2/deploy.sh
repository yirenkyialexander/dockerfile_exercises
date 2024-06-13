#!/bin/bash
docker rm -f $(docker ps -aq) || echo clean
docker network inspect trio-task-net || docker network create trio-task-net
docker volume inspect trio-task-vol || docker volume create trio-task-vol

docker build -t trio-task-db:v1 db
docker build -t trio-task-app:v1 flask-app

docker run -d \
  -e MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD} \
  -v trio-task-vol:/var/lib/mysql \
  --network trio-task-net \
  --name mysql \
  trio-task-db:v1

docker run -d \
  -e MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD} \
  --network trio-task-net \
  --name flask-app \
  trio-task-app:v1

docker run -d \
  --network trio-task-net \
  -p 80:80 \
  --name nginx \
  --mount type=bind,source=$(pwd)/nginx/nginx.conf,target=/etc/nginx/nginx.conf \
  nginx:latest

sleep 3
docker ps -a