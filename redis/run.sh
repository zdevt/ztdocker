#!/bin/sh
docker run -d \
  --name redis \
  --rm \
  -p 16379:6379 \
  -v /Users/devz/src_git/ztdocker/redis/data:/data \
  redis

