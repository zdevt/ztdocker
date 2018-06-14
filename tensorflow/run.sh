#!/bin/sh
#       FileName:  run.sh
#
#    Description:
#
#        Version:  1.0
#        Created:  2018-06-14 16:42:32
#  Last Modified:  2018-06-14 16:43:19
#       Revision:  none
#       Compiler:  gcc
#
#         Author:  zt ()
#   Organization:

PROJPWD=`pwd`

docker run -it \
  --name tensorflow \
  --restart always \
  -d \
  -v $PROJPWD/notebooks:/notebooks \
  -v $PROJPWD/logs:/logs \
  -p  6006:6006 \
  -p  8888:8888 \
  -p  20022:22 \
  -e "PASSWORD=aaaaaa" \
  dafeilang2018/tensorflow

#docker exec -d tensorflow bash -c "tensorboard --logdir /logs"
docker exec -d tensorflow bash -c "service ssh start"
