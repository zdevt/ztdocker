#!/bin/sh
docker run -d \
  -it \
  -p 20022:22 \
  -v /Users/devz/Downloads:/mnt/temp \
  --name ros \
  dafeilang2018/ros

docker exec -d ros bash -c "service ssh start"
#docker exec -d ros bash -c "roscore"
