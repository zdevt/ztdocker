#!/bin/sh
#       FileName:  run.sh
#
#    Description:
#
#        Version:  1.0
#        Created:  2018-06-14 16:42:32
#  Last Modified:  2018-06-14 16:46:03
#       Revision:  none
#       Compiler:  gcc
#
#         Author:  zt ()
#   Organization:

PROJPWD=`pwd`

docker run --detach --hostname zt \
  --publish 443:443 --publish 80:80 --publish 28888:22 \
  --rm \
  --name gitlab \
  -v $PROJPWD/config:/etc/gitlab \
  -v $PROJPWD/logs:/var/log/gitlab \
  -v $PROJPWD/data:/var/opt/gitlab \
  gitlab/gitlab-ce:latest
