#!/bin/sh
docker run -it \
  --name tensorflow \
  -d \
  --rm \
  -v /Users/devz/src_git/ztdocker/tensorflow/notebooks:/notebooks \
  -v /Users/devz/src_git/ztdocker/tensorflow/logs:/logs \
  -p  6006:6006 \
  -p  8888:8888 \
  -p  20022:22 \
  -e "PASSWORD=aaaaaa" \
  tensorflow/tensorflow

docker exec -d tensorflow bash -c "tensorboard --logdir /logs"
