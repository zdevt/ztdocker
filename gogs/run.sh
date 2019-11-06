#!/bin/sh
docker run --name=gogs -p 10022:22 -p 10080:3000 \
  --rm --detach \
  --restart always \
  -v /usr/local/var/db/gogs:/data gogs/gogs
