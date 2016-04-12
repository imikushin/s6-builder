#!/bin/sh

cd $(dirname $0)
. ./.docker-env.arm

TAG=$(cat Dockerfile | awk '/S6_TAG/{print $3}')
cat Dockerfile | sed 's!FROM alpine!FROM armhf/alpine!' > .dockerfile.arm

docker build -t rancher/s6-builder:${TAG}_arm -f .dockerfile.arm .
