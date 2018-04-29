#!/bin/sh

docker run --detach --hostname zt \
  --publish 443:443 --publish 80:80 --publish 28888:22 \
  --rm \
  --name gitlab \
  --volume config:/etc/gitlab \
  --volume logs:/var/log/gitlab \
  --volume data:/var/opt/gitlab \
  gitlab/gitlab-ce:latest
