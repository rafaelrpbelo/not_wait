FROM ruby:latest

ENV DEBIAN_FRONTEND=noninteractive \
  NODE_VERSION=4.4.7

RUN apt-get update

RUN curl -sSL "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz" | tar xfJ - -C /usr/local --strip-components=1 && \
  npm install npm -g

WORKDIR /app
