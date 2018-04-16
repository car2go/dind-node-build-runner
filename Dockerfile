FROM gitlab/dind

LABEL maintainer="Raoul Jaeckel"

ARG NODE_JS_VERSION

ENV NODE_JS_VERSION ${NODE_JS_VERSION:-8}
ENV PHANTOM_JS_VERSION 2.1.1

RUN \
  wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-$PHANTOM_JS_VERSION-linux-x86_64.tar.bz2 \
  && curl -sL https://deb.nodesource.com/setup_$NODE_JS_VERSION.x | sudo -E bash - \
  && apt-get update -qqy \
  && apt-get install -y \
    build-essential \
    chrpath \
    libssl-dev \
    libxft-dev \
    git \
    nodejs \
    unzip \
    libfreetype6 \
    libfreetype6-dev \
    libfontconfig1 \
    libfontconfig1-dev \
  && tar xvjf phantomjs-$PHANTOM_JS_VERSION-linux-x86_64.tar.bz2 \
  && mv phantomjs-$PHANTOM_JS_VERSION-linux-x86_64 /usr/local/share \
  && ln -sf /usr/local/share/phantomjs-$PHANTOM_JS_VERSION-linux-x86_64/bin/phantomjs /usr/local/bin \
  && rm phantomjs-$PHANTOM_JS_VERSION-linux-x86_64.tar.bz2 \
  && rm -rf /var/lib/apt/lists/* \
  && curl -L https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl \
  && chmod +x /usr/local/bin/kubectl \
  && apt-get clean

WORKDIR /app

CMD ["node", "--version"]
