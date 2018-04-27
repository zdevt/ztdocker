#!/bin/sh

docker run --detach --hostname zt \
  --publish 443:443 --publish 80:80 --publish 28888:22 \
  --rm \
  --name gitlab \
  --volume /Users/devz/src_git/ztdocker/gitlab/config:/etc/gitlab \
  --volume /Users/devz/src_git/ztdocker/gitlab/logs:/var/log/gitlab \
  --volume /Users/devz/src_git/ztdocker/gitlab/data:/var/opt/gitlab \
  gitlab/gitlab-ce:latest
