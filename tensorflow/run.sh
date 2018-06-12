#!/bin/sh
docker run -it \
  --name tensorflow \
  --restart always \
  -d \
  -v /home/zt/docker:/notebooks \
  -v /home/zt/docker:/logs \
  -p  6006:6006 \
  -p  8888:8888 \
  -p  20022:22 \
  -e "PASSWORD=aaaaaa" \
  dafeilang2018/tensorflow

docker exec -d tensorflow bash -c "tensorboard --logdir /logs"
docker exec -d tensorflow bash -c "service ssh start"
