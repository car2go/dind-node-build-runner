# dind-node-build-runner

A docker image that provides a running environment to perform builds using common node
js tools and docker in docker.

Tools:

- git
- docker
- docker-compose
- node
- npm
- bower
- gulp
- grunt
- phantomjs
- chrome
- chromedriver
- kubectl

## Usage

```
docker run --privileged mcasimir/dind-node-build-runner
```

## Build (and Release) with Specific Node Version

```
sh build.sh --build-arg NODE_JS_VERSION='5'
sh build-and-release.sh --build-arg NODE_JS_VERSION='5'
```