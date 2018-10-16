#!/bin/bash

set -eu

name=aws-devel

docker rmi $(docker images | awk '/^<none>/ { print $3 }') || echo "ignore rmi error"
docker rm `docker ps -a -q` || echo "ignore rm error"

docker build -t ${name}:latest .
docker run --name ${name} -it ${name}:latest /bin/sh
