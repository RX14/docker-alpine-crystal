FROM alpine:3.3

ARG crystal_version

RUN apk update && apk add openssl \
 && wget "https://dl.dropboxusercontent.com/u/53345358/alpine/julien%40portalier.com-56dab02e.rsa.pub" -O /etc/apk/keys/julien@portalier.com-56dab02e.rsa.pub \
 && echo "https://dl.dropboxusercontent.com/u/53345358/alpine/testing" >> /etc/apk/repositories

RUN apk update \
 && apk add crystal=${crystal_version} shards
