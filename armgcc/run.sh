#!/bin/sh
docker run -d \
  -it \
  -v /Users/devz/Downloads:/mnt/temp \
  --name arm \
  -p 10022:22 \
  dafeilang2018/armgcc:latest

docker exec -d arm bash -c "service ssh start"

