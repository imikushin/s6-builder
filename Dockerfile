FROM alpine

RUN apk update && apk upgrade && apk add git make gcc musl-dev
RUN mkdir -p /opt

COPY scripts/build.sh /opt/

ENV SKALIBS_TAG v2.3.9.0
ENV EXECLINE_TAG v2.1.4.5
ENV S6_TAG v2.2.4.3
