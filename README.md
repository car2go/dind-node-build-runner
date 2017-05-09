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

## Usage

```
docker run --privileged mcasimir/dind-node-build-runner
```

## Build with Specific Node Version

```
docker run --privileged --build-arg NODE_JS_VERSION='5' mcasimir/dind-node-build-runner
```