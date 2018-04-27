#!/bin/sh
#       FileName:  run.sh
#
#    Description:
#
#        Version:  1.0
#        Created:  2018-04-25 10:54:34
#  Last Modified:  2018-04-26 08:30:12
#       Revision:  none
#       Compiler:  gcc
#
#         Author:  zt ()
#   Organization:
docker run --detach --hostname zt \
  --publish 443:443 --publish 80:80 --publish 8888:22 \
  --name gitlab \
  --volume /Users/devz/src_svn/proj/docker/gitlab/config:/etc/gitlab \
  --volume /Users/devz/src_svn/proj/docker/gitlab/logs:/var/log/gitlab \
  --volume /Users/devz/src_svn/proj/docker/gitlab/data:/var/opt/gitlab \
  gitlab/gitlab-ce:latest

#--restart always \
