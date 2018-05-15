#!/bin/sh
docker run --detach -it -p 6080:80 -p 5900:5900 \
  -v /Users/devz/Downloads:/mnt/temp \
  -e VNC_PASSWORD=aaaaaa \
  --name ubuntu_vnc dorowu/ubuntu-desktop-lxde-vnc
