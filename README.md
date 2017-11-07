# car2go Node 8 build image

A docker image that provides a set of useful tools to build NodeJS applications in Gitlab CI.

Tools:

- git (1.9.1)
- docker (1.12.1, build 23cf638)
- docker-compose (1.8.0, build f3628c7)
- node (8.9.0)
- npm (5.5.1)
- kubectl (1.8.2)
- unzip

## Usage

```
docker run --privileged -it car2godeveloper/dind-node-build-runner /bin/bash
```

## Build (and Release) with Specific Node Version

```
sh build.sh --build-arg NODE_JS_VERSION='8'
sh build-and-release.sh --build-arg NODE_JS_VERSION='8'
```