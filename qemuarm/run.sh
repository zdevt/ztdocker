#!/bin/sh
docker run -d \
  -it \
  -v /Users/devz/Downloads:/mnt/temp \
  --name qarm \
  -p 10032:22 \
  tomasbasham/qemu-arm

#docker exec -d armq bash -c "service ssh start"

