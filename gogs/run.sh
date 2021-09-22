#!/bin/sh
# -v /d/test:/data
docker run -d --name=gogs -p 10022:22 -p 10080:3000 \
  --restart=always \
  -v /usr/local/var/db/gogs:/data gogs/gogs
