#!/bin/bash
docker run --name cdh --hostname "quickstart.cloudera" --privileged=true -t -i -d \
-p 80:80 \
-p 7180:7180 \
-p 8888:8888 \
-v ~/Cloudera:/src\
cloudera/quickstart /usr/bin/docker-quickstart

docker exec -ti cdh /home/cloudera/cloudera-manager --express
