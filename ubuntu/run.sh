#!/bin/sh
# docker build -t xxx:xxx .
# d:/test   -v /d/test:/mnt/temp
docker run -d -it -h ubuntu \
  -v /Users/devz/Downloads:/mnt/temp \
  -p 10022:22 -p 10023:23 \
  --name udev \
  --restart=always \
  ubuntu:dev
