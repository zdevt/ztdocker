#!/bin/sh
#       FileName:  run.sh
#
#    Description:
#
#        Version:  1.0
#        Created:  2018-06-14 16:42:32
#  Last Modified:  2018-06-14 16:47:15
#       Revision:  none
#       Compiler:  gcc
#
#         Author:  zt ()
#   Organization:

PROJPWD=`pwd`

docker run -d \
  --name redis \
  --rm \
  -p 16379:6379 \
  -v $PROJPWD/data:/data \
  redis

