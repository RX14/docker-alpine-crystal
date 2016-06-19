FROM alpine:3.3

RUN apk update \
 && apk upgrade \
 && apk add openssl gcc libc-dev libevent-dev pcre-dev \
 && wget "https://dl.dropboxusercontent.com/u/53345358/alpine/julien%40portalier.com-56dab02e.rsa.pub" -O /etc/apk/keys/julien@portalier.com-56dab02e.rsa.pub \
 && echo "https://dl.dropboxusercontent.com/u/53345358/alpine/testing" >> /etc/apk/repositories

ARG crystal_version

RUN apk update \
 && apk add crystal=${crystal_version} shards \
 && rm -rf /var/lib/apt/lists/*
