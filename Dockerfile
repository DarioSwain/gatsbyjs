FROM node:10.15-alpine

RUN apk add --update \
  --repository http://dl-3.alpinelinux.org/alpine/edge/testing \
  vips-tools \
  && rm -rf /var/cache/apk/*

RUN npm install -g gatsby-cli node-gyp
WORKDIR /app
