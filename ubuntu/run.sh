#!/bin/sh
docker run --detach \
  -it \
  -v /Users/devz/Downloads:/mnt/temp \
  --name ubuntu \
  dafeilang2018/ubuntu

docker exec -d ubuntu bash -c "service ssh start"
