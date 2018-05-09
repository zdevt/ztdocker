#!/bin/sh
docker run --detach -it -v /Users/devz/Downloads:/mnt/temp --name arm -p 10022:22 dafeilang2018/armgcc:latest
