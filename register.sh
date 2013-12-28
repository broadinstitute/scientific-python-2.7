#!/bin/bash
IMAGE=$1
STRING=`docker images | grep $IMAGE | grep latest`
echo $STRING
eval x=($STRING)
docker tag ${x[2]} registry.scivm.com/$IMAGE
docker push registry.scivm.com/$IMAGE
