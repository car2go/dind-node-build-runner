FROM gitlab/dind

LABEL maintainer="Raoul Jaeckel"

ARG NODE_JS_VERSION

ENV NODE_JS_VERSION ${NODE_JS_VERSION:-6}

RUN curl -sL https://deb.nodesource.com/setup_$NODE_JS_VERSION.x | sudo -E bash - \
  && apt-get update -qqy \
  && apt-get install -y \
    git \
    nodejs \
    unzip \
  && rm -rf /var/lib/apt/lists/* \
  && curl -L https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl \
  && chmod +x /usr/local/bin/kubectl \
  && apt-get clean

WORKDIR /app

CMD ["node", "--version"]
