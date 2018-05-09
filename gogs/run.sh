#!/bin/sh
docker run --name=gogs -p 10022:22 -p 10080:3000 \
  --rm --detach \
  -v /Users/devz/src_git/ztdocker/gogs/data:/data gogs/gogs
