#!/bin/sh

TAG=$(cat Dockerfile | awk '/S6_TAG/{print $3}')
docker build -t rancher/s6-builder:${TAG} .
