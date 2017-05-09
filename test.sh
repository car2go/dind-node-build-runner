#!/bin/bash

docker build $@ -t car2godeveloper/dind-node-build-runner . && \
  NODE_VER=$(docker run --rm --privileged car2godeveloper/dind-node-build-runner node --version) && \
  IMAGE_TAG=${NODE_VER#"v"} && \
  echo $IMAGE_TAG
