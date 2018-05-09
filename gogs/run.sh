#!/bin/sh
docker run --name=gogs -p 10022:22 -p 10080:3000 \
  --rm --detach \
  -v /home/data:/data gogs/gogs
