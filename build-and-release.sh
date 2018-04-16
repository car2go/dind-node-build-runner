#!/bin/bash

docker build $@ -t car2godeveloper/dind-node-build-runner . && \
  NODE_VER=$(docker run --rm --privileged car2godeveloper/dind-node-build-runner node --version) && \
  IMAGE_TAG=${NODE_VER#"v"} && \
  docker tag car2godeveloper/dind-node-build-runner car2godeveloper/dind-node-build-runner:$IMAGE_TAG-phantom && \
  docker push car2godeveloper/dind-node-build-runner:$IMAGE_TAG-phantom
