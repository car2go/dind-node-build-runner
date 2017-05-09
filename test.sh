#!/bin/bash

docker build --build-arg NODE_JS_VERSION='5' -t car2godeveloper/dind-node-build-runner . && \
  NODE_VER=$(docker run --rm --privileged car2godeveloper/dind-node-build-runner node --version) && \
  IMAGE_TAG=${NODE_VER#"v"} && \
  echo $IMAGE_TAG
