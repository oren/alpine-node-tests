FROM alpine:edge
RUN echo "http://dl-4.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories 
RUN apk update
RUN apk add gcc make python openssl-dev zlib-dev paxctl linux-headers xz g++ curl procps
