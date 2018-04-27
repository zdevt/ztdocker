#!/bin/sh

docker run -it --name tensorflow -v /Users/devz/src_git/ztdocker/tensorflow/notebooks:/notebooks \
  -p 8888:8888 tensorflow/tensorflow
