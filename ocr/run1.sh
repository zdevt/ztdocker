#!/bin/sh
docker run -itd \
  --restart always \
  -p 18080:8080 \
  --name ocr \
  dafeilang2018/hskj:latest

