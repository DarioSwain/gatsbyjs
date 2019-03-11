FROM node:10.15-alpine

RUN apk add --update \
  --repository http://dl-3.alpinelinux.org/alpine/edge/testing \
  vips-tools build-base git python2 \
  && rm -rf /var/cache/apk/*

RUN npm install --unsafe-perm -g gatsby-cli node-gyp sharp

RUN mkdir /home/node/app
WORKDIR /home/node/app
