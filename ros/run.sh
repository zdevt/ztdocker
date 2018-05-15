#!/bin/sh
docker run -d \
  -it \
  -p 6080:80 \
  -p 20022:22 \
  -v /Users/devz/Downloads:/mnt/temp \
  --name rosvnc \
  ct2034/vnc-ros-kinetic-full
